local KEYSYS = {}

local keydata = game:HttpGet("https://dev-xploitsds.pantheonsite.io/wp-json/wp/v2/pages/164")

local test = false

function KEYSYS:Init(xponent)
	local keycorrect = false

	if isfile("xploit-key.txt") and readfile("xploit-key.txt") == string.sub(xponent.Services.HTTP_S:JSONDecode(keydata).content.rendered,4,35) and not test then 
		return true
    else
		local keywindow = xponent:Window("Key System", "rbxassetid://6031082533", nil)
		local keytab = keywindow:Tab("Main", "rbxassetid://6031082533")

		local container = keytab:Container("Please read...", true, false)
		local label = keytab:Label("Before you proceed, please take a short moment to support the script maker by completing the key system. It will only takes around a few minutes but the key will last for the rest of the day!")
		container:Add(label)

		local input = keytab:Textbox("Input key here!")
		local submit = keytab:Button("Submit key", function()
			if input.Text == string.sub(xponent.Services.HTTP_S:JSONDecode(keydata).content.rendered,4,35) then
				keycorrect = true
				writefile("xploit-key.txt",input.Text)
				xponent:Notify("Thank you for your time!", "Enjoy the script!", 5)
				keywindow:Close()
			else
				xponent:Notify("Key is incorrect or has expired!", "Please try again!", 5)
			end
		end)

		keytab:Label("Below is the link to the first checkpoint")
		keytab:Textbox("checkpoint link", nil, "https://lootdest.org/s?00efc826", false, true, "You can click the copy button or manually select the link and copy it.")

		repeat wait() until keycorrect
        print("key correct")
        return true
	end
end

--KEYSYS:CheckKey()

return KEYSYS
