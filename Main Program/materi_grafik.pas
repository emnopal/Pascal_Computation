program materi_grafik;

uses graph, sysutils;

function f(x:real):real;
begin
   f:=sin(x);
end;

var
gd, gm, errorcode, xmax, ymax, lgx, lgy, jgx, jgy:integer;
a, b, i, px, py:integer;
x1, x2, dx :real;
begin
   gd:= detect;
   gm:= m800X600;
   initgraph(gd,gm,'');
   errorcode := graphresult;
   if errorcode <> grok then halt;
   
   //setbkcolour(15);
   xmax := getmaxx;
   ymax := getmaxy;
   
   jgx := 10;
   jgy := 5;
   
   lgx := round (xmax/jgx);
   lgy := round (ymax/jgy);
   
   px:= round(xmax/2);
   py:= round(ymax/2);
   
   line(px,0,px,ymax);
   line(0,py,xmax,py);
   
   setlinestyle(3,0,1);
   setcolor(03);
   
   for i:=0 to round(jgx/2)do
   begin
   a:=px + i*lgx;
   line (a,0,a,ymax);
   b:=px - i*lgx;
   line(b,0,b,ymax);
   setcolor(white);
   outtextxy(a-10,py+10, inttostr(i));
   outtextxy(b,py+10, inttostr(-1*i));
   end;
   
   for i:=1 to round(jgy/2)do
   begin
   a:=py + i*lgy;
   line (0,a,xmax,a);
   b:=py - i*lgy;
   line(0,b,xmax,b);
   outtextxy(px-14,b,inttostr(i));
   outtextxy(px-20,a,inttostr(-1*i));
   end;
   
 x1 := -4;
 x2 := 4;
 dx := 0.00001;
 
 repeat
 a := round(px + x1*lgx);
 b := round(py + f(x1)*lgy);
 putpixel(a,b,red);
 x1 := x1 + dx;
 until x1 > x2;
 readln;
 end.
