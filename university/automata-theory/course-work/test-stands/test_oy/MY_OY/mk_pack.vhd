-- этот пакет содержит декларацию типа управляющего сигнала control_y
-- этот сигнал формируется управляющим автоматом для управления операционным автоматом
-- используется перечислимый тип
package mk_pack is -- декларация пакета
type control_y is (nmk,mk1,mk2,mk3,mk4); -- микрокоманды
end package mk_pack;-- окончание пакета
