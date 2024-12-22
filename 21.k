in:0:"21.txt"

nk:("789"
    "456"
    "123"
    " 0A")

dk:(" ^A"
    "<v>")

dir:(1 0;0 1;-1 0;0 -1)

adj: ,'/-1 1_\:

/find instruction sequences
path:{(s;e):*''&'x=/:y
  (+/{x|-x}s-e) (,/{y,/:,'(*|y)+/:dir@&0<,/1-:\x-*|y}[e]')/,,s}
safe:{(&/'~^x./:/:)#path[x;y]}
chars: {adj"A",x,"A"}"v>^<"dir?1_-':

indirect:{$[~#x;:-1+#'y;:]
  u:?3,//p:(chars'safe[*x]@)''adj'y
  s:u!o[1_x;u]
  +/'(&/+/')''s p}

l1:indirect[,[,nk;2#,dk]; "A",'in]
l2:indirect[,[,nk;25#,dk]; "A",'in]

+/l1*`I$-1_'in
+/l2*`I$-1_'in
