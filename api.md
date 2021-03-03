# API

Here is the list of available polyfilled Lua stuff!

- [ffi](#ffi)
- [Standard Functions](#standard-functions)
- [table](#table)
- [os](#os)
- [math](#math)
- [io](#io)
- [bit](#bit)
- [bit32](#bit32)
- [string](#string)

## module: ffi

```lua
-- Variables
ffi.arch
ffi.os

-- Functions
ffi.string(s)
```

> NOTE 1: `ffi.os` requires LuaJIT for `jit` module!

> NOTE 2: `ffi.string` requires FFI!

## module: Standard Functions

```lua
-- Functions
select(n, ...)
error(msg)
print(...)
next(t, k)
tostring(n)
tonumber(s)
ipairs(t)
pairs(t)
assert(v, msg)
loadfile(src)
loadstring(str)
dofile(src)
rawlen(t)
rawget(t, i)
rawset(t, i, v)
rawequal(t1, t2)
pcall(f, ...)
xpcall
require(mod)
```

> NOTE: `tonumber(s)` requires FFI!

### Backward Compatibility

```lua
-- Functions
getglobal(var)
setglobal(var, val)
rawgetglobal(var)
rawsetglobal(var, val)
globals(t)
newtag()
setfallback(fname, f)
_ALERT(msg)
nextvar(name)
foreach(t, f)
foreachi(t, f)
foreachvar(f)
gcinfo()
settag(t, tag)
dostring(str)
loadlib(lib, fname)
copytagmethods(from, to)
gettagmethod(tag, method)
settagmethod(tag, method, newmethod)
call(f, ...)
setenv(t)
getinfo(t, f, w)
getlocal(t, f, l)
setlocal(t, level, local, v)
getlinehook(t)
setlinehook(t, h, m, c)
rawgettable(t, i)
rawsettable(t, i, v)
```

## module: table

```lua
-- Functions
table.insert(t, i, v)
table.remove(t, i)
table.concat(t, sep)
table.unpack(t, i)
table.pack(...)
table.move(t1, f, e, t, t2)
table.sort(t, f)
```

### Backward Compatibility

```lua
-- Functions
tinsert(t, i, v)
tremove(t, i)
unpack(t, i)
sort(t, f)
table.getn(t)
getn(t)
table.setn(t, n)
table.maxn(t)
table.foreach(t, f)
table.foreachi(t, f)
```

## module: os

```lua
-- Functions
os.time()
os.execute(cmd)
os.exit(code)
os.rename(old_fname, new_fname)
os.remove(fname)
os.setlocale(v)
os.getenv(v)
os.difftime(t1, t2)
os.tmpname(str)
os.date(format)
os.clock()
```

### Backward Compatibility

```lua
-- Functions
execute(cmd)
exit(code)
rename(old_fname, new_fname)
remove(fname)
setlocale(v)
getenv(v)
date(format)
clock()
```

> NOTE: `os` module fully requires FFI!

## module: math

```lua
-- Variables
math.pi
math.mininteger
math.maxinteger
math.huge

-- Functions
math.sqrt(n)
math.sinh(n)
math.cosh(n)
math.tanh(n)
math.asin(n)
math.acos(n)
math.atan(n [, m])
math.atan2(n, m)
math.exp(n)
math.log(n)
math.log10(n)
math.ldexp(n, m)
math.frexp(n, m)
math.modf(n, m)
math.mod(n, m)
math.fmod(n, m)
math.pow(n, m)
math.abs(n)
math.deg(n)
math.rad(n)
math.min(n, m)
math.max(n, m)
math.tointeger(n)
math.hypot(n, m)
math.sin(n)
math.cos(n)
math.tan(n)
math.ult(n, m)
math.ceil(n)
math.round(n)
math.floor(n)
math.randomseed(n)
math.random([n [, m]])
```

### Backward Compatibility

```lua
-- Variables
PI

-- Functions
sqrt(n)
asin(n)
acos(n)
atan(n [, m])
atan2(n, m)
exp(n)
log(n)
log10(n)
ldexp(n, m)
frexp(n, m)
mod(n, m)
abs(n)
deg(n)
rad(n)
min(n, m)
max(n, m)
sin(n)
cos(n)
tan(n)
ceil(n)
round(n)
floor(n)
randomseed(n)
random([n [, m]])
```

### FFI-required Functions

```lua
-- Functions
math.sqrt(n)
math.sinh(n)
math.cosh(n)
math.tanh(n)
math.atan(n [, m])
math.atan2(n, m)
math.exp(n)
math.log(n)
math.log10(n)
math.ldexp(n, m)
math.frexp(n, m)
math.modf(n, m)
math.mod(n, m)
math.fmod(n, m)
math.pow(n, m)
math.tointeger(n)
math.hypot(n, m)
math.sin(n)
math.tan(n)
math.ult(n, m)
math.ceil(n)
math.round(n)
math.floor(n)
math.randomseed(n)
math.random([n [, m]])
```

### module: io

```lua
-- Functions
io.tmpfile()
io.open(f, m)
io.write(f, ...)
io.seek(f, w, o)
io.read(...)
io.close(f)
io.flush([f])
io.type(f)
io.input(f)
io.output(f)
io.popen(c, m)
io.lines(f)
```

#### `file` constructor

```lua
-- Functions
file:close()
file:flush()
file:seek(w, o)
file:read(t)
file:write(...)
file:setvbuf(m, s)
file:lines()
```

#### Backward Compatibility

```lua
-- Functions
tmpfile()
openfile(f, m)
write(f, ...)
seek(f, w, o)
readfrom(...)
closefile(f)
flush([f])
readfrom(f)
writeto(f)
```

> NOTE: `io` module fully requires FFI

### module: bit32

```lua
-- Functions
bit32.band(a, b)
bit32.bor(a, b)
bit32.bnot(a)
bit32.lshift(a, n)
bit32.rshift(a, n)
bit32.arshift(a, n)
bit32.bxor(a, n)
bit32.btest(a, n)
bit32.lrotate(a, n)
bit32.rrotate(a, n)
bit32.extract(a, b, c)
bit32.replace(a, b, c, d)
```

### module: bit

```lua
-- Functions
bit.band(a, b)
bit.bor(a, b)
bit.bnot(a)
bit.lshift(a, n)
bit.rshift(a, n)
bit.arshift(a, n)
bit.bxor(a, n)
bit.rol(a, n)
bit.ror(a, n)
bit.bswap(b)
bit.tobit(n)
bit.tohex(a, n)
```

### module: string

```lua
-- Functions
string.split(s, sep)
string.rep(s, n, sep)
string.len(s)
string.byte(s, i)
string.char(...)
string.upper(s)
string.lower(s)
string.pack(f, ...)
string.unpack(f, s, o)
string.packsize(str)
string.sub(s, f, t)
string.format(...)
string.match(s1, s2, init)
string.gmatch(s1, s2)
string.find(s1, s2, init)
string.gfind(s1, s2)
```

#### FFI-required Functions

```lua
-- Functions
string.byte(s, i)
string.char(...)
string.upper(s)
string.lower(s)
string.pack(f, ...)
string.unpack(f, s, o)
string.packsize(str)
string.sub(s, f, t)
string.format(...)
string.match(s1, s2, init)
string.gmatch(s1, s2)
string.find(s1, s2, init)
string.gfind(s1, s2)
```

#### Backward Compatibility

```lua
-- Functions
strrep(s, n, sep)
strlen(s)
strbyte(s, i)
strchar(...)
strupper(s)
strlower(s)
strsub(s, f, t)
format(...)
strfind(s1, s2, init)
```
