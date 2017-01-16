awk '
 function result(str, a){
	split(str,a,"")
	
	for (i=1;i<=length(str);i++)
		if ( ( (i-1) % 2) == 0)		printf("%s",a[i])
		
	printf(" ")
	
	for (i=1;i<=length(str);i++)
		if ( ( (i-1) % 2) != 0)		printf("%s",a[i])
	
	print ""
 }
 
 BEGIN { getline n }
 
 {  result($0) }
 '
