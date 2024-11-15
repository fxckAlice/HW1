-module(element_by_pos).
-export([elementByPos/2]).

elementByPos([X | Y], Pos) when is_integer(Pos) ->
    Length = number_of_elements:numberOfElements([X | Y]),
    case Pos of
        _ when Pos == Length -> last_element:lastElement([X | Y]);
        _ when Pos >= 1 -> 
            case Pos of 
                _ when Pos == 1 -> X;
                _ when Pos < Length -> 
                    Next = Pos - 1,
                    elementByPos(Y, Next);
                _ -> undefined
                end;
        _ -> undefined
    end.