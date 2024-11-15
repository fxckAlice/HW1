-module(encode_modified).
-export([encodeModified/1]).

encodeModified([]) ->
    [];

encodeModified([X]) ->
    [X];

encodeModified([X, X | Y]) ->
    encodeModified([[2, X] | Y]);

encodeModified([[N , X], X | Y]) ->
    encodeModified([[N + 1 , X] | Y]);

encodeModified([X, Y | T]) ->
    [X | encodeModified([Y | T])].