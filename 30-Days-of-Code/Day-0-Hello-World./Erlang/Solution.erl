-module(solution).
-export([main/0]).

main() ->
    InputString = io:get_line(standard_io, ""),
    io:fwrite("Hello, World.\n"),
    io:format("~s~n", [InputString]).
