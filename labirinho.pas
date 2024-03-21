Program robo_busca ;
var cclunaini,linhaini,colunafim,linhafim,coluna,linha,i,j: integer;
var maze: array[1..26,1..19] of integer;
escolha,cima,baixo,dir,esq,passos,testeno,nos,opcao:integer;
//----------------------------------------------------------------
// Inicio do programa
//----------------------------------------------------------------
Begin
opcao:=1;
while (opcao=1) do
begin
clrscr;
//colunafim := 20;
//linhafim := 2;
coluna := 2;
linha := 2;

gotoxy (coluna,linha);
textcolor (yellow);
writeln (#178);
maze[1,1]:=1;
//----------------------------------------------------------------
// Monta labirinto A
//----------------------------------------------------------------
maze[1,1]:=9; maze[2,1]:=9; maze[3,1]:=9; maze[4,1]:=9; maze[5,1]:=9; maze[6,1]:=9;
maze[7,1]:=9; maze[8,1]:=9; maze[9,1]:=9; maze[10,1]:=9; maze[11,1]:=9; maze[12,1]:=9;
maze[13,1]:=9; maze[14,1]:=9; maze[15,1]:=9; maze[16,1]:=9; maze[17,1]:=9; maze[18,1]:=9;
maze[19,1]:=9; maze[20,1]:=9; maze[21,1]:=9; maze[22,1]:=9; maze[23,1]:=9; maze[24,1]:=9;
maze[25,1]:=9; maze[26,1]:=9;
maze[1,2]:=9; maze[2,2]:=0; maze[3,2]:=9; maze[4,2]:=0; maze[5,2]:=0; maze[6,2]:=0;
maze[7,2]:=0; maze[8,2]:=0; maze[9,2]:=0; maze[10,2]:=0; maze[11,2]:=0; maze[12,2]:=9;
maze[13,2]:=0; maze[14,2]:=0; maze[15,2]:=0; maze[16,2]:=0; maze[17,2]:=0; maze[18,2]:=0;
maze[19,2]:=9; maze[20,2]:=0; maze[21,2]:=9; maze[22,2]:=0; maze[23,2]:=0; maze[24,2]:=0;
maze[25,2]:=0; maze[26,2]:=9;
maze[1,3]:=9; maze[2,3]:=0; maze[3,3]:=9; maze[4,3]:=9; maze[5,3]:=9; maze[6,3]:=9;
maze[7,3]:=9; maze[8,3]:=9; maze[9,3]:=9; maze[10,3]:=9; maze[11,3]:=0; maze[12,3]:=9;
maze[13,3]:=0; maze[14,3]:=9; maze[15,3]:=9; maze[16,3]:=9; maze[17,3]:=9; maze[18,3]:=0;
maze[19,3]:=9; maze[20,3]:=0; maze[21,3]:=9; maze[22,3]:=0; maze[23,3]:=9; maze[24,3]:=9;
maze[25,3]:=0; maze[26,3]:=9;
maze[1,4]:=9; maze[2,4]:=0; maze[3,4]:=9; maze[4,4]:=0; maze[5,4]:=0; maze[6,4]:=0;
maze[7,4]:=0; maze[8,4]:=0; maze[9,4]:=0; maze[10,4]:=0; maze[11,4]:=0; maze[12,4]:=9;
maze[13,4]:=0; maze[14,4]:=9; maze[15,4]:=0; maze[16,4]:=9; maze[17,4]:=0; maze[18,4]:=0;
maze[19,4]:=9; maze[20,4]:=0; maze[21,4]:=0; maze[22,4]:=0; maze[23,4]:=9; maze[24,4]:=9;
maze[25,4]:=0; maze[26,4]:=9;
maze[1,5]:=9; maze[2,5]:=0; maze[3,5]:=9; maze[4,5]:=0; maze[5,5]:=9; maze[6,5]:=9;
maze[7,5]:=9; maze[8,5]:=9; maze[9,5]:=9; maze[10,5]:=9; maze[11,5]:=9; maze[12,5]:=9;
maze[13,5]:=0; maze[14,5]:=9; maze[15,5]:=0; maze[16,5]:=9; maze[17,5]:=0; maze[18,5]:=9;
maze[19,5]:=9; maze[20,5]:=9; maze[21,5]:=9; maze[22,5]:=9; maze[23,5]:=9; maze[24,5]:=9;
maze[25,5]:=0; maze[26,5]:=9;
maze[1,6]:=9; maze[2,6]:=0; maze[3,6]:=9; maze[4,6]:=0; maze[5,6]:=0; maze[6,6]:=0;
maze[7,6]:=0; maze[8,6]:=0; maze[9,6]:=0; maze[10,6]:=0; maze[11,6]:=0; maze[12,6]:=0;
maze[13,6]:=0; maze[14,6]:=0; maze[15,6]:=0; maze[16,6]:=9; maze[17,6]:=0; maze[18,6]:=0;
maze[19,6]:=0; maze[20,6]:=0; maze[21,6]:=0; maze[22,6]:=0; maze[23,6]:=0; maze[24,6]:=0;
maze[25,6]:=0; maze[26,6]:=9;

maze[1,7]:=9; maze[2,7]:=0; maze[3,7]:=9; maze[4,7]:=0; maze[5,7]:=9; maze[6,7]:=9;
maze[7,7]:=9; maze[8,7]:=9; maze[9,7]:=9; maze[10,7]:=9; maze[11,7]:=9; maze[12,7]:=9;
maze[13,7]:=9; maze[14,7]:=9; maze[15,7]:=0; maze[16,7]:=9; maze[17,7]:=9; maze[18,7]:=9;
maze[19,7]:=9; maze[20,7]:=9; maze[21,7]:=9; maze[22,7]:=9; maze[23,7]:=9; maze[24,7]:=9;
maze[25,7]:=0; maze[26,7]:=9;
maze[1,8]:=9; maze[2,8]:=0; maze[3,8]:=9; maze[4,8]:=0; maze[5,8]:=9; maze[6,8]:=0;
maze[7,8]:=0; maze[8,8]:=0; maze[9,8]:=0; maze[10,8]:=0; maze[11,8]:=0; maze[12,8]:=0;
maze[13,8]:=0; maze[14,8]:=0; maze[15,8]:=0; maze[16,8]:=9; maze[17,8]:=0; maze[18,8]:=0;
maze[19,8]:=0; maze[20,8]:=0; maze[21,8]:=0; maze[22,8]:=0; maze[23,8]:=0; maze[24,8]:=9;
maze[25,8]:=0; maze[26,8]:=9;
maze[1,9]:=9; maze[2,9]:=0; maze[3,9]:=9; maze[4,9]:=0; maze[5,9]:=9; maze[6,9]:=0;
maze[7,9]:=9; maze[8,9]:=9; maze[9,9]:=9; maze[10,9]:=9; maze[11,9]:=9; maze[12,9]:=9;
maze[13,9]:=9; maze[14,9]:=9; maze[15,9]:=9; maze[16,9]:=9; maze[17,9]:=0; maze[18,9]:=9;
maze[19,9]:=9; maze[20,9]:=9; maze[21,9]:=9; maze[22,9]:=9; maze[23,9]:=9; maze[24,9]:=9;
maze[25,9]:=0; maze[26,9]:=9;
maze[1,10]:=9; maze[2,10]:=0; maze[3,10]:=9; maze[4,10]:=0; maze[5,10]:=9; maze[6,10]:=0;
maze[7,10]:=9; maze[8,10]:=0; maze[9,10]:=0; maze[10,10]:=0; maze[11,10]:=0; maze[12,10]:=0;
maze[13,10]:=0; maze[14,10]:=9; maze[15,10]:=0; maze[16,10]:=9; maze[17,10]:=0; maze[18,10]:=0;
maze[19,10]:=0; maze[20,10]:=0; maze[21,10]:=0; maze[22,10]:=0; maze[23,10]:=0; maze[24,10]:=9;
maze[25,10]:=0; maze[26,10]:=9;
maze[1,11]:=9; maze[2,11]:=0; maze[3,11]:=9; maze[4,11]:=0; maze[5,11]:=9; maze[6,11]:=0;
maze[7,11]:=9; maze[8,11]:=0; maze[9,11]:=9; maze[10,11]:=9; maze[11,11]:=9; maze[12,11]:=9;
maze[13,11]:=9; maze[14,11]:=9; maze[15,11]:=0; maze[16,11]:=9; maze[17,11]:=0; maze[18,11]:=9;
maze[19,11]:=9; maze[20,11]:=9; maze[21,11]:=9; maze[22,11]:=9; maze[23,11]:=0; maze[24,11]:=9;
maze[25,11]:=0; maze[26,11]:=9;
maze[1,12]:=9; maze[2,12]:=0; maze[3,12]:=9; maze[4,12]:=0; maze[5,12]:=9; maze[6,12]:=0;
maze[7,12]:=9; maze[8,12]:=0; maze[9,12]:=0; maze[10,12]:=0; maze[11,12]:=0; maze[12,12]:=0;
maze[13,12]:=0; maze[14,12]:=9; maze[15,12]:=0; maze[16,12]:=9; maze[17,12]:=0; maze[18,12]:=9;
maze[19,12]:=0; maze[20,12]:=0; maze[21,12]:=0; maze[22,12]:=9; maze[23,12]:=0; maze[24,12]:=9;
maze[25,12]:=0; maze[26,12]:=9;
maze[1,13]:=9; maze[2,13]:=0; maze[3,13]:=9; maze[4,13]:=0; maze[5,13]:=9; maze[6,13]:=0;
maze[7,13]:=9; maze[8,13]:=0; maze[9,13]:=9; maze[10,13]:=9; maze[11,13]:=9; maze[12,13]:=9;
maze[13,13]:=0; maze[14,13]:=9; maze[15,13]:=0; maze[16,13]:=9; maze[17,13]:=0; maze[18,13]:=9;
maze[19,13]:=0; maze[20,13]:=9; maze[21,13]:=0; maze[22,13]:=9; maze[23,13]:=0; maze[24,13]:=9;
maze[25,13]:=0; maze[26,13]:=9;
maze[1,14]:=9; maze[2,14]:=0; maze[3,14]:=9; maze[4,14]:=0; maze[5,14]:=9; maze[6,14]:=0;
maze[7,14]:=0; maze[8,14]:=0; maze[9,14]:=0; maze[10,14]:=0; maze[11,14]:=0; maze[12,14]:=9;
maze[13,14]:=0; maze[14,14]:=9; maze[15,14]:=0; maze[16,14]:=9; maze[17,14]:=0; maze[18,14]:=9;
maze[19,14]:=0; maze[20,14]:=9; maze[21,14]:=0; maze[22,14]:=9; maze[23,14]:=0; maze[24,14]:=9;
maze[25,14]:=0; maze[26,14]:=9;
maze[1,15]:=9; maze[2,15]:=0; maze[3,15]:=9; maze[4,15]:=9; maze[5,15]:=9; maze[6,15]:=9;
maze[7,15]:=9; maze[8,15]:=9; maze[9,15]:=9; maze[10,15]:=9; maze[11,15]:=9; maze[12,15]:=9;
maze[13,15]:=0; maze[14,15]:=9; maze[15,15]:=0; maze[16,15]:=9; maze[17,15]:=0; maze[18,15]:=9;
maze[19,15]:=0; maze[20,15]:=9; maze[21,15]:=0; maze[22,15]:=9; maze[23,15]:=0; maze[24,15]:=9;
maze[25,15]:=0; maze[26,15]:=9;
maze[1,16]:=9; maze[2,16]:=0; maze[3,16]:=0; maze[4,16]:=0; maze[5,16]:=0; maze[6,16]:=0;
maze[7,16]:=0; maze[8,16]:=0; maze[9,16]:=0; maze[10,16]:=0; maze[11,16]:=0; maze[12,16]:=0;
maze[13,16]:=0; maze[14,16]:=0; maze[15,16]:=0; maze[16,16]:=9; maze[17,16]:=0; maze[18,16]:=9;
maze[19,16]:=0; maze[20,16]:=9; maze[21,16]:=0; maze[22,16]:=9; maze[23,16]:=0; maze[24,16]:=0;
maze[25,16]:=0; maze[26,16]:=9;
maze[1,17]:=9; maze[2,17]:=0; maze[3,17]:=9; maze[4,17]:=9; maze[5,17]:=9; maze[6,17]:=9;
maze[7,17]:=9; maze[8,17]:=9; maze[9,17]:=9; maze[10,17]:=9; maze[11,17]:=9; maze[12,17]:=9;
maze[13,17]:=9; maze[14,17]:=9; maze[15,17]:=9; maze[16,17]:=9; maze[17,17]:=9; maze[18,17]:=9;
maze[19,17]:=0; maze[20,17]:=9; maze[21,17]:=0; maze[22,17]:=9; maze[23,17]:=0; maze[24,17]:=9;
maze[25,17]:=9; maze[26,17]:=9;
maze[1,18]:=9; maze[2,18]:=0; maze[3,18]:=0; maze[4,18]:=0; maze[5,18]:=0; maze[6,18]:=0;
maze[7,18]:=0; maze[8,18]:=0; maze[9,18]:=0; maze[10,18]:=0; maze[11,18]:=0; maze[12,18]:=0;
maze[13,18]:=0; maze[14,18]:=0; maze[15,18]:=0; maze[16,18]:=0; maze[17,18]:=0; maze[18,18]:=0;
maze[19,18]:=0; maze[20,18]:=9; maze[21,18]:=0; maze[22,18]:=9; maze[23,18]:=0; maze[24,18]:=0;
maze[25,18]:=0; maze[26,18]:=9;
maze[1,19]:=9; maze[2,19]:=9; maze[3,19]:=9; maze[4,19]:=9; maze[5,19]:=9; maze[6,19]:=9;
maze[7,19]:=9; maze[8,19]:=9; maze[9,19]:=9; maze[10,19]:=9; maze[11,19]:=9; maze[12,19]:=9;
maze[13,19]:=9; maze[14,19]:=9; maze[15,19]:=9; maze[16,19]:=9; maze[17,19]:=9; maze[18,19]:=9;
maze[19,19]:=9; maze[20,19]:=9; maze[21,19]:=9; maze[22,19]:=9; maze[23,19]:=9; maze[24,19]:=9;
maze[25,19]:=9; maze[26,19]:=9;

//----------------------------------------------------------------
// Pinta labirinto
//----------------------------------------------------------------
for i:=1 to 26 do
begin
for j:=1 to 19 do
begin
if maze[i,j]>8 then
gotoxy(i,j);

textcolor (white);
writeln (#178);

end;
end;
//----------------------------------------------------------------
// escolhe um fim aleatorio dentro do labirinto
//----------------------------------------------------------------
colunafim:=random(25)+1;
linhafim:=random(18)+1;
while (maze[colunafim,linhafim]=9) do
begin
colunafim:=random(25)+1;
linhafim:=random(18)+1;
end;

gotoxy (colunafim,linhafim);
textcolor (yellow);
write ('F');
passos:=0;
nos:=0;
//----------------------------------------------------------------
// inicio do jogo
//----------------------------------------------------------------
while ((linha<>linhafim) or (coluna<>colunafim)) do
Begin
gotoxy (28,2);
textcolor (yellow);
writeln ('Passos: ',passos);
gotoxy (28,4);
textcolor (yellow);
writeln ('Nos visitados: ',nos);
//----------------------------------------------------------------
// define quem é esquerda direita etc..
//----------------------------------------------------------------
cima:=maze[coluna,linha-1];
baixo:=maze[coluna,linha+1];
esq:=maze[coluna-1,linha];
dir:=maze[coluna+1,linha];
//----------------------------------------------------------------

// Regras de escolha de direção
//----------------------------------------------------------------
if (cima = 0) or ((cima < dir) and (cima < baixo) and (cima < esq)) then
begin
escolha:=0;
end;
if (dir = 0) or ((dir < cima) and (dir < baixo) and (dir < esq)) then
begin
escolha:=2;
end;
if (baixo = 0) or ((baixo < dir) and (baixo < cima) and (baixo < esq)) then
begin
escolha:=1;
end;
if (esq = 0) or ((esq < dir) and (esq < baixo) and (esq < cima)) then
begin
escolha:=3;
end;
textcolor (blue);
// essa posição é um nó?
testeno:=0;
if (esq <> 9) then
begin
testeno:=testeno+1;
end;
if (dir <> 9) then
begin
testeno:=testeno+1;
end;
if (cima <> 9) then
begin
testeno:=testeno+1;
end;
if (baixo <> 9) then
begin
testeno:=testeno+1;
end;
if testeno <> 2 then
begin
textcolor (yellow);
end;

// contando os nós visitados
if (testeno<>2) and (maze[coluna,linha]=0) then

begin
nos:=nos+1;
end;
case (escolha) of
// seta para cima
0: begin

if maze[coluna,linha-1]<>5 then
begin
delay (50);
gotoxy (coluna,linha);

maze[coluna,linha]:=maze[coluna,linha]+1;
write (maze[coluna,linha]);
linha:=linha-1;

gotoxy (coluna,linha);
textcolor (yellow);
write (#1);

end;

end;
// seta para baixo
1: begin

if maze[coluna,linha+1]<>5 then
begin
delay (50);
gotoxy (coluna,linha);
maze[coluna,linha]:=maze[coluna,linha]+1;

write (maze[coluna,linha]);
linha:=linha+1;
gotoxy (coluna,linha);
textcolor (yellow);
write (#1);

end;
end;
// seta para direita
2: begin

if maze[coluna+1,linha]<>5 then
begin
delay (50);
gotoxy (coluna,linha);
maze[coluna,linha]:=maze[coluna,linha]+1;

write (maze[coluna,linha]);
coluna:=coluna+1;

gotoxy (coluna,linha);
textcolor (yellow);
write (#1);

end;
end ;

// seta para esquerda
3: begin

if maze[coluna-1,linha]<>5 then
begin
delay (50);
gotoxy (coluna,linha);
maze[coluna,linha]:=maze[coluna,linha]+1;

write (maze[coluna,linha]);
coluna:=coluna-1;

gotoxy (coluna,linha);
textcolor (yellow);
write (#1);

end;
end;

end;
passos:=passos+1;
End;
//----------------------------------------------------------------
// Bipe no final
//----------------------------------------------------------------
write (#7);
gotoxy (28,6);
write ('Deseja iniciar novamente (1)sim (2)nao: ');
read (opcao);
end;
End.