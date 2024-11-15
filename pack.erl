-module(pack).
-export([pack/1]).

pack([]) ->
    [];

pack([X]) ->
    [X];

pack([X, X | Y]) ->
    pack([[X, X] | Y]);
pack([[X | T], X | Y]) ->
    pack([[X | T] ++ [X] | Y]);

pack([X, Y | T]) ->
    [X | pack([Y | T])].