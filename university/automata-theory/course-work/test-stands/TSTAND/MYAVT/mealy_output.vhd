library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity output is
Port
(
	x1, x2: in bit; --входные сигналы
	t1, t2: in bit; --состояния элементов памяти
	y1, y2, y3: out bit --выходные сигналы
);
end output;

architecture Behavioral of output is
begin
	-- описание y1 в основном базисе
	y1 <= (x1 and not t2) or (x2 and t2 and not t1) or (not x1 and x2 and t2) or (x1 and not x2 and t1);
	-- описание y2 в основном базисе
	y2 <= (not x1 and not t1 and not t2) or (x1 and x2 and t1);
   -- описание y3 в основном базисе
	y3 <= (not x2 and not t2) or (x2 and t1) or (x1 and not t1 and t2); 
end Behavioral;
