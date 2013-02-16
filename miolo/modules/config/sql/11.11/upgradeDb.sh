#!/bin/bash


Verifica='postgres'
UserNow=`whoami`
newSchema='lastDB'
path=`pwd`
echo "************************************************************************"
echo "Atenção todas as perguntas que a resposta for (s ou n) "
echo "devem ser indicadas em minusculo!"
echo "O programa necessita do lastDB.tar.gz estar na mesma pasta."
echo "************************************************************************"
echo "Digite qualquer tecla para continuar..."
read pause

if [ $Verifica != $UserNow ]; then
	echo "************************************************************************"
    	echo "Seu usuário atual é ${UserNow}. Altere para postgres(sudo su postgres)"
	echo "************************************************************************"
    	exit 1
else
	if [ -e lastDB.tar.gz ]; then
		tar -vzxf lastDB.tar.gz;
	else
		echo "O arquivo lastDB.tar.gz não existe!"
		echo "Este arquivo é obrigatório para execução desta aplitivo;"
		echo "Entre em contato com o suporte do sistema!"
	    	exit 1
	fi
	echo ""
	echo "************************************************************************"
	echo "No caso de uma instalação nova devem ser considerados o nome do database:dbsiga e o schema:public"
	echo "No caso de uma atualização serão utilizados os dados abaixo informados para o database e o schema"
	echo ""
	echo "************************************************************************"
	echo "Digite o nome do Banco de Dados sem pontuação nem espaços nem espaços ou dê ENTER para o valor padrão:"
	echo "(PADRÃO:dbsiga):" read dataBase	
	echo ""
	echo "************************************************************************"	
	echo "Digite o nome do Schema do banco sem pontuação nem espaços ou dê ENTER para o valor padrão:"
	echo "(PADRÃO:public):" read oldSchema
	echo "************************************************************************"

	if [$dataBase = ""]; then
	    dataBase='dbsiga'
	fi

	if [$oldSchema = ""]; then
	    oldSchema='public'
	fi
  
	verificaExistDB=`psql -d $dataBase -c 'select 1' | wc -c`
	echo "************************************************************************"	
	echo "Será utilizado o dataBase=$dataBase"
	echo "Será utilizado o schema=$oldSchema"
	echo "************************************************************************"	

	if !(test $verificaExistDB -eq 0) then
		echo "O banco já existe deseja atualizar o banco?(s/n)"			
		read resposta
		if [ $resposta = "n" ]; then	
			echo "Saindo do programa de criação do banco sem criar ou atualizar o banco!"			
			exit 1
		fi
		echo ""
		echo "************************************************************************"	
		echo "Deseja realizar um backup do banco de dados?(s/n)"			
		if [ $resposta = "s" ]; then	
			echo "Os arquivos de backup serão salvos em $path/bkp/"			
			sudo -U postgres pg_dump --port 5432 --format plain --schema-only --no-owner --create --disable-dollar-quoting --verbose $oldSchema >"$path/bkp/schema.sql"
			sudo -U postgres pg_dump --port 5432 --format plain --data-only --disable-triggers --column-inserts --disable-dollar-quoting --verbose $oldSchema >"$path/bkp/dados.sql"
		fi
		echo "************************************************************************"	
		echo ""
		echo "Inicando a atualização"
		psql -U postgres -d $dataBase -f $newSchema/dbaSchema.sql	        
		psql -U postgres -d $dataBase -f $newSchema/schema.sql;
		psql -U postgres -d $dataBase -f $newSchema/data.sql;
		psql -U postgres -d $dataBase -f $newSchema/oldSchemaNewFunctionsNewTriggers.sql;
	        psql -U postgres -d $dataBase -c "delete from dba.ctrl_parameters;";     
		psql -U postgres -d $dataBase -c "insert into dba.ctrl_parameters  values ('oldSchema','"$oldSchema"','text');";
		psql -U postgres -d $dataBase -c "insert into dba.ctrl_parameters  values ('newSchema','"$newSchema"','text');";
		psql -U postgres -d $dataBase -c "insert into dba.ctrl_parameters  values ('dataBase' ,'"$dataBase"', 'text');";
		psql -U postgres -d $dataBase -c 'SELECT dba.script_upgradedatabase();'
		psql -U postgres -d $dataBase -f $newSchema/11.07/upgrade_sequences_sigaepct_adm_1107.sql
	else
		echo "O Banco não existe. "
		echo "Na criação desta base serão utilizados dataBase=$dataBase e schema=public;"
		echo "Deseja criar um novo banco?(s/n):"
		read resposta
		if [ $resposta = "s" ]; then
			echo "Criando um novo banco!"
			psql -U postgres -d $dataBase -c "CREATE DATABASE $dataBase;"
			psql -U postgres -d $dataBase -f $newSchema/11.07/new_schema_sigaepct_adm_1107.sql
			psql -U postgres -d $dataBase -f $newSchema/11.07/new_data_sigaepct_adm_1107.sql
			psql -U postgres -d $dataBase -f $newSchema/11.07/ajustes11.11.sql
			psql -U postgres -d $dataBase -f $newSchema/11.07/upgrade_sequences_sigaepct_adm_1107.sql
		else
			echo "Saindo do programa de criação do banco sem criar ou atualizar o banco!"			
			exit 1
		fi
	fi
fi

