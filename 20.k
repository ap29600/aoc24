(h;w;in):(#:;#*:;,/)@\:0:"20.txt"

step:{$[~#y;:(x;y;z);::]
  x:@[x;y;:;z]
  y:?(~^x@)_,/(1;-1;w;-w)+\:y
  (x;y;z+1)}

(f;b):{(h;w)#*(step.)/(@[(#in)#0N;&in="#";:;w*h];x;0)}'&'"SE"=\:in
best:(,/f)@*&"E"=in
shifts:{y./:+x+\:'!'-1_#'*:\y}
pos:{,'/3((0 -1;1 0)(+/*)\:)\,/'((#'b)#'1+a;b:!'x-a:!x)}
cheat:{+//~(best-100)<(+/p|-p)++/:/(w*h)^(f;shifts[p:pos x; b])}
cheat 2
cheat 20
