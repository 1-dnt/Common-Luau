return function(str)
	local hash = 2166136261
	for i = 1, #str do
		hash = bit32.band((bit32.bxor(hash, string.byte(str, i)) * 16777619), 0xFFFFFFFF)
	end

	return hash
end
