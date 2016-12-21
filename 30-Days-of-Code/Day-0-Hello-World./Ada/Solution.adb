with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Text_IO; use Ada.Text_IO;
with Ada.Strings.Unbounded.Text_IO;

procedure Solution is
    inputString : unbounded_string;
    
begin
    inputString := Ada.Strings.Unbounded.Text_IO.get_line;
    put (Item => "Hello, World.");
    new_line;
    Ada.Strings.Unbounded.Text_IO.put_line (inputString);
end Solution;
