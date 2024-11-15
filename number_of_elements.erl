-module(number_of_elements).
-export([numberOfElements/1]).

numberOfElements([]) ->
    0;
numberOfElements([_]) ->
    1;
numberOfElements([_ | X]) ->
    numberOfElements(X, 1).
numberOfElements([_ | X] , Num) ->
    numberOfElements(X, Num + 1);
numberOfElements(_, Num) ->
    Num.
