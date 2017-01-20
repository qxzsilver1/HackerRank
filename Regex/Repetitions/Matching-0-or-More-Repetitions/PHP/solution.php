<?php

$Regex_Pattern = "/^\d{2,}[a-z]*[A-Z]*$/"; //Do not delete '/'. Replace __________ with your regex.

$handle = fopen ("php://stdin","r");
$Test_String = fgets($handle);
if(preg_match($Regex_Pattern, $Test_String, $output_array)){
    print ("true");
} else {
    print ("false");
}

fclose($handle);
?>
