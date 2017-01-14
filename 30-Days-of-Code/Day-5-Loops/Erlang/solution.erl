-module(solution).
-export([main/0]).

printanswer(N, I) when I > 0 ->
    printanswer(N, I-1),
    io:format("~p x ~p = ~p~n", [N, I, N*I]);
printanswer(_, _) -> "".

main() ->

    { ok, [N]} = io:fread("", "~d"),
    printanswer(N, 10),
    true.

read_array(0,D) -> [];
read_array(N,D) -> 
   {ok, [X]} = io:fread("", D),
   [X | read_array(N-1,D)].

read_2darray(0,M,D) -> [];
read_2darray(N,M,D) ->
   Q=read_array(M,D),
   [Q | read_2darray(N-1,M,D)].

