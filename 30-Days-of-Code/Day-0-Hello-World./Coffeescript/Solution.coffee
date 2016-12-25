
process.stdin.setEncoding("ascii");
_input = "";


process.stdin.on "data", (input) ->
    _input += input;

process.stdin.on "end", () ->
   console.log "Hello, World.";
   process.stdout.write(_input);

###
    
stdin = process.openStdin()
stdin.setEncoding 'utf8'

stdin.on "data", (input) -> 
    _input += input;
    
 stdin.on 'end', ->
   console.log "Hello, World.";
   process.stdout.write(_input);
###
