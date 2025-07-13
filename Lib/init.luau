--[=[
	@class RandomECS
	The entry point of the package.
]=]

local function SayHello(target: string)
	return `Hello {target}!`
end

return {
	SayHello = SayHello,
}
