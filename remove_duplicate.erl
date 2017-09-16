-module(remove_duplicate).
-export([remove_duplicate/1, start/1]).

remove_duplicate([])    -> [];
remove_duplicate([H|T]) -> [H | [X || X <- remove_duplicate(T), X /= H]].

start(X) ->  
   Y = remove_duplicate(X), 
   io:fwrite("~w",[Y]).
