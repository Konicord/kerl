-module(ids).
-export([main/0]).

main() ->
    Pid = spawn(fun() ->
        Ids = lists:map(fun(_) -> rand:uniform(1000) end, lists:seq(1, 1000)),
        io:format("~p~n", [lists:sort(Ids)])
    end),

    exit(Pid, normal).

%% time erl -noshell -s ids main -s init stop
