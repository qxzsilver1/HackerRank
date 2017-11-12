-module(solution).
-export([main/0]).

main() ->

    { ok, [N]} = io:fread("", "~d"),
    %  Print "Hello World" on a new line 'n' times.
    repeatHelloWorld(N).

% Define the repeatHelloWorld function with two cases
% When N is zero, break the recursive execution
repeatHelloWorld(0) -> ok;

% When N is positive, print Hello World
repeatHelloWorld(N)
    when N > 0 ->
        io:format("~s~n", ["Hello World"]),
        % And call itself with N-1 (recursion)
        repeatHelloWorld(N-1).

% When N is negative the call will fail

%read_array(0,D) -> [];
%read_array(N,D) -> 
%	{ok, [X]} = io:fread("", D),
%	[X | read_array(N-1,D)].

%read_2darray(0,M,D) -> [];
%read_2darray(N,M,D) ->
%	Q=read_array(M,D),
%	[Q | read_2darray(N-1,M,D)].

