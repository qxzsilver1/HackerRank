local Person = { };
Person.__index = Person
 
function Person.new (initialAge)
   local self = setmetatable({ },Person);
   self.age = initialAge
    
   if initialAge < 0 then
        self.age = 0
        print("Age is not valid, setting age to 0.")
   end
        
   return self;
end
function Person:amIOld()
    if self.age < 13 then
        print("You are young.") 
    elseif self.age >= 13 and self.age < 18 then
        print("You are a teenager.")
    else
        print("You are old.")
    end 
end
function Person:yearPasses ()
   self.age = self.age + 1
end

local read = io.read;
local T = read'*n';
for i = 1,T do
   local age = read'*n';
   local p = Person.new(age);
   p:amIOld();
   for j = 1,3 do
      p:yearPasses();
   end
   p:amIOld();
   print"";
end
