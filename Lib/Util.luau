--[=[
	@class Util
	Module which has some util functions.
]=]

--[=[
	Tiny helper that makes repeated code (e.g. param or default) more readable and type-safe,
	especially with generics

	@within Util
	@function DefaultParam<T>
	@param param T -- The paramater that was passed
	@param default T -- The value to set if nothing was passed
	@return T -- The new value of the paramater
]=]
local function DefaultParam<T>(param: T?, default: T)
	if param == nil then
		return default
	end

	return param
end

--[=[
	Helper function to quickly assert that a given variable is of the expected type, throws
	if its the wrong type with a nice error message but the message can be changed if needed.

	@within Util
	@param value any -- The value to check
	@param expected string -- The type that `Value` should be
	@param errorMessage string? -- Optional: override default error message
]=]
local function AssertType(value: any, expected: string, errorMessage: string?)
	errorMessage = DefaultParam(errorMessage, `Invalid type, expected "{expected}" but got "{type(value)}"`)
	assert(type(value) == expected, errorMessage)
end

local exports = {
	DefaultParam = DefaultParam,
	AssertType = AssertType,
}
return exports
