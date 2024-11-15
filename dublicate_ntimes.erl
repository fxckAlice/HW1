-module(dublicate_ntimes).
-export([dublicateNtimes/2]).

dublicateNtimes([_ | _], N) when N < 1 ->
    undefined;
dublicateNtimes([X | Y], N) when N == 1 ->
    [X | Y];
dublicateNtimes([X], N) when N == 1 ->
    [X];
dublicateNtimes([X], N) ->
    [X | dublicateNtimes([X], N - 1)];
dublicateNtimes([X | Y], N) ->
    [X | dublicateNtimes([X | Y], N, N - 1)].
dublicateNtimes([X | Y], N, Nd) when Nd == 1 ->
    [X | dublicateNtimes(Y, N)];
dublicateNtimes([X | Y], N, Nd) ->
    [X | dublicateNtimes([X | Y], N, Nd - 1)].