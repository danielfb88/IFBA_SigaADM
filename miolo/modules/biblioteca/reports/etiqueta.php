<?php

/*Posisiconamento de Etiqutetas padrão PIMACO*/
/*Autor: Rodrigo Gonçalves de Branco*/
/*Instituição: Instituto Federal de Mato Grosso do Sul - IFMS*/
/*Data: 28/05/2012*/

class Etiqueta {
	var $pointsConversion = 28.35; /*10mm is 28.35 points*/
	var $currentX = 0;
	var $currentY = 0;
	var $currentEtiqueta = 1;
	var $verticalPadding = 0;
	var $horizontalPadding = 0;
	var $margin = null;
	var $quantity = null;
	var $dimensions = null;
	var $code;
	var $paper;
	var $pdf = null;

	var $codes = array(
		6180 => array(
			'margin' => array(
				'top' => 36,
				'bottom' => 36,
				'left' => 14,
				'right' => 14,
			),
			'quantity' => array(
				'horizontal' => 3,
				'vertical' => 10,
			),
			'dimensions' => array( /*milimeters*/
				'height' => 22.40,
				'width' => 66.70,
			),
		),
		6182 => array(
			'margin' => array(
				'top' => 60,
				'bottom' => 60,
				'left' => 11,
				'right' => 11,
			),
			'quantity' => array(
				'horizontal' => 2,
				'vertical' => 7,
			),
			'dimensions' => array( /*milimeters*/
				'height' => 33.90,
				'width' => 101.60,
			),
		),	
	);

	var $papers = array( /*milimeters*/
		'A4' => array(
			'width' => 210,
			'height' => 297,
		),
		'Letter' => array(
			'width' => 215,
			'height' => 279,
		),
	);

	private function mmtoPoints($value)
	{
		return $value * $this->pointsConversion / 10;
	}

	function Etiqueta($code,$paper,$pdf)
	{
		$this->code = $code;
		$this->paper = $this->papers[$paper];
		$this->pdf = $pdf;

		foreach($this->paper as $key => $value)
				$this->paper[$key] = $this->mmToPoints($value);

		$this->margin = $this->codes[$code]['margin'];
		$this->quantity = $this->codes[$code]['quantity'];
		$this->dimensions = $this->codes[$code]['dimensions'];

		foreach ($this->dimensions as $key => $value)
			$this->dimensions[$key] = $this->mmtoPoints($value);

      	$this->pdf->ezSetMargins($this->margin['top'],$this->margin['bottom']
                              ,$this->margin['left'],$this->margin['right']);
			

		$this->horizontalPadding = ($this->paper['width'] - 
									($this->margin['left'] + $this->margin['right'] + 
							$this->quantity['horizontal'] * $this->dimensions['width'])) 
							/ ($this->quantity['horizontal'] - 1);

		$this->verticalPadding = ($this->paper['height'] - 
							($this->margin['top'] + $this->margin['bottom'] + 
							$this->quantity['vertical'] * $this->dimensions['height'])) 
							/ ($this->quantity['vertical'] - 1);

		$this->currentX = $this->margin['left'];
		$this->currentY =  $this->paper['height'] - $this->margin['top'];
	}

	function next()
	{
		if($this->currentEtiqueta % $this->quantity['horizontal'] != 0)
			$this->currentX +=  $this->dimensions['width'] + $this->horizontalPadding;
		else if($this->currentEtiqueta % 
			($this->quantity['horizontal']*$this->quantity['vertical']) != 0)
		{
			$this->currentX = $this->margin['left'];
			$this->currentY -= ($this->dimensions['height'] + $this->verticalPadding);
		}
		else
		{
			$this->currentX = $this->margin['left'];
			$this->currentY = $this->paper['height'] - $this->margin['top'];
			$this->pdf->ezNewPage();		
		}

		$this->currentEtiqueta++;
	}
}

?>