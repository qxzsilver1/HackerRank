$Regex_Pattern = '^[A-Za-z02468]{40}[\s13579]{5}$';

$Test_String = <STDIN> ;
if($Test_String =~ /$Regex_Pattern/){
    print "true";
} else {
    print "false";
}
