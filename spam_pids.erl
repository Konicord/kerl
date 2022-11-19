-module(spam_pids).
-export([main/0]).

main() ->
    Pids = lists:map(fun(_) -> spawn(fun() -> ok end) end, lists:seq(1, 1000)),
    lists:foreach(fun(Pid) -> exit(Pid, normal) end, Pids).

%% erl -noshell -s sort main -s init stop
