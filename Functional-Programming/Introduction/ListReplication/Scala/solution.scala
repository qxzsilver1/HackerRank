def aux(a:Int,b:Int):List[Int] = if(b == 0) List();
     else{
         a::aux(a, b-1);
     }

def f(num:Int,arr:List[Int]):List[Int] = if(arr.isEmpty){List();}
                                         else{
                                             aux(arr.head, num)++f(num, arr.tail);
                                         }
