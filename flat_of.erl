-module(flat_of).
-export([flatOf/1]).

flatOf([]) -> 
    [];
flatOf([X | Y]) when is_list(X) ->
    flatOf(X) ++ flatOf(Y);
flatOf([X | Y]) ->
    [X | flatOf(Y)];
flatOf(X) ->
    X.