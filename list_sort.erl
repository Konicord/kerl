-module(list_sort).
-export([main/0]).

main() ->
    L = lists:map(fun(_) -> rand:uniform(1000) end, lists:seq(1, 1000)),
    Sorted = bubble_sort(L),
    io:format("~p~n", [Sorted]).

bubble_sort(L) ->
    bubble_sort(L, []).
bubble_sort([], Sorted) ->
    Sorted;
bubble_sort([H | T], Sorted) ->
    bubble_sort(T, insert(H, Sorted)).
insert(X, [H | T]) when X > H ->
    [H | insert(X, T)];
insert(X, L) ->
    [X | L].

%% erl -noshell -s list_sort main -s init stop
