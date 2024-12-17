k:1000
in:0:"16.txt"
N:*/(H;W):-1_#'*:\in
(s;e):*'&'"SE"=\:,/in
bad:("#"=,/in)@N!
turn:(4*N)!(1 3*N)+\:
step:(1;W;-1;-W)@(-N)!

forward:{$[~#r:(~^y@)_?x@k!z
  (x;y;1+z)
  (@[x;k!0 1+z;(:;,);bad_'(,/turn r;r+step r)]; @[y;r;:;z]; 1+z)]}
 
back:{i:(turn y),,y-step y
  ?,/i@'&'(~bad i)&(k;k;1)=-/:/x@(y;i)}

(q;dist;iter):{&/^(x 1)@e+N*!4} (forward.)/ ((,,s),(k-1)#,!0;(4*N)#0N;0)

iter-1
#?N!,/back[dist]\e+N*!4
