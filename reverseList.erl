-module(reverseList). 
-export([tail_reverse/2,start/1]). 

tail_reverse(L) -> tail_reverse(L,[]).

tail_reverse([],Acc) -> Acc; 
tail_reverse([H|T],Acc) -> tail_reverse(T, [H|Acc]).

start(X) ->  
   Y = tail_reverse(X), 
   io:fwrite("~w",[Y]).
