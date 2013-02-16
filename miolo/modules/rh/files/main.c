/*
	Tratamento de Fita Espelho - SIAPE => SIGA ADM
	Autor: Rodrigo Gonçalves de Branco - IFMS
*/
#include <stdio.h>

int main(int argc, char** argv)
{
	FILE* fin, *fout;
	
	fin = fopen(argv[1],"rt");
	fout = fopen(argv[2],"wt");
	
	if(fin && fout)
	{
		char c;
		unsigned int linha, coluna;
		linha = 1; coluna = 0;
		
		while(!feof(fin))
		{
			fread(&c,1,1,fin);
			
			if(c == 10)
			{
				linha++; coluna = 1;
			}
			else
				coluna++;
			
			if((c < 32 || c > 126) && (c != 10))
			{
				switch(c)
				{
					case -118: fprintf(fout,"%c",'C'); break;
					case -104: fprintf(fout,"%c",'A'); break;
					case -45:  fprintf(fout,"%c",'A'); break;
					case -66:  fprintf(fout,"%c",'C'); break;
					case -107: fprintf(fout,"%c",'E'); break;
					case -47:  fprintf(fout,"%c",'o'); break;
					case -65:  fprintf(fout,"%c",'E'); break;
					case -98:  fprintf(fout,"%c",'A'); break;
					case -105: fprintf(fout,"%c",'E'); break;
					case -124: fprintf(fout,"%c",'I'); break;
					case -67:  fprintf(fout,"%c",'I'); break;
					case -62:  fprintf(fout,"%c",'o'); break;
					case -94:  fprintf(fout,"%c",'o'); break;
					case -61:  fprintf(fout,"%c",'a'); break;
					case -116: fprintf(fout,"%c",'a'); break;
					case -122: fprintf(fout,"%c",'O'); break;
					case -59:  fprintf(fout,"%c",'C'); break;
					case -72:  fprintf(fout,"%c",'A'); break;
					case -126: fprintf(fout,"%c",'o'); break;
					case -109: fprintf(fout,"%c",'A'); break;
					case -111: fprintf(fout,"%c",'a'); break;
					case -79:  fprintf(fout,"%c",'O'); break;
					case -73:  fprintf(fout,"%c",'U'); break;
					default:
						printf("Terminou com erro.\n"
							   "Caracter: %c\n"
							   "Codigo ASCII decimal: %d\n"
							   "Codigo ASCII hexadecimal:%x\n"
							   "Posicao do caracter na fita - linha: %d coluna: %d\n",c,c,c,linha, coluna-1);
						return 1;
				}
			}
			else
				fprintf(fout,"%c",c);
		}
	}
	printf("Fim do processo.\n");
	return 0;
}
