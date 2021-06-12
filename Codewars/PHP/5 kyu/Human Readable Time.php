<?php
	/* Descrição:

	Write a function, which takes a non-negative integer (seconds) as input and returns the time in a human-readable format (HH:MM:SS)

HH = hours, padded to 2 digits, range: 00 - 99
MM = minutes, padded to 2 digits, range: 00 - 59
SS = seconds, padded to 2 digits, range: 00 - 59
The maximum time never exceeds 359999 (99:59:59)

You can find some examples in the test fixtures.
*/
function human_readable($seconds) {
  $segundosRestantes  = $seconds;
  $horas              = intdiv($segundosRestantes,3600);
  $segundosRestantes  -= $horas*3600;
  $minutos            = intdiv($segundosRestantes, 60);
  $segundosRestantes  -= $minutos*60;
  return sprintf("%02d:%02d:%02d",$horas,$minutos,$segundosRestantes);
}
?>