-module(last_but_one).
-export([lastButOne/1]).

lastButOne([_]) ->
    undefined;
lastButOne([X, Y]) -> 
    [X, Y];
lastButOne([_ | X]) ->
    lastButOne(X);
lastButOne([]) ->
    undefined.