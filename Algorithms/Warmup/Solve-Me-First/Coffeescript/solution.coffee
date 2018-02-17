readLine = ->
  input_stdin_array[input_currentline++]

#///////////// ignore above this line ////////////////////

solveMeFirst = (a, b) ->
  # Hint: Type return a+b below   
  return a+b

main = ->
  # write your code here.
  # call `readLine()` to read a line.
  # use console.log() to write to stdout
  a = parseInt(readLine())
  b = parseInt(readLine())
  res = solveMeFirst(a, b)
  console.log res
  return

process.stdin.resume()
process.stdin.setEncoding 'ascii'
input_stdin = ''
input_stdin_array = ''
input_currentline = 0
process.stdin.on 'data', (data) ->
  input_stdin += data
  return
process.stdin.on 'end', ->
  input_stdin_array = input_stdin.split('\n')
  main()
  return
