$Regex_Pattern = '\b[aeiouAEIOU][A-Za-z]*\b';

$Test_String = <STDIN> ;
if($Test_String =~ /$Regex_Pattern/){
    print "true";
} else {
    print "false";
}
