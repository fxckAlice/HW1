-module(compress).
-export([compress/1]).

compress([]) ->
    [];

compress([X]) ->
    [X];

compress([X, X | Y]) ->
    compress([X | Y]);

compress([X, Y | T]) ->
    [X | compress([Y | T])].