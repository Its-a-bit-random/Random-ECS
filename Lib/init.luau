local function SayHello(target: string)
	return `Hello {target}!`
end

return {
	SayHello = SayHello,
}
