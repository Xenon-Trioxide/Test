local function caesarCipher(text, set, shift, encode)
	local result = ""

	if not encode then
		shift = -shift
	end

	for i = 1, #text do
		local char = text:sub(i, i)
		local index = set:find(char, 1, true)

		if index then
			local newIndex = ((index - 1 + shift) % #set) + 1
			result = result .. set:sub(newIndex, newIndex)
		else
			result = result .. char
		end
	end

	return result
end

local function letterswap(text)
	local result = ""
	for i = 1, #text do
		if i % 2 == 1 then
			result = result .. text:sub(i + 1, i + 1)
		else
			result = result .. text:sub(i - 1, i - 1)
		end
	end
	return result
end

-- Example usage
local charSet = "XP-AntiDumper420:zMLxThVo3YaOS1jJQ78bB@.fgldc69/ZNWI_5yKqkvwFRUGEsHC"
local originalText = "https://www.youtube.com/"
-- Encode
local encodedset = letterswap(charSet)
local encode = caesarCipher(originalText, encodedset, 25, true) 

print("Encoded:", encode)
print("Key:", charSet)
setclipboard(encode)


-- Decode
--local encodedset = caesarCipher(charSet, charSet, 8, true)
local decode = caesarCipher(encode, encodedset, 25, false)

print("")

print("Decoded:", decode)
print("Original", originalText)
