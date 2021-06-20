Program calculadora;
uses crt;
var
ar_sair : char;
a, x, y : real;
function calculo : real;
begin
  case ar_sair of
    '*': begin
      x:=x*y;
      calculo := x;
    end;
    '/': begin
      x:=x/y;
      calculo := x;
    end;
    '-': begin
      x:=x-y;
      calculo := x;
    end;
    '+': begin
      x:=x+y;
      calculo := x;
    end;
  end;
end;
begin
  ar_sair := 'o';
  repeat
    if (ar_sair <> 'o') and (ar_sair <> 'l') and (ar_sair <> 'c')
    and (ar_sair <> '+') and (ar_sair <> '-') and (ar_sair <> '*')
    and (ar_sair <> '/') and (ar_sair <> 'e') then
//		and (x = real) and (y = real) then
    begin
      writeln ('Você digitou um(s) caractere inválido(s)');
      writeln ('O programa será desligado');
      delay (2000);
      clrscr;
      writeln ('ENCERRANDO...');
      delay (3000);
      exit;
    end;
    if (ar_sair = 'o') then
    begin
      x := 0;
      y := 0;
      a := 0;
    end;
    if (x = 0) then
    begin
      writeln ('digite um número');
      readln (x);
      writeln ('sinal aritmético e "ENTER", seguido do número e "ENTER"');
      readln (ar_sair);
      readln (y);
      writeln ('reaposta: ', calculo);
      a := x;
      writeln ('"o" para reiniciar, ou "l" para sair, ou "c" para continuar');      
      writeln ('"e" para limpar tela');
      readln (ar_sair);
      if (ar_sair = 'e') then
      begin
      	clrscr;
      end;
      delay (500);
    end;
    if (ar_sair = 'c') or (ar_sair = 'e') then
    begin
    	if (ar_sair = 'e') then
    	begin
    		writeln ('reaposta: ', x);
      	writeln ('anterior: ', a);	
    	end;
      writeln ('sinal aritmético e "ENTER", seguido do número e "ENTER"');
      readln (ar_sair);
      readln (y);
      a := x;
      writeln ('reaposta: ', calculo);
      writeln ('anterior: ', a);
      writeln ('"o" para reiniciar, ou "l" para sair, ou "c" para continuar');
      writeln ('"e" para limpar tela');
      readln (ar_sair);
      if (ar_sair = 'e') then
      begin
      	clrscr;
      end;
			delay (1000);
    end;
  until (ar_sair = 'l');
End.