-module(solution).
-import(lists,[reverse/1]). 
-export([main/0]).



main() ->
    {N, _} = string:to_integer(string:chomp(io:get_line(""))),

    ArrTemp = re:split(string:chomp(io:get_line("")), "\\s+", [{return, list}, trim]),

    Arr = lists:map(fun(X) -> {I, _} = string:to_integer(X), I end, ArrTemp),

    format_list(reverse(Arr)),

    ok.


fnl([H]) ->
        io:format("~p", [H]);
    fnl([H|T]) ->
        io:format("~p ", [H]),
        fnl(T);
    fnl([]) ->
        ok.

format_list(L) when list(L) ->
        fnl(L).

