process.stdin.setEncoding("ascii");
_input = "";

process.stdin.on "data", (input) ->
    _input += input;

process.stdin.on "end", () ->
    count = 1
   
    while count <= 10
        console.log "#{_input}" + " x " + "#{count}" + " = " + "#{_input * count}"
        count++;
