-module(reverse_list).
-export([reverseList/1]).

reverseList([]) ->
    [];
reverseList([X]) ->
    [X];
reverseList([X , Y]) ->
    [Y, X];
reverseList([X | Y]) ->
    List = [X | Y],
    Reverse_list = [X],
    reverseList(Reverse_list, List).
reverseList([R], [X | Y]) ->
    List = [X | Y],
    Reverse_list = [element_by_pos:elementByPos(List, 2) , R],
    reverseList(Reverse_list, List, 3).
reverseList([R | T], [X | Y], Pos) ->
    List = [X | Y],
    Reverse_list = [R | T],
    ListLength = number_of_elements:numberOfElements(List),
    case Pos of
        _ when Pos == ListLength -> [last_element:lastElement(List) | Reverse_list];
        _ -> reverseList([element_by_pos:elementByPos(List, Pos) | Reverse_list], List, Pos + 1)
    end.


