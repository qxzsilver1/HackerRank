% Enter your code here. Read input from STDIN. Print output to STDOUT
% Your class should be named solution

-module(solution).
-export([main/0]).

main() ->
  {ok, [N]} = io:fread("", "~d"),
  get_line(N).

get_line(0) -> io:format("");
get_line(N) ->
  {ok, [S]} = io:fread("", "~s"),
  {Even, Odd} = even_odd_split(S, 0, {"", ""}),
  io:format("~s ~s~n", [lists:flatten(Even), lists:flatten(Odd)]),
  get_line(N - 1).

even_odd_split([], _, {Even, Odd}) -> {lists:reverse(Even), lists:reverse(Odd)};
even_odd_split([H|T], N, {Even, Odd}) ->
  if
    N band 1 == 0 -> even_odd_split(T, N + 1, {[H | Even], Odd});
    true -> even_odd_split(T, N + 1, {Even, [H | Odd]})
  end.
    
