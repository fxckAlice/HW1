-module(is_palindrome).
-export([isPalindrome/1]).

isPalindrome([]) ->
    [] == [];
isPalindrome([X]) ->
    [X] == [X];
isPalindrome([X | Y]) ->
    [X | Y] == reverse_list:reverseList([X | Y]).