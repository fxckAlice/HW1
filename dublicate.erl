-module(dublicate).
-export([dublicate/1]).

dublicate([]) ->
    [];
dublicate([X]) ->
    [X, X];
dublicate([X | Y]) ->
    [X, X | dublicate(Y)].