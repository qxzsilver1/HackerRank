-module(solution).
-export([main/0]).

main() ->

    { ok, [N]} = io:fread("", "~d"),
    
   if (N rem 2) == 1 ->
            io:fwrite("Weird");
       N >= 6, N =< 20 ->
            io:fwrite("Weird");
       true ->
            io:fwrite("Not Weird")
    end,
    true.

read_array(0,D) -> [];
read_array(N,D) -> 
   {ok, [X]} = io:fread("", D),
   [X | read_array(N-1,D)].

read_2darray(0,M,D) -> [];
read_2darray(N,M,D) ->
   Q=read_array(M,D),
   [Q | read_2darray(N-1,M,D)].
    

