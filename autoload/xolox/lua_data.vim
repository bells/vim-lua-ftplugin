" Vim auto-load script
" Author: Peter Odding <peter@peterodding.com>
" Last Change: July 6, 2014
" URL: http://peterodding.com/code/vim/lua-ftplugin

" This script contains static user completion data based on the Lua 5.2
" reference manual and implementation.

" Enable line continuation.
let s:cpo_save = &cpo
set cpoptions-=C

" Keywords. {{{1
let g:xolox#lua_data#keywords = [
      \ { 'word': 'and', 'kind': 'k' },
      \ { 'word': 'break', 'kind': 'k' },
      \ { 'word': 'do', 'kind': 'k' },
      \ { 'word': 'else', 'kind': 'k' },
      \ { 'word': 'elseif', 'kind': 'k' },
      \ { 'word': 'end', 'kind': 'k' },
      \ { 'word': 'false', 'kind': 'k' },
      \ { 'word': 'for', 'kind': 'k' },
      \ { 'word': 'function', 'kind': 'k' },
      \ { 'word': 'goto', 'kind': 'k' },
      \ { 'word': 'if', 'kind': 'k' },
      \ { 'word': 'in', 'kind': 'k' },
      \ { 'word': 'local', 'kind': 'k' },
      \ { 'word': 'nil', 'kind': 'k' },
      \ { 'word': 'not', 'kind': 'k' },
      \ { 'word': 'or', 'kind': 'k' },
      \ { 'word': 'repeat', 'kind': 'k' },
      \ { 'word': 'return', 'kind': 'k' },
      \ { 'word': 'then', 'kind': 'k' },
      \ { 'word': 'true', 'kind': 'k' },
      \ { 'word': 'until', 'kind': 'k' },
      \ { 'word': 'while', 'kind': 'k' },
      \ ]

" Global variables. {{{1
let g:xolox#lua_data#globals = [
      \ { 'word': '_G', 'kind': 'v' },
      \ { 'word': '_ENV', 'kind': 'v' },
      \ { 'word': '_VERSION', 'kind': 'v' },
      \ { 'word': 'arg', 'kind': 'v' },
      \ { 'word': 'assert()', 'kind': 'f' },
      \ { 'word': 'bit32', 'kind': 'v' },
      \ { 'word': 'collectgarbage()', 'kind': 'f' },
      \ { 'word': 'coroutine', 'kind': 'v' },
      \ { 'word': 'debug', 'kind': 'v' },
      \ { 'word': 'dofile()', 'kind': 'f' },
      \ { 'word': 'error()', 'kind': 'f' },
      \ { 'word': 'getmetatable()', 'kind': 'f' },
      \ { 'word': 'io', 'kind': 'v' },
      \ { 'word': 'ipairs()', 'kind': 'f' },
      \ { 'word': 'load()', 'kind': 'f' },
      \ { 'word': 'loadfile()', 'kind': 'f' },
      \ { 'word': 'math', 'kind': 'v' },
      \ { 'word': 'next()', 'kind': 'f' },
      \ { 'word': 'os', 'kind': 'v' },
      \ { 'word': 'package', 'kind': 'v' },
      \ { 'word': 'pairs()', 'kind': 'f' },
      \ { 'word': 'pcall()', 'kind': 'f' },
      \ { 'word': 'print()', 'kind': 'f' },
      \ { 'word': 'rawequal()', 'kind': 'f' },
      \ { 'word': 'rawget()', 'kind': 'f' },
      \ { 'word': 'rawlen()', 'kind': 'f' },
      \ { 'word': 'rawset()', 'kind': 'f' },
      \ { 'word': 'require()', 'kind': 'f' },
      \ { 'word': 'select()', 'kind': 'f' },
      \ { 'word': 'setmetatable()', 'kind': 'f' },
      \ { 'word': 'string', 'kind': 'v' },
      \ { 'word': 'table', 'kind': 'v' },
      \ { 'word': 'tonumber()', 'kind': 'f' },
      \ { 'word': 'tostring()', 'kind': 'f' },
      \ { 'word': 'type()', 'kind': 'f' },
      \ { 'word': 'xpcall()', 'kind': 'f' },
      \ ]

" Standard library identifiers. {{{1
let g:xolox#lua_data#library = [
      \ { 'word': 'bit32.arshift()', 'kind': 'f'},
      \ { 'word': 'bit32.band()', 'kind': 'f' },
      \ { 'word': 'bit32.bnot()', 'kind': 'f' },
      \ { 'word': 'bit32.bor()', 'kind': 'f' },
      \ { 'word': 'bit32.btest()', 'kind': 'f' },
      \ { 'word': 'bit32.bxor()', 'kind': 'f' },
      \ { 'word': 'bit32.extract()', 'kind': 'f' },
      \ { 'word': 'bit32.replace()', 'kind': 'f' },
      \ { 'word': 'bit32.lrotate()', 'kind': 'f' },
      \ { 'word': 'bit32.lshift()', 'kind': 'f' },
      \ { 'word': 'bit32.rrotate()', 'kind': 'f' },
      \ { 'word': 'bit32.rshift()', 'kind': 'f' },
      \ { 'word': 'coroutine.create()', 'kind': 'f' },
      \ { 'word': 'coroutine.resume()', 'kind': 'f' },
      \ { 'word': 'coroutine.running()', 'kind': 'f' },
      \ { 'word': 'coroutine.status()', 'kind': 'f' },
      \ { 'word': 'coroutine.wrap()', 'kind': 'f' },
      \ { 'word': 'coroutine.yield()', 'kind': 'f' },
      \ { 'word': 'debug.debug()', 'kind': 'f' },
      \ { 'word': 'debug.gethook()', 'kind': 'f' },
      \ { 'word': 'debug.getinfo()', 'kind': 'f' },
      \ { 'word': 'debug.getlocal()', 'kind': 'f' },
      \ { 'word': 'debug.getmetatable()', 'kind': 'f' },
      \ { 'word': 'debug.getregistry()', 'kind': 'f' },
      \ { 'word': 'debug.getupvalue()', 'kind': 'f' },
      \ { 'word': 'debug.getuservalue()', 'kind': 'f' },
      \ { 'word': 'debug.sethook()', 'kind': 'f' },
      \ { 'word': 'debug.setlocal()', 'kind': 'f' },
      \ { 'word': 'debug.setmetatable()', 'kind': 'f' },
      \ { 'word': 'debug.setupvalue()', 'kind': 'f' },
      \ { 'word': 'debug.setuservalue()', 'kind': 'f' },
      \ { 'word': 'debug.traceback()', 'kind': 'f' },
      \ { 'word': 'debug.upvalueid()', 'kind': 'f' },
      \ { 'word': 'debug.upvaluejoin()', 'kind': 'f' },
      \ { 'word': 'io.close()', 'kind': 'f' },
      \ { 'word': 'io.flush()', 'kind': 'f' },
      \ { 'word': 'io.input()', 'kind': 'f' },
      \ { 'word': 'io.lines()', 'kind': 'f' },
      \ { 'word': 'io.open()', 'kind': 'f' },
      \ { 'word': 'io.output()', 'kind': 'f' },
      \ { 'word': 'io.popen()', 'kind': 'f' },
      \ { 'word': 'io.read()', 'kind': 'f' },
      \ { 'word': 'io.stderr', 'kind': 'm' },
      \ { 'word': 'io.stdin', 'kind': 'm' },
      \ { 'word': 'io.stdout', 'kind': 'm' },
      \ { 'word': 'io.tmpfile()', 'kind': 'f' },
      \ { 'word': 'io.type()', 'kind': 'f' },
      \ { 'word': 'io.write()', 'kind': 'f' },
      \ { 'word': 'math.abs()', 'kind': 'f' },
      \ { 'word': 'math.acos()', 'kind': 'f' },
      \ { 'word': 'math.asin()', 'kind': 'f' },
      \ { 'word': 'math.atan()', 'kind': 'f' },
      \ { 'word': 'math.atan2()', 'kind': 'f' },
      \ { 'word': 'math.ceil()', 'kind': 'f' },
      \ { 'word': 'math.cos()', 'kind': 'f' },
      \ { 'word': 'math.cosh()', 'kind': 'f' },
      \ { 'word': 'math.deg()', 'kind': 'f' },
      \ { 'word': 'math.exp()', 'kind': 'f' },
      \ { 'word': 'math.floor()', 'kind': 'f' },
      \ { 'word': 'math.fmod()', 'kind': 'f' },
      \ { 'word': 'math.frexp()', 'kind': 'f' },
      \ { 'word': 'math.huge', 'kind': 'm' },
      \ { 'word': 'math.ldexp()', 'kind': 'f' },
      \ { 'word': 'math.log()', 'kind': 'f' },
      \ { 'word': 'math.max()', 'kind': 'f' },
      \ { 'word': 'math.min()', 'kind': 'f' },
      \ { 'word': 'math.modf()', 'kind': 'f' },
      \ { 'word': 'math.pi', 'kind': 'm' },
      \ { 'word': 'math.pow()', 'kind': 'f' },
      \ { 'word': 'math.rad()', 'kind': 'f' },
      \ { 'word': 'math.random()', 'kind': 'f' },
      \ { 'word': 'math.randomseed()', 'kind': 'f' },
      \ { 'word': 'math.sin()', 'kind': 'f' },
      \ { 'word': 'math.sinh()', 'kind': 'f' },
      \ { 'word': 'math.sqrt()', 'kind': 'f' },
      \ { 'word': 'math.tan()', 'kind': 'f' },
      \ { 'word': 'math.tanh()', 'kind': 'f' },
      \ { 'word': 'os.clock()', 'kind': 'f' },
      \ { 'word': 'os.date()', 'kind': 'f' },
      \ { 'word': 'os.difftime()', 'kind': 'f' },
      \ { 'word': 'os.execute()', 'kind': 'f' },
      \ { 'word': 'os.exit()', 'kind': 'f' },
      \ { 'word': 'os.getenv()', 'kind': 'f' },
      \ { 'word': 'os.remove()', 'kind': 'f' },
      \ { 'word': 'os.rename()', 'kind': 'f' },
      \ { 'word': 'os.setlocale()', 'kind': 'f' },
      \ { 'word': 'os.time()', 'kind': 'f' },
      \ { 'word': 'os.tmpname()', 'kind': 'f' },
      \ { 'word': 'package.config', 'kind': 'm' },
      \ { 'word': 'package.cpath', 'kind': 'm' },
      \ { 'word': 'package.loaded', 'kind': 'm' },
      \ { 'word': 'package.loadlib()', 'kind': 'f' },
      \ { 'word': 'package.path', 'kind': 'm' },
      \ { 'word': 'package.preload', 'kind': 'm' },
      \ { 'word': 'package.searchers', 'kind': 'm' },
      \ { 'word': 'package.searchpath()', 'kind': 'f' },
      \ { 'word': 'string.byte()', 'kind': 'f' },
      \ { 'word': 'string.char()', 'kind': 'f' },
      \ { 'word': 'string.dump()', 'kind': 'f' },
      \ { 'word': 'string.find()', 'kind': 'f' },
      \ { 'word': 'string.format()', 'kind': 'f' },
      \ { 'word': 'string.gmatch()', 'kind': 'f' },
      \ { 'word': 'string.gsub()', 'kind': 'f' },
      \ { 'word': 'string.len()', 'kind': 'f' },
      \ { 'word': 'string.lower()', 'kind': 'f' },
      \ { 'word': 'string.match()', 'kind': 'f' },
      \ { 'word': 'string.rep()', 'kind': 'f' },
      \ { 'word': 'string.reverse()', 'kind': 'f' },
      \ { 'word': 'string.sub()', 'kind': 'f' },
      \ { 'word': 'string.upper()', 'kind': 'f' },
      \ { 'word': 'table.concat()', 'kind': 'f' },
      \ { 'word': 'table.insert()', 'kind': 'f' },
      \ { 'word': 'table.pack()', 'kind': 'f' },
      \ { 'word': 'table.remove()', 'kind': 'f' },
      \ { 'word': 'table.sort()', 'kind': 'f' },
      \ { 'word': 'table.unpack()', 'kind': 'f' },
      \ { 'word': 'ngx.ctx', 'kind': 'm' },
      \ { 'word': 'ngx.status', 'kind': 'm' },
      \ ]

" Function signatures. {{{1
" Sources:
"  - http://www.lua.org/manual/5.2/manual.html#6
"  - http://smherwig.org/lua/proc/index.html
"  - http://w3.impa.br/~diego/software/luasocket/reference.html
let g:xolox#lua_data#signatures = {
      \ 'assert': 'assert(v [, message])',
      \ 'collectgarbage': 'collectgarbage([opt [, arg]])',
      \ 'dofile': 'dofile([filename])',
      \ 'error': 'error(message [, level])',
      \ 'getmetatable': 'getmetatable(object)',
      \ 'ipairs': 'ipairs(t)',
      \ 'load': 'load(ld [, source [, mode [, env]]])',
      \ 'loadfile': 'loadfile([filename [, mode [, env]]])',
      \ 'next': 'next(table [, index])',
      \ 'pairs': 'pairs(t)',
      \ 'pcall': 'pcall(f [, arg1, ...])',
      \ 'print': 'print(...)',
      \ 'rawequal': 'rawequal(v1, v2)',
      \ 'rawget': 'rawget(table, index)',
      \ 'rawlen': 'rawlen(v)',
      \ 'rawset': 'rawset(table, index, value)',
      \ 'select': 'select(index, ...)',
      \ 'setmetatable': 'setmetatable(table, metatable)',
      \ 'tonumber': 'tonumber(e [, base])',
      \ 'tostring': 'tostring(v)',
      \ 'type': 'type(v)',
      \ 'xpcall': 'xpcall(f, msgh [, arg1, ...])',
      \ 'coroutine.create': 'coroutine.create(f)',
      \ 'coroutine.resume': 'coroutine.resume(co [, val1, ...])',
      \ 'coroutine.running': 'coroutine.running()',
      \ 'coroutine.status': 'coroutine.status(co)',
      \ 'coroutine.wrap': 'coroutine.wrap(f)',
      \ 'coroutine.yield': 'coroutine.yield(...)',
      \ 'require': 'require(modname)',
      \ 'package.loadlib': 'package.loadlib(libname, funcname)',
      \ 'package.searchpath': 'package.searchpath(name, path [, sep [, rep]])',
      \ 'string.byte': 'string.byte(s [, i [, j]])',
      \ 'string.char': 'string.char(...)',
      \ 'string.dump': 'string.dump(function)',
      \ 'string.find': 'string.find(s, pattern [, init [, plain]])',
      \ 'string.format': 'string.format(formatstring, ...)',
      \ 'string.gmatch': 'string.gmatch(s, pattern)',
      \ 'string.gsub': 'string.gsub(s, pattern, repl [, n])',
      \ 'string.len': 'string.len(s)',
      \ 'string.lower': 'string.lower(s)',
      \ 'string.match': 'string.match(s, pattern [, init])',
      \ 'string.rep': 'string.rep(s, n [, sep])',
      \ 'string.reverse': 'string.reverse(s)',
      \ 'string.sub': 'string.sub(s, i [, j])',
      \ 'string.upper': 'string.upper(s)',
      \ 'table.concat': 'table.concat(table [, sep [, i [, j]]])',
      \ 'table.insert': 'table.insert(table, [pos,] value)',
      \ 'table.pack': 'table.pack(...)',
      \ 'table.remove': 'table.remove(table [, pos])',
      \ 'table.sort': 'table.sort(table [, comp])',
      \ 'table.unpack': 'table.unpack(list [, i [, j]])',
      \ 'math.abs': 'math.abs(x)',
      \ 'math.acos': 'math.acos(x)',
      \ 'math.asin': 'math.asin(x)',
      \ 'math.atan': 'math.atan(x)',
      \ 'math.atan2': 'math.atan2(y, x)',
      \ 'math.ceil': 'math.ceil(x)',
      \ 'math.cos': 'math.cos(x)',
      \ 'math.cosh': 'math.cosh(x)',
      \ 'math.deg': 'math.deg(x)',
      \ 'math.exp': 'math.exp(x)',
      \ 'math.floor': 'math.floor(x)',
      \ 'math.fmod': 'math.fmod(x, y)',
      \ 'math.frexp': 'math.frexp(x)',
      \ 'math.ldexp': 'math.ldexp(m, e)',
      \ 'math.log': 'math.log(x [, base])',
      \ 'math.max': 'math.max(x, ...)',
      \ 'math.min': 'math.min(x, ...)',
      \ 'math.modf': 'math.modf(x)',
      \ 'math.pow': 'math.pow(x, y)',
      \ 'math.rad': 'math.rad(x)',
      \ 'math.random': 'math.random([m [, n]])',
      \ 'math.randomseed': 'math.randomseed(x)',
      \ 'math.sin': 'math.sin(x)',
      \ 'math.sinh': 'math.sinh(x)',
      \ 'math.sqrt': 'math.sqrt(x)',
      \ 'math.tan': 'math.tan(x)',
      \ 'math.tanh': 'math.tanh(x)',
      \ 'bit32.arshift': 'bit32.arshift(x, disp)',
      \ 'bit32.band': 'bit32.band(expr)',
      \ 'bit32.bnot': 'bit32.bnot(x)',
      \ 'bit32.bor': 'bit32.bor(expr)',
      \ 'bit32.btest': 'bit32.btest(expr)',
      \ 'bit32.bxor': 'bit32.bxor(expr)',
      \ 'bit32.extract': 'bit32.extract(n, field [, width])',
      \ 'bit32.replace': 'bit32.replace(n, v, field [, width])',
      \ 'bit32.lrotate': 'bit32.lrotate(x, disp)',
      \ 'bit32.lshift': 'bit32.lshift(x, disp)',
      \ 'bit32.rrotate': 'bit32.rrotate(x, disp)',
      \ 'bit32.rshift': 'bit32.rshift(x, disp)',
      \ 'io.close': 'io.close([file])',
      \ 'io.flush': 'io.flush()',
      \ 'io.input': 'io.input([file])',
      \ 'io.lines': 'io.lines([filename ...])',
      \ 'io.open': 'io.open(filename [, mode])',
      \ 'io.output': 'io.output([file])',
      \ 'io.popen': 'io.popen(prog [, mode])',
      \ 'io.read': 'io.read(...)',
      \ 'io.tmpfile': 'io.tmpfile()',
      \ 'io.type': 'io.type(obj)',
      \ 'io.write': 'io.write(...)',
      \ 'file:close': 'file:close()',
      \ 'file:flush': 'file:flush()',
      \ 'file:lines': 'file:lines(...)',
      \ 'file:read': 'file:read(...)',
      \ 'file:seek': 'file:seek([whence [, offset]])',
      \ 'file:setvbuf': 'file:setvbuf(mode [, size])',
      \ 'file:write': 'file:write(...)',
      \ 'os.clock': 'os.clock()',
      \ 'os.date': 'os.date([format [, time]])',
      \ 'os.difftime': 'os.difftime(t2, t1)',
      \ 'os.execute': 'os.execute([command])',
      \ 'os.exit': 'os.exit([code [, close])',
      \ 'os.getenv': 'os.getenv(varname)',
      \ 'os.remove': 'os.remove(filename)',
      \ 'os.rename': 'os.rename(oldname, newname)',
      \ 'os.setlocale': 'os.setlocale(locale [, category])',
      \ 'os.time': 'os.time([table])',
      \ 'os.tmpname': 'os.tmpname()',
      \ 'debug.debug': 'debug.debug()',
      \ 'debug.gethook': 'debug.gethook([thread])',
      \ 'debug.getinfo': 'debug.getinfo([thread,] f [, what])',
      \ 'debug.getlocal': 'debug.getlocal([thread,] f, local)',
      \ 'debug.getmetatable': 'debug.getmetatable(value)',
      \ 'debug.getregistry': 'debug.getregistry()',
      \ 'debug.getupvalue': 'debug.getupvalue(f, up)',
      \ 'debug.getuservalue': 'debug.getuservalue(u)',
      \ 'debug.sethook': 'debug.sethook([thread,] hook, mask [, count])',
      \ 'debug.setlocal': 'debug.setlocal([thread,] level, local, value)',
      \ 'debug.setmetatable': 'debug.setmetatable(value, table)',
      \ 'debug.setupvalue': 'debug.setupvalue(f, up, value)',
      \ 'debug.setuservalue': 'debug.setuservalue(udata, value)',
      \ 'debug.traceback': 'debug.traceback([thread,] [message [, level]])',
      \ 'debug.upvalueid': 'debug.upvalueid(f, n)',
      \ 'debug.upvaluejoin': 'debug.upvaluejoin(f1, n1, f2, n2)',
      \
      \ 'proc.kill': 'proc.kill(pid, [signal])',
      \ 'proc.killall': 'proc.killall(name, [signal])',
      \ 'proc.list': 'proc.list()',
      \ 'proc.pidof': 'proc.pidof(name)',
      \
      \ 'ftp.get': 'ftp.get(url)',
      \ 'ftp.put': 'ftp.put(url, content)',
      \ 'http.request': 'http.request(url [, body])',
      \ 'ltn12.filter.chain': 'ltn12.filter.chain(filter1, filter2 [, ... filterN])',
      \ 'ltn12.filter.cycle': 'ltn12.filter.cycle(low [, ctx, extra])',
      \ 'ltn12.pump.all': 'ltn12.pump.all(source, sink)',
      \ 'ltn12.pump.step': 'ltn12.pump.step(source, sink)',
      \ 'ltn12.sink.chain': 'ltn12.sink.chain(filter, sink)',
      \ 'ltn12.sink.error': 'ltn12.sink.error(message)',
      \ 'ltn12.sink.file': 'ltn12.sink.file(handle, message)',
      \ 'ltn12.sink.simplify': 'ltn12.sink.simplify(sink)',
      \ 'ltn12.sink.table': 'ltn12.sink.table([table])',
      \ 'ltn12.source.cat': 'ltn12.source.cat(source1 [, source2, ..., sourceN])',
      \ 'ltn12.source.chain': 'ltn12.source.chain(source, filter)',
      \ 'ltn12.source.empty': 'ltn12.source.empty()',
      \ 'ltn12.source.error': 'ltn12.source.error(message)',
      \ 'ltn12.source.file': 'ltn12.source.file(handle, message)',
      \ 'ltn12.source.simplify': 'ltn12.source.simplify(source)',
      \ 'ltn12.source.string': 'ltn12.source.string(string)',
      \ 'mime.decode': "mime.decode('base64' or 'quoted-printable')",
      \ 'mime.encode': "mime.encode('base64' or 'quoted-printable' [, mode])",
      \ 'mime.normalize': 'mime.normalize([marker])',
      \ 'mime.wrap': "mime.wrap('base64' or 'quoted-printable' or 'text' [, length])",
      \ 'smtp.message': 'smtp.message(mesgt)',
      \ 'socket.bind': 'socket.bind(address, port [, backlog])',
      \ 'socket.connect': 'socket.connect(address, port [, locaddr, locport])',
      \ 'socket.newtry': 'socket.newtry(finalizer)',
      \ 'socket.protect': 'socket.protect(func)',
      \ 'socket.select': 'socket.select(recvt, sendt [, timeout])',
      \ 'socket.sink': 'socket.sink(mode, socket)',
      \ 'socket.skip': 'socket.skip(d [, ret1, ret2 ... retN])',
      \ 'socket.sleep': 'socket.sleep(time)',
      \ 'socket.source': 'socket.source(mode, socket [, length])',
      \ 'socket.gettime': 'socket.gettime()',
      \ 'socket.dns.gethostname': 'socket.dns.gethostname()',
      \ 'socket.dns.tohostname': 'socket.dns.tohostname(address)',
      \ 'socket.dns.toip': 'socket.dns.toip(address)',
      \ 'socket.try': 'socket.try(ret1 [, ret2 ... retN])',
      \ 'url.absolute': 'url.absolute(base, relative)',
      \ 'url.build': 'url.build(parsed_url)',
      \ 'url.build_path': 'url.build_path(segments, unsafe)',
      \ 'url.escape': 'url.escape(content)',
      \ 'url.parse': 'url.parse(url, default)',
      \ 'url.parse_path': 'url.parse_path(path)',
      \ 'url.unescape': 'url.unescape(content)' }

" }}}

" Restore compatibility options.
let &cpo = s:cpo_save
unlet s:cpo_save

" vim: ts=2 sw=2 et
