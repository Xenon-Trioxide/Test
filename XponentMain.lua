if _G["29814129401249"] and _G[tostring(_G["29814129401249"])] then
	return _G[tostring(_G["29814129401249"])]
end


local randomizer = math.random(10000000000000,99999999999999)
local XPONENT = {
	Events = {},
	Services = {
		RUN_S = game:GetService("RunService"),
		TWEEN_S = game:GetService("TweenService"),
		USERINPUT_S = game:GetService("UserInputService"),
		HTTP_S = game:GetService("HttpService"),
		TP_S = game:GetService("TeleportService"),
		VIM_S = game:GetService("VirtualInputManager")
	},
	Modules = {
		INPUT_M = loadstring(game:HttpGet('https://raw.githubusercontent.com/Xenon-Trioxide/Test/refs/heads/Dev/Modules/Input.lua'))(),
		GUIINIT_M = loadstring(game:HttpGet('https://raw.githubusercontent.com/Xenon-Trioxide/Test/refs/heads/Dev/Modules/GuiInit.lua'))()
	},
	Misc = {}
}
local storage = script.Parent

local plr = game.Players.LocalPlayer
local mouse = plr:GetMouse()
local mousetoggle = false
local currentid = 1
local screensize = workspace.CurrentCamera.ViewportSize

local functionkeys = {"RightAlt","LeftShift","RightShift","LeftControl","RightControl"}

if not string.find(plr.Name,"Xploit") then
	setclipboard("https://www.youtube.com/@Xploitsds")
end

-- initiate the UI menu if it wasnt already

function CheckMobile()
	if XPONENT.Services.USERINPUT_S.MouseEnabled and not XPONENT.Services.USERINPUT_S.TouchEnabled then
		return false
	else return true end
end

local menu = nil
local screenparent = game.CoreGui
if get_hidden_gui or gethui then
	local hiddenui = get_hidden_gui or gethui
	screenparent = hiddenui()
elseif game.CoreGui:FindFirstChild('RobloxGui') then
	screenparent = game.CoreGui.RobloxGui
end
menu = XPONENT.Modules.GUIINIT_M:CreateMain(screenparent)

-- initiate the keybind
for i,v in ipairs(functionkeys) do
	XPONENT.Modules.INPUT_M:SetupKeybind(v, Enum.KeyCode[v], {}, nil, nil, true)
end
XPONENT.Modules.INPUT_M:SetupKeybind("LeftAlt", Enum.KeyCode.LeftAlt, {}, function()
	XPONENT:ToggleMenu(true)
end, function()
	XPONENT:ToggleMenu(false)
end)

-- Properties
XPONENT["Instance"] = menu
XPONENT["MenuState"] = false
XPONENT["IsMobile"] = CheckMobile()
XPONENT["Windows"] = {}
XPONENT["Scale"] = math.min(screensize.X, screensize.Y)/1080
if XPONENT["IsMobile"] then
	XPONENT["Scale"] = (math.min(screensize.X, screensize.Y)/1080)*2
end
menu.Container.Menu.UIScale.Scale = XPONENT["Scale"]/1.5
menu.Container.NotificationTab.UIScale.Scale = XPONENT["Scale"]



-- Methods

function XPONENT:Notify(title : string, content : string, duration : number)
	local notification = XPONENT.Modules.GUIINIT_M:CreateNotification(menu.Container.NotificationTab)
	notification.Title.Text = title
	notification.Body.Text = content or ""

	-- notification animation
	local height = 50
	if content then
		height = 100
	end
	notification.Size = UDim2.new(0,0,0,height)
	XPONENT.Services.TWEEN_S:Create(notification, TweenInfo.new(0.2, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut), {Size = UDim2.new(1,0,0,height)}):Play()
	local countdown = XPONENT.Services.TWEEN_S:Create(notification.Frame.Frame, TweenInfo.new(duration or 1, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {Size = UDim2.new(0,0,1,0)})
	countdown:Play()
	local function CloseNotification()
		XPONENT.Services.TWEEN_S:Create(notification, TweenInfo.new(0.5, Enum.EasingStyle.Cubic, Enum.EasingDirection.InOut), {Size = UDim2.new(0,0,0,height)}):Play()
		wait(0.5)
		notification:Destroy()
	end
	notification.Close.Activated:Connect(function()
		CloseNotification()
	end)
	task.spawn(function()
		countdown.Completed:Wait()
		CloseNotification()
	end)

end

function XPONENT.Misc:InitInfo(element : any, infotext : string, infoparent : any)
	local infowindow = nil
	local info = infoparent or element["Instance"]
	element["Info"] = infotext or ""
	if infotext then
		info.Info.Visible = true
	else
		info.Info.Visible = false
	end

	function element:SetInfo(newinfo : string)
		if newinfo then
			info.Info.Visible = true
			element["Info"] = newinfo
		else
			info.Info.Visible = false
		end
	end

	return info.Info.Activated:Connect(function()
		if infowindow then
			infowindow:Destroy()
			infowindow = nil
		else
			infowindow = XPONENT.Modules.GUIINIT_M:CreateInfo(menu.Container.Infos)
			infowindow.UIScale.Scale = XPONENT["Scale"]
			if XPONENT["IsMobile"] then
				infowindow.AnchorPoint = Vector2.new(1,0)
				infowindow.Transparency = 0.5
				infowindow.Position = UDim2.new(0,mouse.X,0,mouse.Y - 15)
			else
				infowindow.Position = UDim2.new(0,mouse.X + 20,0,mouse.Y + 15)
			end

			infowindow.TextLabel.Text = element["Info"]
		end
	end)
end

function XPONENT.Misc:DragElement(container : GuiObject)
	local x,y = mouse.X,mouse.Y
	local oldpos = container.Position
	local loop = XPONENT.Services.RUN_S.RenderStepped:Connect(function()
		container.Position = UDim2.new(0, mouse.X - x + oldpos.X.Offset, 0, mouse.Y - y + oldpos.Y.Offset)
	end)
	repeat task.wait() until not mousetoggle
	loop:Disconnect()
end

function XPONENT.Misc:CopyText(text : string)
	setclipboard(text)
	XPONENT:Notify("Copied to clipboard!", nil, 5)
end

--[[function XPONENT.Misc:InitKeybind(WINDOW : any, element : any, keybindobject : GuiButton, key : Enum.KeyCode, callback : any)
	local actionname = WINDOW["Title"]..tostring(WINDOW["CurrentId"])
	WINDOW["CurrentId"] += 1
	
	XPONENT.Modules.INPUT_M:SetupKeybind(actionname, key, {},)
	
	function element:SetKeybind(newkeybind)
		WINDOW.Misc.CurrentKeybindEdit = keybindobject
		repeat task.wait() until WINDOW.Misc.LatestKeybindData["Ready"]
		
		XPONENT.Modules.INPUT_M:SetupKeybind(actionname, WINDOW.Misc.LatestKeybindData.Key, {},)
	end
	
	
	return XPONENT.Services.RUN_S.RenderStepped:Connect(function()
		if XPONENT.Modules.INPUT_M.ActiveKeybind[actionname] then
			callback()
		end
	end)
end]]


function XPONENT:Window(wtitle : string, windowicon : string, hide : boolean, replace : boolean)
	-- Init
	local WINDOW = {
		Toggles = {},
		Misc = {},
	}
	local window = XPONENT.Modules.GUIINIT_M:CreateWindow(menu.Container.Windows)
	window.Name = wtitle
	window.UIScale.Scale = XPONENT["Scale"]
	window.Position = UDim2.new(0, (screensize.X-window.AbsoluteSize.X)/2, 0, (screensize.Y-window.AbsoluteSize.Y)/2)
	window.MainWindow.Titlebar.Title.Text = wtitle

	window.MainWindow.Profile.TabButton.PName.Text = "@"..plr.Name
	window.MainWindow.Profile.TabButton.DName.Text = plr.DisplayName
	window.MainWindow.Profile.TabButton.ImageLabel.Image = game.Players:GetUserThumbnailAsync(plr.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size100x100)

	local windowbutton = XPONENT.Modules.GUIINIT_M:CreateWindowButton(menu.Container.Menu.Frame.Windows.Container)
	windowbutton.WindowToggle.Image = windowicon or "http://www.roblox.com/asset/?id=14738461299"
	
	if replace then
		local donereplacing = false
		for i,v in pairs(XPONENT["Windows"]) do
			if string.find(string.lower(i),string.lower(wtitle)) then
				if donereplacing then
					v:Close()
				else
					v:Close()
					XPONENT["Windows"][i] = WINDOW
					donereplacing = true
				end
			end
		end
		if not donereplacing then
			XPONENT["Windows"][wtitle..tostring(currentid)] = WINDOW
		end
	else
		XPONENT["Windows"][wtitle..tostring(currentid)] = WINDOW
	end
	currentid += 1


	-- Properties
	WINDOW["Instance"] = window
	WINDOW["Button"] = windowbutton
	WINDOW["Title"] = wtitle
	WINDOW["State"] = not (hide or false)
	WINDOW["CurrentId"] = 1

	WINDOW.Misc["CurrentKeybindEdit"] = nil
	WINDOW.Misc["LatestKeybindData"] = {}
	-- Methods
	function WINDOW:Tab(tabtitle : string, tabicon : string)
		-- Init
		local TAB = {}
		local tabbutton = XPONENT.Modules.GUIINIT_M:CreateTabButton(window.MainWindow.TabPanel.TabList)
		tabbutton.Name = tabtitle
		tabbutton.TextLabel.Text = tabtitle
		tabbutton.ImageLabel.Image = tabicon or "http://www.roblox.com/asset/?id=14738461299"

		local tab = XPONENT.Modules.GUIINIT_M:CreateTab(window.MainWindow.Tabs)
		tab.Name = tabtitle

		-- Properties
		TAB["Instance"] = tab
		TAB["Button"] = tabbutton
		TAB["Title"] = tabtitle

		-- Methods
		function TAB:Label(title : string, cancopy : boolean, info : string)
			-- Init
			local LABEL = {}
			local label = XPONENT.Modules.GUIINIT_M:CreateLabel(tab)
			label.Title.Text = title

			-- Properties
			LABEL["Instance"] = label
			LABEL["Title"] = title
			LABEL["CanCopy"] = cancopy or false

			-- Methods
			function LABEL:SetTitle(newtitle : string)
				LABEL["Title"] = title
				label.Title.Text = newtitle
			end

			function LABEL:Copyable(toggle : boolean)
				LABEL["CanCopy"] = toggle
				label.Copy.Visible = toggle
			end
			LABEL:Copyable(LABEL["CanCopy"])

			-- Events
			WINDOW.Events["LabelCopy"] = label.Copy.Activated:Connect(function()
				XPONENT.Misc:CopyText(label.Title.Text)
			end)
			WINDOW.Events["LabelInfo"] = XPONENT.Misc:InitInfo(LABEL, info)

			return LABEL
		end

		function TAB:Textbox(title : string, callback : any, defaulttext : string, canedit : boolean, cancopy : boolean, info : string)
			-- Init
			if type(canedit) ~= "boolean" then canedit = true end
			local TEXTBOX = {}
			local textbox = XPONENT.Modules.GUIINIT_M:CreateTextbox(tab)
			textbox.Input.PlaceholderText = title or ""
			textbox.Input.TextEditable = canedit or true

			-- Properties
			TEXTBOX["Instance"] = textbox
			TEXTBOX["Title"] = title
			TEXTBOX["Text"] = defaulttext or ""
			TEXTBOX["CanEdit"] = canedit
			TEXTBOX["CanCopy"] = cancopy or false

			-- Methods
			function TEXTBOX:SetTitle(newtitle : string)
				TEXTBOX["Title"] = newtitle
				textbox.Input.PlaceholderText = newtitle
			end

			function TEXTBOX:SetText(newtext : string)
				TEXTBOX["Text"] = newtext
				textbox.Input.Text = newtext
			end
			TEXTBOX:SetText(defaulttext or "")

			function TEXTBOX:Editable(toggle : boolean)
				TEXTBOX["CanEdit"] = toggle
				textbox.Input.TextEditable = toggle
			end

			function TEXTBOX:Copyable(toggle : boolean)
				TEXTBOX["CanCopy"] = toggle
				textbox.Copy.Visible = toggle
			end
			TEXTBOX:Copyable(TEXTBOX["CanCopy"])

			-- Events
			WINDOW.Events["TextboxCopy"] = textbox.Copy.Activated:Connect(function()
				XPONENT.Misc:CopyText(textbox.Input.Text)
			end)
			WINDOW.Events["TextboxChanged"] = textbox.Input.Changed:Connect(function()
				pcall(function()
					TEXTBOX["Text"] = textbox.Input.Text
					if callback then
						callback(textbox.Input.Text)
					end
				end)
			end)
			WINDOW.Events["TextboxInfo"] = XPONENT.Misc:InitInfo(TEXTBOX, info)

			return TEXTBOX
		end

		function TAB:Button(title : string, callback : any, caneditkeybind : boolean, keybinddata : {}, info : string)
			-- Init
			local BUTTON = {}
			local button = XPONENT.Modules.GUIINIT_M:CreateButton(tab)
			button.Title.Text = title
			--if not cankeybind then
			button.Keybind.Visible = false
			--end

			-- Properties
			BUTTON["Instance"] = button
			BUTTON["Title"] = title
			BUTTON["CanEditKeybind"] = caneditkeybind or false
			BUTTON["KeybindData"] = keybinddata or {}

			-- Methods
			function BUTTON:SetTitle(newtitle : string)
				BUTTON["Title"] = newtitle
				button.Title.Text = newtitle
			end


			-- Events
			WINDOW.Events["ButtonActivated"] = button.Title.Activated:Connect(function()
				button.Title.BackgroundTransparency = 0
				XPONENT.Services.TWEEN_S:Create(button.Title, TweenInfo.new(0.2), {BackgroundTransparency = 1}):Play()
				callback()
			end)
			WINDOW.Events["ButtonInfo"] = XPONENT.Misc:InitInfo(BUTTON, info)
			--[[WINDOW.Actions["ButtonKeybind"] = XPONENT.Misc:InitKeybind(BUTTON, keybind, function()
				callback()
			end)
			]]
			return BUTTON
		end

		function TAB:Toggle(title : string, callback : any, default : boolean, caneditkeybind : boolean, keybinddata : {}, info : string)
			-- Init
			local TOGGLE = {}
			local toggle = XPONENT.Modules.GUIINIT_M:CreateToggle(tab)
			toggle.Title.Text = title
			--if not cankeybind then
			toggle.Keybind.Visible = false
			--end

			-- Properties
			TOGGLE["Instance"] = toggle
			TOGGLE["State"] = false
			TOGGLE["CanEditKeybind"] = caneditkeybind or false
			TOGGLE["KeybindData"] = keybinddata or {}

			-- Methods
			function TOGGLE:SetTitle(newtitle : string)
				toggle.Title.Text = newtitle
			end

			function TOGGLE:SetState(newstate : boolean)
				TOGGLE["State"] = newstate
				if TOGGLE["State"] then
					XPONENT.Services.TWEEN_S:Create(toggle.Title, TweenInfo.new(0.2), {BackgroundTransparency = 0, TextColor3 = Color3.new(0,0,0)}):Play()
				else
					XPONENT.Services.TWEEN_S:Create(toggle.Title, TweenInfo.new(0.2), {BackgroundTransparency = 1, TextColor3 = Color3.new(1,1,1)}):Play()
				end
				if callback then
					callback(newstate)
				end
			end
			TOGGLE:SetState(default or false)
			

			-- Events
			WINDOW.Events["ToggleActivated"] = toggle.Title.Activated:Connect(function()
				TOGGLE:SetState(not TOGGLE["State"])
			end)
			WINDOW.Events["ToggleInfo"] = XPONENT.Misc:InitInfo(TOGGLE, info)

			return TOGGLE
		end

		function TAB:Slider(title : string, callback : any, nmin : number, nmax : number, ndefault : number, increment : number, info : string)
			-- Init
			local SLIDER = {}
			local slider = XPONENT.Modules.GUIINIT_M:CreateSlider(tab)
			local min,max,default = nmin or 0, nmax or 100, ndefault or 50
			slider.Title.Text = title
			slider.Slider.ProgressBar.Bar.Size = UDim2.new((default - min)/(max - min),0,1,0)
			slider.Slider.ProgressBar.Progress.Position = UDim2.new((default - min)/(max - min),0,0,20)
			slider.Slider.ProgressBar.Progress.Text = default
			slider.HoverMenu.Min.Text = min
			slider.HoverMenu.Max.Text = max
			slider.HoverMenu.Middle.Text = (max+min)/2

			-- create the increment marks
			if increment and increment >= (max - min)/16 then
				for i = min + increment, max - increment/10, increment do
					local mark = Instance.new("Frame",slider.Slider.ProgressBar.Marks)
					mark.AnchorPoint = Vector2.new(0.5, 0.5)
					mark.Size = UDim2.new(0,1,0.5,0)
					mark.Position = UDim2.new((i - min)/(max - min),0,0.5,0)
					mark.BorderSizePixel = 0
					mark.ZIndex = 10
					if i < default then
						mark.BackgroundColor3 = Color3.new(0,0,0)
					else
						mark.BackgroundColor3 = Color3.new(1,1,1)
					end
				end
			end

			-- Properties
			SLIDER["Instance"] = slider
			SLIDER["Value"] = default
			SLIDER["Min"] = min
			SLIDER["Max"] = max
			SLIDER["Increment"] = increment or 1

			-- Methods
			function SLIDER:SetTitle(newtitle : string)
				slider.Title.Text = newtitle
			end

			function SLIDER:ToggleMenu(bool : boolean)
				if bool then
					XPONENT.Services.TWEEN_S:Create(slider.HoverMenu, TweenInfo.new(0.2), {Position = UDim2.new(0,0,0,-10)}):Play()
				else
					XPONENT.Services.TWEEN_S:Create(slider.HoverMenu, TweenInfo.new(0.2), {Position = UDim2.new(0,0,0,10)}):Play()
				end
			end

			function SLIDER:SetValue(val : number)
				SLIDER["Value"] = math.clamp(math.round(val/(increment or 1)) * (increment or 1), min, max)
				slider.Slider.ProgressBar.Bar.Size = UDim2.new((SLIDER["Value"] - min)/(max - min),0,1,0)
				slider.Slider.ProgressBar.Progress.Position = UDim2.new((SLIDER["Value"] - min)/(max - min),0,0,20)
				slider.Slider.ProgressBar.Progress.Text = SLIDER["Value"]

				if callback then
					callback(SLIDER["Value"])
				end
			end

			-- Events
			WINDOW.Events["SliderDragged"] = slider.Slider.ProgressBar.MouseButton1Down:Connect(function()
				local mousemoved = mouse.Move:Connect(function()
					local minpos = slider.Slider.ProgressBar.AbsolutePosition.X
					local maxpos = minpos + slider.Slider.ProgressBar.AbsoluteSize.X
					local clampedmousepos = math.clamp(mouse.X, minpos, maxpos)
					local scale = (clampedmousepos - minpos)/(maxpos - minpos)
					SLIDER:SetValue(scale*(max - min) + min)

					for i,v in pairs(slider.Slider.ProgressBar.Marks:GetChildren()) do
						if v:IsA("Frame") and v.Position.X.Scale < scale then
							v.BackgroundColor3 = Color3.new(0,0,0)
						else
							v.BackgroundColor3 = Color3.new(1,1,1)
						end
					end

				end)
				repeat task.wait() until not mousetoggle
				mousemoved:Disconnect()
			end)

			WINDOW.Events["SliderFocus"] = slider.Slider.ProgressBar.MouseEnter:Connect(function()
				SLIDER:ToggleMenu(true)
			end)

			WINDOW.Events["SliderUnfocus"] = slider.Slider.ProgressBar.MouseLeave:Connect(function()
				SLIDER:ToggleMenu(false)
			end)

			WINDOW.Events["SliderInfo"] = XPONENT.Misc:InitInfo(SLIDER, info)

			return SLIDER
		end

		function TAB:Container(title : string, hide : boolean, autosize : boolean, info : string)
			-- Init
			if type(autosize) ~= "boolean" then autosize = true end
			local CONTAINER = {}
			local container = XPONENT.Modules.GUIINIT_M:CreateContainer(tab)
			container.Bar.Title.Text = title

			-- Properties
			CONTAINER["Instance"] = container
			CONTAINER["Title"] = title
			CONTAINER["State"] = not (hide or false)
			CONTAINER["AutoSize"] = autosize

			-- Methods
			function CONTAINER:SetTitle(newtitle : string)
				CONTAINER["Title"] = newtitle
				container.Bar.Title.Text = newtitle
			end
			
			function CONTAINER:SetAutoSize(bool : boolean)
				if bool then
					container.ScrollingFrame.AutomaticSize = Enum.AutomaticSize.Y
				else
					container.ScrollingFrame.AutomaticSize = Enum.AutomaticSize.None
				end
				CONTAINER["AutoSize"] = bool
			end
			CONTAINER:SetAutoSize(CONTAINER["AutoSize"])

			function CONTAINER:Add(elementobject : {})
				elementobject["Instance"].Parent = container.ScrollingFrame
			end

			function CONTAINER:ToggleMenu(bool : boolean)
				if bool then
					if CONTAINER["AutoSize"] then container.ScrollingFrame.AutomaticSize = Enum.AutomaticSize.Y end
					XPONENT.Services.TWEEN_S:Create(container.ScrollingFrame, TweenInfo.new(0.2), {Size = UDim2.new(1,0,0,100)}):Play()
					XPONENT.Services.TWEEN_S:Create(container.Bar.ToggleContainer.MenuToggle, TweenInfo.new(0.2), {Rotation = 0}):Play()
				else
					if CONTAINER["AutoSize"] then container.ScrollingFrame.AutomaticSize = Enum.AutomaticSize.None end
					XPONENT.Services.TWEEN_S:Create(container.ScrollingFrame, TweenInfo.new(0.2), {Size = UDim2.new(1,0,0,0)}):Play()
					XPONENT.Services.TWEEN_S:Create(container.Bar.ToggleContainer.MenuToggle, TweenInfo.new(0.2), {Rotation = 180}):Play()
				end
				CONTAINER["State"] = bool
			end
			CONTAINER:ToggleMenu(CONTAINER["State"])

			-- Events
			WINDOW.Events["ToggleContainerMenu"] = container.Bar.ToggleContainer.MenuToggle.Activated:Connect(function()
				CONTAINER:ToggleMenu(not CONTAINER["State"])
			end)

			WINDOW.Events["ContainerInfo"] = XPONENT.Misc:InitInfo(CONTAINER, info, container.Bar)

			return CONTAINER
		end

		function TAB:Dropdown(title : string, callback : any, content : {}, multiselect : string, info : string)
			-- Init
			local DROPDOWN = {}
			local dropdown = XPONENT.Modules.GUIINIT_M:CreateDropdown(tab)
			dropdown.Bar.Title.Text = title

			-- Properties
			DROPDOWN["Instance"] = dropdown
			DROPDOWN["Title"] = title
			DROPDOWN["State"] = false
			DROPDOWN["Items"] = {}
			DROPDOWN["Selected"] = {}

			-- Methods
			function DROPDOWN:SetTitle(newtitle : string)
				DROPDOWN["Title"] = newtitle
				dropdown.Bar.Title.Text = newtitle
			end

			function DROPDOWN:ToggleMenu(bool : boolean)
				if bool then
					XPONENT.Services.TWEEN_S:Create(dropdown.ScrollingFrame, TweenInfo.new(0.2), {Size = UDim2.new(1,0,0,100)}):Play()
					XPONENT.Services.TWEEN_S:Create(dropdown.Bar.ToggleContainer.MenuToggle, TweenInfo.new(0.2), {Rotation = 0}):Play()
					XPONENT.Services.TWEEN_S:Create(dropdown.Bar.ToggleContainer.Sidebar, TweenInfo.new(0.2), {Position = UDim2.new(1,-20,0,0)}):Play()
				else
					XPONENT.Services.TWEEN_S:Create(dropdown.ScrollingFrame, TweenInfo.new(0.2), {Size = UDim2.new(1,0,0,0)}):Play()
					XPONENT.Services.TWEEN_S:Create(dropdown.Bar.ToggleContainer.MenuToggle, TweenInfo.new(0.2), {Rotation = 180}):Play()
					XPONENT.Services.TWEEN_S:Create(dropdown.Bar.ToggleContainer.Sidebar, TweenInfo.new(0.2), {Position = UDim2.new(1,90,0,0)}):Play()
				end
				DROPDOWN["State"] = bool
			end
			DROPDOWN:ToggleMenu(false)

			function DROPDOWN:Item(title : string)
				-- Init
				local ITEM = {}
				local item = XPONENT.Modules.GUIINIT_M:CreateItem(dropdown.ScrollingFrame)
				item.TextButton.Text = title

				-- Properties
				ITEM["Instance"] = item
				ITEM["Value"] = title
				ITEM["State"] = false

				-- Methods
				function ITEM:SetState(bool : boolean)
					if bool then
						XPONENT.Services.TWEEN_S:Create(item.TextButton, TweenInfo.new(0.2), {BackgroundTransparency = 0, TextColor3 = Color3.new(0,0,0)}):Play()
					else
						XPONENT.Services.TWEEN_S:Create(item.TextButton, TweenInfo.new(0.2), {BackgroundTransparency = 1, TextColor3 = Color3.new(1,1,1)}):Play()
					end
					ITEM["State"] = bool
				end

				-- Events
				WINDOW.Events["ItemToggle"] = item.TextButton.Activated:Connect(function()
					if multiselect then
						ITEM:SetState(not ITEM["State"])
						if ITEM["State"] then
							table.insert(DROPDOWN["Selected"],ITEM)
						else
							local index = table.find(DROPDOWN["Selected"],ITEM)
							if index then
								table.remove(DROPDOWN["Selected"],index)
							end
						end
					else
						for _,v in pairs(DROPDOWN["Items"]) do
							v:SetState(false)
						end
						ITEM:SetState(true)
						DROPDOWN["Selected"] = {ITEM}
						DROPDOWN:ToggleMenu(false)
					end

					if #DROPDOWN["Selected"] <= 1 then
						dropdown.Bar.ToggleContainer.Sidebar.Item.Text = tostring(DROPDOWN["Selected"][1]["Value"]).." selected"
					else
						dropdown.Bar.ToggleContainer.Sidebar.Item.Text = tostring(#DROPDOWN["Selected"]).." items selected"
					end

					if callback then
						callback(DROPDOWN["Selected"])
					end
				end)

				return ITEM
			end
			
			if content then
				for i,v in ipairs(content) do
					table.insert(DROPDOWN["Items"], DROPDOWN:Item(tostring(v)))
				end
			end
			
			function DROPDOWN:SetContent(newcontent : {}, overwrite : boolean)
				if overwrite then
					for i,v in ipairs(DROPDOWN["Items"]) do
						v["Instance"]:Destroy()
					end
					DROPDOWN["Items"] = {}
					DROPDOWN["Selected"] = {}
					dropdown.Bar.ToggleContainer.Sidebar.Item.Text = "none selected"
				end
				for i,v in ipairs(newcontent) do
					table.insert(DROPDOWN["Items"], DROPDOWN:Item(tostring(v)))
				end
			end

			function DROPDOWN:Search(query : string)
				for i,v in pairs(DROPDOWN["Items"]) do
					if string.find(string.lower(v["Value"]), query) then
						v["Instance"].Visible = true
					else
						v["Instance"].Visible = false
					end
				end
			end

			-- Events
			WINDOW.Events["ToggleDropdownMenu"] = dropdown.Bar.ToggleContainer.MenuToggle.Activated:Connect(function()
				DROPDOWN:ToggleMenu(not DROPDOWN["State"])
			end)

			WINDOW.Events["DropdownSearch"] = dropdown.Bar.ToggleContainer.Sidebar.Searchbar.Changed:Connect(function()
				pcall(function()
					DROPDOWN:Search(dropdown.Bar.ToggleContainer.Sidebar.Searchbar.Text)
				end)
			end)

			WINDOW.Events["DropdownInfo"] = XPONENT.Misc:InitInfo(DROPDOWN, info, dropdown.Bar)

			return DROPDOWN
		end

		function TAB:SetTitle(newtitle : string)
			TAB["Title"] = newtitle
			tabbutton.TextLabel.Text = newtitle
		end

		function TAB:SetIcon(newicon : string)
			tabbutton.ImageLabel.Image = newicon or "http://www.roblox.com/asset/?id=14738461299"
		end

		function TAB:JumpTo()
			window.MainWindow.Tabs.UIPageLayout:JumpTo(tab)
			for i,v in pairs(tabbutton.Parent:GetChildren()) do
				if v:IsA("GuiButton") then
					if v == tabbutton then
						XPONENT.Services.TWEEN_S:Create(v.TextLabel, TweenInfo.new(0.2), {TextTransparency = 0}):Play()
						XPONENT.Services.TWEEN_S:Create(v.ImageLabel, TweenInfo.new(0.2), {ImageTransparency = 0}):Play()
					else
						XPONENT.Services.TWEEN_S:Create(v.TextLabel, TweenInfo.new(0.2), {TextTransparency = 0.5}):Play()
						XPONENT.Services.TWEEN_S:Create(v.ImageLabel, TweenInfo.new(0.2), {ImageTransparency = 0.5}):Play()
					end
				end
			end
		end
		if #tabbutton.Parent:GetChildren() == 2 then
			TAB:JumpTo()
		end

		-- Events
		WINDOW.Events["TabActivated"] = tabbutton.Activated:Connect(TAB.JumpTo)



		return TAB

	end

	function WINDOW:SetTitle(newtitle : string)
		WINDOW["Title"] = newtitle
		window.Name = newtitle
	end

	function WINDOW:SetIcon(newicon : string)
		windowbutton.WindowToggle.Image = newicon or "http://www.roblox.com/asset/?id=14738461299"
	end

	function WINDOW:ToggleState(bool : boolean)
		if bool then
			window.Visible = true
			XPONENT.Services.TWEEN_S:Create(windowbutton.WindowToggle, TweenInfo.new(0.2), {ImageTransparency = 0}):Play()
		else
			window.Visible = false
			XPONENT.Services.TWEEN_S:Create(windowbutton.WindowToggle, TweenInfo.new(0.2), {ImageTransparency = 0.5}):Play()
		end
		WINDOW["State"] = bool
	end
	WINDOW:ToggleState(not (hide or false))


	function WINDOW:Close()
		for i,v in pairs(WINDOW["Events"]) do
			if v then
				v:Disconnect()
			end
		end
		for i,v in pairs(XPONENT.Modules.INPUT_M.ActiveKeybind) do
			if i then
				XPONENT.Modules.INPUT_M:RemoveKeybind(i)
			end
		end
		for i,v in pairs(WINDOW["Toggles"]) do
			if v["State"] then v.State = false end
	        end
		task.wait()
		window:Destroy()
		WINDOW = nil

		XPONENT.Services.TWEEN_S:Create(windowbutton, TweenInfo.new(0.2),{Size = UDim2.new(0,50,0,0)}):Play()
		task.wait(0.3)
		windowbutton:Destroy()
	end

	-- Events
	WINDOW["Events"] = {
		["OnMinimized"] = window.MainWindow.Titlebar.TopBar.Minimize.Activated:Connect(function()
			WINDOW:ToggleState(false)
		end),
		["OnToggleState"] = windowbutton.WindowToggle.Activated:Connect(function()
			WINDOW:ToggleState(not WINDOW["State"])
		end),
		["OnClosed"] = window.MainWindow.Titlebar.TopBar.Close.Activated:Connect(WINDOW.Close),
		["OnMove"] = window.MainWindow.Titlebar.MouseButton1Down:Connect(function()
			XPONENT.Misc:DragElement(window)
		end),
		--[[["InputBegan"] = XPONENT.Services.USERINPUT_S.InputBegan:Connect(function(inputobject)
			if inputobject.UserInputType == Enum.UserInputType.Keyboard then
				if WINDOW.Misc.CurrentKeybindEdit then
					if table.find(functionkeys, tostring(inputobject.KeyCode)) then
						local inputcombination = ""
						for i,v in pairs(XPONENT.Modules.INPUT_M.ActiveKeybind) do
							if v and table.find(functionkeys, i) then
								inputcombination = inputcombination..i.." + "
							end
						end
						WINDOW.Misc.CurrentKeybindEdit.Text = inputcombination
					else
						WINDOW.Misc.CurrentKeybindEdit = nil
						WINDOW.Misc.CurrentKeybindEdit.Text = WINDOW.Misc.CurrentKeybindEdit.Text..tostring(inputobject.KeyCode)
						
						-- finalize the input into a table
						WINDOW.Misc.LatestKeybindData = {
							Key = inputobject.KeyCode,
							Requirements = {}
						}
						for i,v in pairs(XPONENT.Modules.INPUT_M.ActiveKeybind) do
							if v and table.find(functionkeys, i) then
								WINDOW.Misc.LatestKeybindData.Requirements[i] = v
							end
						end
						WINDOW.Misc.LatestKeybindData["Ready"] = true
					end
				else
					
				end
			end
			if inputobject.UserInputType == Enum.UserInputType.MouseButton1 then
				print("cool")
			end
		end),
		["InputEnded"] = XPONENT.Services.USERINPUT_S.InputEnded:Connect(function(inputobject)
			--[[if inputobject.UserInputType == Enum.UserInputType.Keyboard and table.find(functionkeys, tostring(inputobject.KeyCode)) then
				if WINDOW.Misc.CurrentKeybindEdit then
					local inputcombination = ""
					for i,v in pairs(XPONENT.Modules.INPUT_M.ActiveKeybind) do
						if v and table.find(functionkeys, i) then
							inputcombination = inputcombination..i.." + "
						end
					end
					WINDOW.Misc.CurrentKeybindEdit.Text = inputcombination
				end
			end
			if inputobject.UserInputType == Enum.UserInputType.MouseButton1 then

			end
		end)]]
	}

	return WINDOW
end

function XPONENT:ToggleMenu(bool : boolean)
	if bool then
		XPONENT.Services.TWEEN_S:Create(menu.Container.Menu.Frame, TweenInfo.new(0.2), {Position = UDim2.new(0,0,0,0)}):Play()
	else
		XPONENT.Services.TWEEN_S:Create(menu.Container.Menu.Frame, TweenInfo.new(0.2), {Position = UDim2.new(0,-75,0,0)}):Play()
	end
	XPONENT["MenuState"] = bool
end
XPONENT:ToggleMenu(false)

-- Events
XPONENT.Events = {
	["OnMenuToggle"] = menu.Container.Menu.Frame.Frame.MenuToggle.Activated:Connect(function()
		XPONENT:ToggleMenu(not XPONENT["MenuState"])
	end),
	["InputBegan"] = XPONENT.Services.USERINPUT_S.InputBegan:Connect(function(inputobject)
		if inputobject.UserInputType == Enum.UserInputType.MouseButton1 or inputobject.UserInputType == Enum.UserInputType.Touch then
			mousetoggle = true
		end
	end),
	["InputEnded"] = XPONENT.Services.USERINPUT_S.InputEnded:Connect(function(inputobject)
			--[[if inputobject.UserInputType == Enum.UserInputType.Keyboard and table.find(functionkeys, tostring(inputobject.KeyCode)) then
				if WINDOW.Misc.CurrentKeybindEdit then
					local inputcombination = ""
					for i,v in pairs(XPONENT.Modules.INPUT_M.ActiveKeybind) do
						if v and table.find(functionkeys, i) then
							inputcombination = inputcombination..i.." + "
						end
					end
					WINDOW.Misc.CurrentKeybindEdit.Text = inputcombination
				end
			end]]
		if inputobject.UserInputType == Enum.UserInputType.MouseButton1 or inputobject.UserInputType == Enum.UserInputType.Touch then
			mousetoggle = false
		end
	end)
}


_G["29814129401249"] = randomizer
_G[tostring(randomizer)] = XPONENT
return _G[tostring(randomizer)] 
