-module(api).
-export([main/0]).

main() ->
    API_KEY = "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzUxMiIsImtpZCI6IjI4YTMxOGY3LTAwMDAtYTFlYi03ZmExLTJjNzQzM2M2Y2NhNSJ9.eyJpc3MiOiJzdXBlcmNlbGwiLCJhdWQiOiJzdXBlcmNlbGw6Z2FtZWFwaSIsImp0aSI6ImFjMjE4YjE3LTY4YTEtNGQwMC04NDIzLWM5YTM1ZDNkNTA4NyIsImlhdCI6MTY2Njk1MDE2OSwic3ViIjoiZGV2ZWxvcGVyLzg3N2QxZmI1LWRjNjktYjAxNi0xYTNmLTI1YjM2NmMxNGIwMiIsInNjb3BlcyI6WyJjbGFzaCJdLCJsaW1pdHMiOlt7InRpZXIiOiJkZXZlbG9wZXIvc2lsdmVyIiwidHlwZSI6InRocm90dGxpbmcifSx7ImNpZHJzIjpbIjIxMy4yMjUuMTQuMTkyIl0sInR5cGUiOiJjbGllbnQifV19.asadVTkTMiVXHafmkejYoxlcbSBDAV76Lq9zT9ff7g55SkdihuqZJBPYBbmDfvDRHbaUQVagXN61PPLHsH8LfQ",
    URL = "https://api.clashofclans.com/v1/players/%#ABCERDD/",

    %% call the URL, put the API key in the header

    {ok, {{_, 200, _}, _, Body}} = httpc:request(get, {URL, ["Authorization"], API_KEY}, [], []),
    io:format("~p~n", [Body]).

%% erl -noshell -s api main -s init stop