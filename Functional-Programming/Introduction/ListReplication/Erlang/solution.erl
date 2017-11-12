% Enter your code here. Read input from STDIN. Print output to STDOUT
% Your class should be named solution

-module(solution).
-export([main/0]).

main() ->
    {ok, [C]} = io:fread("", "~d"),
    replication(C).

replication(C) ->
    case io:fread("", "~d") of
        {ok, [Num]} -> 
            p(Num, C), 
            replication(C);
        _ -> ok
    end.


p(_Num, 0) ->
    ok;
p(Num, C) ->
    io:format("~p~n", [Num]),
    p(Num, C-1).
