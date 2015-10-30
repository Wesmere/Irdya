ilevel = 0
indent = (a, b)->
  steps, fn = if b
    a, b
  else
    1, a
  ilevel += steps
  fn!
  ilevel -= steps
writeindent = -> io.write "   "\rep ilevel

debug.write = =>
  visited = {}
  _write = =>
    if type(self) == 'table' and not visited[self]
      if not (@@ and @@__name and not @__tostring)
        visited[self] = true
        print "{"
        for k, v in pairs self
          indent ->
            writeindent!
            _write k
            io.write ': '
            _write v
            print!
        writeindent!
        _write "}"
      elseif @__tostring
        io.write @__tostring!
      else
        io.write @@__name
    else
      io.write tostring self
  _write self

debug.print = (...)->
  remaining = #{...}
  for arg in *{...}
    remaining -= 1
    debug.write arg
    io.write ', ' unless remaining == 0
  print!

{ write: debug.write, print: debug.print }
