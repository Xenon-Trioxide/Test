local CONTEXTACTION_S = game:GetService("ContextActionService")
local USERINPUT_S = game:GetService("UserInputService")
local module = {
	ActiveKeybind = {}
}

function module:SetupKeybind(actionname: string, input: Enum.KeyCode, data: {}, callback: any, callbackend: any, autotoggle: boolean, requirements : {})
	CONTEXTACTION_S:BindAction(actionname, function(actionname, inputstate, inputobject)
		task.spawn(function()
			for i,v in ipairs(requirements or {}) do
				if not module.ActiveKeybind[v] then
					return
				end
			end
			if inputstate == Enum.UserInputState.Begin then
				if autotoggle then module.ActiveKeybind[actionname] = true end
				if callback then callback(data) end
			elseif inputstate == Enum.UserInputState.End and (callbackend or autotoggle) then
				if autotoggle then module.ActiveKeybind[actionname] = false end
				if callbackend then callbackend(data) end
			end
		end)
		return Enum.ContextActionResult.Pass
	end, false, input)
	
	--local activeaction = module.ActiveKeybind[actionname]
	--[[
	function activeaction:PressBegin()
		if autotoggle then module.ActiveKeybind[actionname] = true end
		callback(data)
	end
	
	function activeaction:PressEnd()
		if autotoggle then module.ActiveKeybind[actionname] = false end
		callbackend(data)
	end]]
end

function module:RemoveKeybind(actionname: string)
	CONTEXTACTION_S:UnbindAction(actionname)
end

function module:LockMouse()
	USERINPUT_S.MouseBehavior = Enum.MouseBehavior.LockCenter
	USERINPUT_S.MouseIconEnabled = false
end

function module:UnlockMouse()
	USERINPUT_S.MouseBehavior = Enum.MouseBehavior.Default
	USERINPUT_S.MouseIconEnabled = true
end

return module
