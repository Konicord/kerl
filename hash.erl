-module(hash). 
-export([main/0]).

main() ->
   case file:read_file("text.txt") of
      {ok, Content} ->
         Hash = crypto:hash(sha, Content),
         file:write_file("text.txt", Hash);
      {error, Reason} ->
         io:format("Error: ~p~n", [Reason])
   end.
%% erl -noshell -s hash main -s init stop