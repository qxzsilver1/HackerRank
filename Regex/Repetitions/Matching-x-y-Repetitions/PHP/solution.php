<?php

$Regex_Pattern = "/^\d{1,2}[A-Za-z]{3,}\.{0,3}$/"; //Do not delete '/'. Replace __________ with your regex.

$handle = fopen ("php://stdin","r");
$Test_String = fgets($handle);
if(preg_match($Regex_Pattern, $Test_String, $output_array)){
    print ("true");
} else {
    print ("false");
}

fclose($handle);
?>
