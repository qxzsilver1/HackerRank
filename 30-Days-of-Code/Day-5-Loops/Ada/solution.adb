with Ada.Text_IO, Ada.Integer_Text_IO;
with Ada.Strings.Fixed;
use Ada;
use Ada.Text_IO;
use Ada.Integer_Text_IO;

procedure Solution is
    inputInt : Integer;
    result : Integer;

begin
    get(inputInt);
    for count in 1..10
    loop
        result := inputInt * count;
        Put(inputInt, Width => 0); Put(" x "); Put(count, Width => 0); Put(" = "); Put(result, Width => 0); New_Line;
        --Put_Line(Trim(Integer'Image(inputInt), Ada.Strings.Left) & " x" & Integer'Image(count) & " =" & Integer'Image(result));
        --above Trim(,) doesn't work; without Trim, there is a space added at the beginning
    end loop;


end Solution;
