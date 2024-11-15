-module(encode).
-export([encode/1]).

encode([]) ->
    [];

encode([X]) ->
    [X];

encode([X, X | Y]) ->
    encode([[2, X] | Y]);

encode([[N , X], X | Y]) ->
    encode([[N + 1 , X] | Y]);

encode([X, Y | T]) ->
    [X | encode([[1, Y] | T])].