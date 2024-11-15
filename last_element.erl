-module(last_element).
-export([lastElement/1]).

lastElement([X]) ->
    X;
lastElement([_ | X]) ->
    lastElement(X);


lastElement([]) ->
    undefined.