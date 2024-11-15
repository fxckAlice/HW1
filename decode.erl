-module(decode).
-export([decode/1]).

decode([]) ->
    [];
decode([X]) ->
    [X];
decode([[N, X] | Y]) when  N == 1 ->
    [X | decode(Y)];
decode([[N, X] | Y]) when  N > 1->
    [X | decode([[N - 1, X] | Y])];
decode([N, X]) when N == 1 ->
    [X];
decode([N, X]) when N > 1 ->
    [X | decode([N - 1, X])];
decode([X | Y]) ->
    [X | decode(Y)].