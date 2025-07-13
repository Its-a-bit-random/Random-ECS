--[=[
	@class Logger
	Internal logger

	:::tip
	You can override the default print/warn functions by doing:
	```lua
	local Logger = require(path.to.logger)
	local print, warn = Logger.Log, Logger.Warn
	```
	:::
]=]

--[=[
	Log function which checks if `_G.__RE_LOGGING__` is true before printing. Also adds
	a prefix to all log messages.

	@within Logger
	@param ... -- Things to print
]=]
local function Log(...: any)
	if _G.__RE_LOGGING__ == true then
		print("[RANDOM-ECS]", ...)
	end
end
--[=[
	Warn function which does the same as [Logger.Log] but with a `warn` call instead of `print`.

	@within Logger
	@param ... -- Things to warn
]=]
local function Warn(...: any)
	if _G.__RE_LOGGING__ == true then
		warn("[RANDOM_ECS]", ...)
	end
end

local exports = {
	Log = Log,
	Warn = Warn,
}
return exports
