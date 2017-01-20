<?php

$Regex_Pattern = '/^([a-z])(\w)(\s)(\W)(\d)(\D)([A-Z])([A-Za-z])([aeiouAEIOU])(\S)(\1)(\2)(\3)(\4)(\5)(\6)(\7)(\8)(\9)(\10)$/'; //Do not delete '/'. Replace __________ with your regex. 

$handle = fopen ("php://stdin","r");
$Test_String = fgets($handle);
if(preg_match($Regex_Pattern, $Test_String, $output_array)){
    print ("true");
} else {
    print ("false");
}

fclose($handle);
?>
