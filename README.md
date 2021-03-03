# polyfill.lua

> NOTE: While this project is experimental, Issues and Pull-requests are welcome to improve this project!

### Brief

Polyfills for Lua and LuaJIT in one file!

`polyfill.lua` Polyfills Lua modules (Except `debug` and `coroutine`) and also provides backward compatibility for old Lua versions!

> NOTE: Most modules polyfills requires FFI (Install `luaffi` or use LuaJIT instead...)

### Modules

- `ffi` module
- Standard Functions
- `table` module
- `os` module
- `math` module
- `io` module
- `bit` module
- `bit32` module
- `string` module

> NOTE: Check [API](https://github.com/Rabios/polyfill.lua/blob/master/api.md) for list of available polyfills!

### Usage

Download [`polyfill.lua`](https://github.com/Rabios/polyfill.lua/raw/master/polyfill.lua) and include it into your project!

```lua
local polyfill = require("polyfill")       --> Load the polyfills for Lua

-- Example
print(table.unpack({ 1, 2, 3, 4, 5, 6 }))  --> Use table.unpack (If you use LuaJIT this function is polyfilled)
```

### Installing with cherry

You could install `polyfill.lua` as [cherry](https://github.com/Rabios/cherry) package!

```
cherry add Rabios/polyfill.lua D:\cherry-proj
```

### Resources

I got some inspiration from these projects when worked on `polyfill.lua` on my own!

1. [Lua reference manuals](https://www.lua.org/manual)
2. [lua-users wiki](http://lua-users.org/wiki)
3. [Programming in Lua](https://www.lua.org/pil)
4. [davidm/lua-bit-numberlua](https://github.com/davidm/lua-bit-numberlua), Bitwise operators in pure Lua using Lua numbers.
5. [kaeza/lua-bitty](https://github.com/kaeza/lua-bitty), Bitwise operations in pure Lua.
6. [SoniEx2/liolib.lua](https://gist.github.com/SoniEx2/78d81eea571fcd2c84d7), JIT-able reimplementation of Lua's I/O library.

> NOTE: I didn't copypasted all codes from resources mentioned, Most of them are written by me on my own!

### License

```
MIT License

Copyright (c) 2021 - 2022 Rabia Alhaffar

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.  IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
```
