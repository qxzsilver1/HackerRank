$Regex_Pattern = '^(Mr|Mrs|Ms|Dr|Er)\.[A-Za-z]+$';

$Test_String = <STDIN> ;
if($Test_String =~ /$Regex_Pattern/){
    print "true";
} else {
    print "false";
}
