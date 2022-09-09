// booleanは論理値で「true」もしくは「false」のみ扱う
boolean flag = true;

// byteは1byte(8bits)の整数値を扱う　範囲：-128 〜 127
byte b = -128;

// intは4bytes(32bits)の整数値を扱う　範囲：-2,147,483,648 〜 2,147,483,647
// intは整数の英語であるIntegerから来ている
int i = 10000;

// floatは4bytes(32bits)の浮動小数値を扱う　範囲：-3.40282347E+38 〜 3.40282347E+38
float f = 3.14159265;

// charは2bytes(16bits)のUnicod形式の文字や記号を扱う
// シングルクォート(')で囲うことで区別される ex:'A', '+', '湘'(漢字もOK）
// 一文字しか扱えないので注意！！
// charは文字の英語であるCharacterから来ている
char c = '湘';

// Stringは文字列（文字の並び）を扱う
// ダブルクオーテーション(")で囲うことで区別される ex:"test", "湘南工科大学"
// Stringは最初が大文字であることに注意！！
String str1 = "Computer Graphics";
String str2 = "湘南工科大学";

println("flag =", flag);
println("b =", b);
println("i =", i);
println("f =", f);
println("c =", c);
println("str1 =", str1);
println("str2 =", str2);
