combo:{$[y<4;y;x@y-4]}
lit: :
xor:2/~=/(64#2)\',

div:{@[y;x;:;(-*/z#2)!*y]}
setb:{@[x;1;:;8!y]}
xorb:{@[x;1;xor;y]}
jnz:{$[*x;@[x;3;:;y-2];x]}
out:{@[x;4;,;8!y]}

inst:((div 0;combo)
      (xorb;lit)
      (setb;combo)
      (jnz;lit)
      (xorb;{y;x 2})
      (out;combo)
      (div 1;combo)
      (div 2;combo))

step:{$[~(#x)>y 3;:y;::]
  (i;v):x 0 1+y 3
  (in;op):inst i
  @[in[y;op[y;v]];3;+;2]};

run:{*|step[x;]/y,(0;!0)}

parse: (::;*:)@'(.*|": "\)''"\n"\'"\n\n"\1::

(m;p):parse "17.txt"
`0:","/$run[p;m]

extend:{@[x;(#y)#|&^x;:;|y]}
valid:{(~(#r)>#p)&(n#p)~(n:-3!-7++/~^x)#r:run[p;] @[0 0 0;0;:;2/0^x]}
search:{
  x:{x@*<x}'x@.=(- 0|-10++/~^*x)_'x
  (valid')#,/extend/:\:[x;b\'!*/b:(3&+/^*x)#2]}

{x@*<x}@2/'0^16 search/ extend/:[64#0N;(7#2)\'!*/7#2]
