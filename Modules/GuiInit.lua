local module = {}

function module:CreateMain(parent)
	local Xponent = Instance.new("ScreenGui")
	Xponent["ResetOnSpawn"] = false
	Xponent["IgnoreGuiInset"] = true
	Xponent["DisplayOrder"] = 1000000
	Xponent["Name"] = "Xponent"
	Xponent["ScreenInsets"] = Enum.ScreenInsets.DeviceSafeInsets
	Xponent["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling
	Xponent["Parent"] = parent

	local Container = Instance.new("Frame")
	Container["BorderSizePixel"] = 0
	Container["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
	Container["Name"] = "Container"
	Container["Size"] = UDim2.new(1, 0, 1, 0)
	Container["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	Container["BackgroundTransparency"] = 1
	Container["Parent"] = Xponent

	local NotificationTab = Instance.new("Frame")
	NotificationTab["ZIndex"] = 10
	NotificationTab["BorderSizePixel"] = 0
	NotificationTab["BackgroundColor3"] = Color3.fromRGB(30.00000011175871, 30.00000011175871, 30.00000011175871)
	NotificationTab["AnchorPoint"] = Vector2.new(1, 1)
	NotificationTab["Name"] = "NotificationTab"
	NotificationTab["Size"] = UDim2.new(0, 400, 0, 600)
	NotificationTab["ClipsDescendants"] = true
	NotificationTab["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	NotificationTab["BackgroundTransparency"] = 1
	NotificationTab["Position"] = UDim2.new(1, -20, 1, -20)
	NotificationTab["Parent"] = Container

	local UIListLayout = Instance.new("UIListLayout")
	UIListLayout["HorizontalAlignment"] = Enum.HorizontalAlignment.Right
	UIListLayout["VerticalAlignment"] = Enum.VerticalAlignment.Bottom
	UIListLayout["SortOrder"] = Enum.SortOrder.LayoutOrder
	UIListLayout["Padding"] = UDim.new(0, 20)
	UIListLayout["Parent"] = NotificationTab

	local UIScale = Instance.new("UIScale")
	UIScale["Parent"] = NotificationTab

	local Infos = Instance.new("Folder")
	Infos["Name"] = "Infos"
	Infos["Parent"] = Container

	local Windows = Instance.new("Folder")
	Windows["Name"] = "Windows"
	Windows["Parent"] = Container

	local Menu = Instance.new("Frame")
	Menu["ZIndex"] = 1000
	Menu["BorderSizePixel"] = 0
	Menu["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
	Menu["AnchorPoint"] = Vector2.new(0, 0.5)
	Menu["Name"] = "Menu"
	Menu["Size"] = UDim2.new(0, 150, 0, 600)
	Menu["ClipsDescendants"] = true
	Menu["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	Menu["BackgroundTransparency"] = 1
	Menu["Position"] = UDim2.new(0, 20, 0.5, 0)
	Menu["Parent"] = Container

	local Frame = Instance.new("Frame")
	Frame["BorderSizePixel"] = 0
	Frame["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
	Frame["Size"] = UDim2.new(1, 0, 1, 0)
	Frame["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	Frame["BackgroundTransparency"] = 1
	Frame["Parent"] = Menu

	local Frame_1 = Instance.new("Frame")
	Frame_1["BorderSizePixel"] = 0
	Frame_1["BackgroundColor3"] = Color3.fromRGB(35.00000201165676, 35.00000201165676, 35.00000201165676)
	Frame_1["AnchorPoint"] = Vector2.new(1, 0.5)
	Frame_1["Size"] = UDim2.new(0, 75, 0, 75)
	Frame_1["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	Frame_1["Position"] = UDim2.new(1, 0, 0.5, 0)
	Frame_1["Parent"] = Frame

	local UICorner = Instance.new("UICorner")
	UICorner["CornerRadius"] = UDim.new(0, 15)
	UICorner["Parent"] = Frame_1

	local Keybind = Instance.new("TextLabel")
	Keybind["BorderSizePixel"] = 0
	Keybind["RichText"] = true
	Keybind["Name"] = "Keybind"
	Keybind["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
	Keybind["FontFace"] = Font.new("rbxassetid://12187371324", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
	Keybind["AnchorPoint"] = Vector2.new(0.5, 0.5)
	Keybind["Size"] = UDim2.new(0, 50, 0, 10)
	Keybind["Position"] = UDim2.new(0.5, 0, 0.5, 25)
	Keybind["TextColor3"] = Color3.fromRGB(255, 255, 255)
	Keybind["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	Keybind["Text"] = "[ALT]"
	Keybind["BackgroundTransparency"] = 1
	Keybind["TextSize"] = 10
	Keybind["Parent"] = Frame_1

	local MenuToggle = Instance.new("ImageButton")
	MenuToggle["BorderSizePixel"] = 0
	MenuToggle["Name"] = "MenuToggle"
	MenuToggle["BackgroundTransparency"] = 1
	MenuToggle["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
	MenuToggle["AnchorPoint"] = Vector2.new(0.5, 0.5)
	MenuToggle["Image"] = "http://www.roblox.com/asset/?id=14738461299"
	MenuToggle["Size"] = UDim2.new(0, 75, 0, 75)
	MenuToggle["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	MenuToggle["Position"] = UDim2.new(0.5, 0, 0.5, 0)
	MenuToggle["Parent"] = Frame_1

	local Windows_1 = Instance.new("ScrollingFrame")
	Windows_1["Active"] = true
	Windows_1["BorderSizePixel"] = 0
	Windows_1["CanvasSize"] = UDim2.new(0, 0, 1, 0)
	Windows_1["Name"] = "Windows"
	Windows_1["AutomaticCanvasSize"] = Enum.AutomaticSize.Y
	Windows_1["VerticalScrollBarPosition"] = Enum.VerticalScrollBarPosition.Left
	Windows_1["Size"] = UDim2.new(0, 75, 0, 600)
	Windows_1["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	Windows_1["ScrollBarThickness"] = 1
	Windows_1["ScrollingDirection"] = Enum.ScrollingDirection.Y
	Windows_1["BackgroundTransparency"] = 1
	Windows_1["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
	Windows_1["Parent"] = Frame

	local Container_1 = Instance.new("Frame")
	Container_1["BorderSizePixel"] = 0
	Container_1["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
	Container_1["Name"] = "Container"
	Container_1["AutomaticSize"] = Enum.AutomaticSize.Y
	Container_1["Size"] = UDim2.new(1, 0, 1, 0)
	Container_1["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	Container_1["BackgroundTransparency"] = 1
	Container_1["Parent"] = Windows_1

	local UIListLayout_1 = Instance.new("UIListLayout")
	UIListLayout_1["VerticalAlignment"] = Enum.VerticalAlignment.Center
	UIListLayout_1["SortOrder"] = Enum.SortOrder.LayoutOrder
	UIListLayout_1["Padding"] = UDim.new(0, 10)
	UIListLayout_1["Parent"] = Container_1

	local UIScale_1 = Instance.new("UIScale")
	UIScale_1["Parent"] = Menu
	
	return Xponent
end

function module:CreateNotification(parent)
	local Notification = Instance.new("Frame")
	Notification["BorderSizePixel"] = 0
	Notification["BackgroundColor3"] = Color3.fromRGB(30.00000011175871, 30.00000011175871, 30.00000011175871)
	Notification["AnchorPoint"] = Vector2.new(1, 1)
	Notification["Name"] = "Notification"
	Notification["AutomaticSize"] = Enum.AutomaticSize.Y
	Notification["Size"] = UDim2.new(0, 0, 0, 100)
	Notification["ClipsDescendants"] = true
	Notification["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	Notification["Position"] = UDim2.new(1, 0, 1, 0)
	Notification["Parent"] = parent

	local UICorner = Instance.new("UICorner")
	UICorner["CornerRadius"] = UDim.new(0, 15)
	UICorner["Parent"] = Notification

	local Title = Instance.new("TextLabel")
	Title["TextWrapped"] = true
	Title["BorderSizePixel"] = 0
	Title["RichText"] = true
	Title["Name"] = "Title"
	Title["TextScaled"] = true
	Title["BackgroundColor3"] = Color3.fromRGB(35.00000171363354, 35.00000171363354, 35.00000171363354)
	Title["FontFace"] = Font.new("rbxassetid://12187371324", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
	Title["AnchorPoint"] = Vector2.new(0.5, 0)
	Title["Size"] = UDim2.new(0.75, 0, 0, 40)
	Title["Position"] = UDim2.new(0.5, 0, 0, 0)
	Title["TextColor3"] = Color3.fromRGB(255, 255, 255)
	Title["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	Title["Text"] = "Notification"
	Title["BackgroundTransparency"] = 1
	Title["TextSize"] = 30
	Title["Parent"] = Notification

	local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
	UITextSizeConstraint["MaxTextSize"] = 30
	UITextSizeConstraint["Parent"] = Title

	local Body = Instance.new("TextLabel")
	Body["TextWrapped"] = true
	Body["BorderSizePixel"] = 0
	Body["RichText"] = true
	Body["Name"] = "Body"
	Body["TextScaled"] = true
	Body["BackgroundColor3"] = Color3.fromRGB(35.00000171363354, 35.00000171363354, 35.00000171363354)
	Body["FontFace"] = Font.new("rbxassetid://12187371324", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
	Body["AnchorPoint"] = Vector2.new(0.5, 1)
	Body["Size"] = UDim2.new(0.875, 0, 0, 55)
	Body["Position"] = UDim2.new(0.5, 0, 1, 0)
	Body["TextColor3"] = Color3.fromRGB(255, 255, 255)
	Body["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	Body["Text"] = ""
	Body["BackgroundTransparency"] = 1
	Body["TextSize"] = 20
	Body["Parent"] = Notification

	local UITextSizeConstraint_1 = Instance.new("UITextSizeConstraint")
	UITextSizeConstraint_1["MaxTextSize"] = 20
	UITextSizeConstraint_1["Parent"] = Body

	local Frame = Instance.new("Frame")
	Frame["BorderSizePixel"] = 0
	Frame["BackgroundColor3"] = Color3.fromRGB(25.000002309679985, 25.000002309679985, 25.000002309679985)
	Frame["Size"] = UDim2.new(1, 0, 0, 2)
	Frame["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	Frame["Position"] = UDim2.new(0, 0, 0, 40)
	Frame["Parent"] = Notification

	local Frame_1 = Instance.new("Frame")
	Frame_1["BorderSizePixel"] = 0
	Frame_1["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
	Frame_1["Size"] = UDim2.new(1, 0, 1, 0)
	Frame_1["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	Frame_1["Parent"] = Frame

	local Close = Instance.new("ImageButton")
	Close["ZIndex"] = 10
	Close["BorderSizePixel"] = 0
	Close["Name"] = "Close"
	Close["BackgroundTransparency"] = 1
	Close["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
	Close["AnchorPoint"] = Vector2.new(1, 0)
	Close["Image"] = "http://www.roblox.com/asset/?id=6031094678"
	Close["Size"] = UDim2.new(0, 25, 0, 25)
	Close["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	Close["Position"] = UDim2.new(1, -5, 0, 10)
	Close["Parent"] = Notification
	
	return Notification
end

function module:CreateInfo(parent)
	local InfoTab = Instance.new("Frame")
	InfoTab["BorderSizePixel"] = 0
	InfoTab["BackgroundColor3"] = Color3.fromRGB(35.00000011175871, 35.00000011175871, 35.00000011175871)
	InfoTab["Name"] = "InfoTab"
	InfoTab["AutomaticSize"] = Enum.AutomaticSize.Y
	InfoTab["Size"] = UDim2.new(0, 200, 0, 50)
	InfoTab["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	InfoTab["Position"] = UDim2.new(0.75, 0, 0.5, 0)
	InfoTab["ZIndex"] = 100
	InfoTab["Parent"] = parent

	local UICorner = Instance.new("UICorner")
	UICorner["CornerRadius"] = UDim.new(0, 15)
	UICorner["Parent"] = InfoTab

	local TextLabel = Instance.new("TextLabel")
	TextLabel["TextWrapped"] = true
	TextLabel["BorderSizePixel"] = 0
	TextLabel["RichText"] = true
	TextLabel["BackgroundColor3"] = Color3.fromRGB(35.00000171363354, 35.00000171363354, 35.00000171363354)
	TextLabel["FontFace"] = Font.new("rbxassetid://12187371324", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
	TextLabel["AnchorPoint"] = Vector2.new(0.5, 0.5)
	TextLabel["AutomaticSize"] = Enum.AutomaticSize.Y
	TextLabel["Size"] = UDim2.new(0.875, 0, 0.75, 0)
	TextLabel["Position"] = UDim2.new(0.5, 0, 0.5, 0)
	TextLabel["TextColor3"] = Color3.fromRGB(255, 255, 255)
	TextLabel["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	TextLabel["Text"] = "Info"
	TextLabel["BackgroundTransparency"] = 1
	TextLabel["TextSize"] = 14
	TextLabel["Parent"] = InfoTab

	local UIScale = Instance.new("UIScale")
	UIScale["Parent"] = InfoTab
	
	return InfoTab
end

function module:CreateWindow(parent)
	local Window = Instance.new("Frame")
	Window["BorderSizePixel"] = 0
	Window["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
	Window["Name"] = "Window"
	Window["Size"] = UDim2.new(0, 600, 0, 400)
	Window["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	Window["Active"] = true
	Window["BackgroundTransparency"] = 1
	Window["Parent"] = parent

	local MainWindow = Instance.new("Frame")
	MainWindow["BorderSizePixel"] = 0
	MainWindow["BackgroundColor3"] = Color3.fromRGB(25.000002309679985, 25.000002309679985, 25.000002309679985)
	MainWindow["Name"] = "MainWindow"
	MainWindow["Size"] = UDim2.new(1, 0, 1, 0)
	MainWindow["ClipsDescendants"] = true
	MainWindow["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	MainWindow["Parent"] = Window

	local UICorner = Instance.new("UICorner")
	UICorner["CornerRadius"] = UDim.new(0, 15)
	UICorner["Parent"] = MainWindow

	local TabPanel = Instance.new("Frame")
	TabPanel["BorderSizePixel"] = 0
	TabPanel["BackgroundColor3"] = Color3.fromRGB(30.00000201165676, 30.00000201165676, 30.00000201165676)
	TabPanel["AnchorPoint"] = Vector2.new(0, 1)
	TabPanel["Name"] = "TabPanel"
	TabPanel["Size"] = UDim2.new(0, 160, 0.875, -80)
	TabPanel["ClipsDescendants"] = true
	TabPanel["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	TabPanel["Position"] = UDim2.new(0, 0, 1, -60)
	TabPanel["Parent"] = MainWindow

	local TabList = Instance.new("ScrollingFrame")
	TabList["Active"] = true
	TabList["BorderSizePixel"] = 0
	TabList["CanvasSize"] = UDim2.new(0, 0, 1, 0)
	TabList["Name"] = "TabList"
	TabList["AutomaticCanvasSize"] = Enum.AutomaticSize.Y
	TabList["VerticalScrollBarPosition"] = Enum.VerticalScrollBarPosition.Left
	TabList["AnchorPoint"] = Vector2.new(0, 0.5)
	TabList["Size"] = UDim2.new(1, 0, 1, -10)
	TabList["BorderColor3"] = Color3.fromRGB(255, 255, 255)
	TabList["ScrollBarThickness"] = 2
	TabList["ScrollingDirection"] = Enum.ScrollingDirection.Y
	TabList["BackgroundTransparency"] = 1
	TabList["Position"] = UDim2.new(0, 0, 0.5, 0)
	TabList["BackgroundColor3"] = Color3.fromRGB(30.00000201165676, 30.00000201165676, 30.00000201165676)
	TabList["Parent"] = TabPanel

	local UIListLayout = Instance.new("UIListLayout")
	UIListLayout["SortOrder"] = Enum.SortOrder.LayoutOrder
	UIListLayout["Padding"] = UDim.new(0, 10)
	UIListLayout["Parent"] = TabList

	local UICorner_1 = Instance.new("UICorner")
	UICorner_1["CornerRadius"] = UDim.new(0, 15)
	UICorner_1["Parent"] = TabPanel

	local FadeDown = Instance.new("Frame")
	FadeDown["BorderSizePixel"] = 0
	FadeDown["BackgroundColor3"] = Color3.fromRGB(30.00000011175871, 30.00000011175871, 30.00000011175871)
	FadeDown["AnchorPoint"] = Vector2.new(0, 1)
	FadeDown["Name"] = "FadeDown"
	FadeDown["Size"] = UDim2.new(1, 0, 0, 50)
	FadeDown["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	FadeDown["Position"] = UDim2.new(0, 0, 1, 0)
	FadeDown["Parent"] = TabPanel

	local UIGradient = Instance.new("UIGradient")
	UIGradient["Rotation"] = -90
	UIGradient["Transparency"] = NumberSequence.new{
		NumberSequenceKeypoint.new(0, 0),
		NumberSequenceKeypoint.new(1, 1)
	}
	UIGradient["Parent"] = FadeDown
	

	local UICorner_2 = Instance.new("UICorner")
	UICorner_2["CornerRadius"] = UDim.new(0, 15)
	UICorner_2["Parent"] = FadeDown

	local Profile = Instance.new("Frame")
	Profile["BorderSizePixel"] = 0
	Profile["BackgroundColor3"] = Color3.fromRGB(30.00000201165676, 30.00000201165676, 30.00000201165676)
	Profile["AnchorPoint"] = Vector2.new(0, 1)
	Profile["Name"] = "Profile"
	Profile["Size"] = UDim2.new(0, 160, 0, 50)
	Profile["ClipsDescendants"] = true
	Profile["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	Profile["Position"] = UDim2.new(0, 0, 1, 0)
	Profile["Parent"] = MainWindow

	local UICorner_3 = Instance.new("UICorner")
	UICorner_3["CornerRadius"] = UDim.new(0, 15)
	UICorner_3["Parent"] = Profile

	local TabButton = Instance.new("TextButton")
	TabButton["BorderSizePixel"] = 0
	TabButton["Name"] = "TabButton"
	TabButton["TextSize"] = 14
	TabButton["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
	TabButton["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
	TabButton["Size"] = UDim2.new(1, 0, 0, 50)
	TabButton["TextColor3"] = Color3.fromRGB(0, 0, 0)
	TabButton["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	TabButton["Text"] = ""
	TabButton["Font"] = Enum.Font.SourceSans
	TabButton["BackgroundTransparency"] = 1
	TabButton["Parent"] = Profile

	local ImageLabel = Instance.new("ImageLabel")
	ImageLabel["ZIndex"] = 0
	ImageLabel["BorderSizePixel"] = 0
	ImageLabel["BackgroundColor3"] = Color3.fromRGB(25.000002309679985, 25.000002309679985, 25.000002309679985)
	ImageLabel["AnchorPoint"] = Vector2.new(0.5, 0.5)
	ImageLabel["Image"] = "http://www.roblox.com/asset/?id=6026568198"
	ImageLabel["Size"] = UDim2.new(0, 35, 0, 35)
	ImageLabel["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	ImageLabel["Position"] = UDim2.new(0, 25, 0.5, 0)
	ImageLabel["Parent"] = TabButton

	local ImageLabel_1 = Instance.new("ImageLabel")
	ImageLabel_1["ZIndex"] = 0
	ImageLabel_1["BorderSizePixel"] = 0
	ImageLabel_1["BackgroundColor3"] = Color3.fromRGB(30.00000201165676, 30.00000201165676, 30.00000201165676)
	ImageLabel_1["Image"] = "rbxassetid://16987609568"
	ImageLabel_1["Size"] = UDim2.new(1, 0, 1, 0)
	ImageLabel_1["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	ImageLabel_1["ImageColor3"] = Color3.fromRGB(30.00000201165676, 30.00000201165676, 30.00000201165676)
	ImageLabel_1["BackgroundTransparency"] = 1
	ImageLabel_1["Parent"] = ImageLabel

	local ImageLabel_2 = Instance.new("ImageLabel")
	ImageLabel_2["BorderSizePixel"] = 0
	ImageLabel_2["BackgroundColor3"] = Color3.fromRGB(30.00000201165676, 30.00000201165676, 30.00000201165676)
	ImageLabel_2["Image"] = "rbxassetid://2618549781"
	ImageLabel_2["Size"] = UDim2.new(1, 0, 1, 0)
	ImageLabel_2["Visible"] = false
	ImageLabel_2["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	ImageLabel_2["BackgroundTransparency"] = 1
	ImageLabel_2["Parent"] = ImageLabel

	local DName = Instance.new("TextLabel")
	DName["TextWrapped"] = true
	DName["BorderSizePixel"] = 0
	DName["RichText"] = true
	DName["Name"] = "DName"
	DName["TextScaled"] = true
	DName["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
	DName["FontFace"] = Font.new("rbxassetid://12187371324", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
	DName["Size"] = UDim2.new(1, -50, 0, 25)
	DName["Position"] = UDim2.new(0, 45, 0, 5)
	DName["TextColor3"] = Color3.fromRGB(255, 255, 255)
	DName["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	DName["Text"] = "Displayname"
	DName["BackgroundTransparency"] = 1
	DName["TextXAlignment"] = Enum.TextXAlignment.Left
	DName["TextSize"] = 14
	DName["Parent"] = TabButton

	local PName = Instance.new("TextLabel")
	PName["TextWrapped"] = true
	PName["BorderSizePixel"] = 0
	PName["RichText"] = true
	PName["Name"] = "PName"
	PName["TextScaled"] = true
	PName["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
	PName["FontFace"] = Font.new("rbxassetid://12187371324", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
	PName["TextTransparency"] = 0.5
	PName["Size"] = UDim2.new(1, -50, 0, 15)
	PName["Position"] = UDim2.new(0, 45, 0, 30)
	PName["TextColor3"] = Color3.fromRGB(255, 255, 255)
	PName["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	PName["Text"] = "Playername"
	PName["BackgroundTransparency"] = 1
	PName["TextXAlignment"] = Enum.TextXAlignment.Left
	PName["TextSize"] = 14
	PName["Parent"] = TabButton

	local Titlebar = Instance.new("TextButton")
	Titlebar["BorderSizePixel"] = 0
	Titlebar["Name"] = "Titlebar"
	Titlebar["AutoButtonColor"] = false
	Titlebar["TextSize"] = 14
	Titlebar["ClipsDescendants"] = true
	Titlebar["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
	Titlebar["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
	Titlebar["Size"] = UDim2.new(1, 0, 0, 60)
	Titlebar["TextColor3"] = Color3.fromRGB(0, 0, 0)
	Titlebar["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	Titlebar["Text"] = ""
	Titlebar["Font"] = Enum.Font.SourceSans
	Titlebar["BackgroundTransparency"] = 1
	Titlebar["Parent"] = MainWindow

	local LogoWhite = Instance.new("ImageLabel")
	LogoWhite["Interactable"] = false
	LogoWhite["BorderSizePixel"] = 0
	LogoWhite["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
	LogoWhite["Name"] = "LogoWhite"
	LogoWhite["AnchorPoint"] = Vector2.new(0.5, 0.5)
	LogoWhite["Image"] = "http://www.roblox.com/asset/?id=14738461299"
	LogoWhite["Size"] = UDim2.new(0, 100, 0, 100)
	LogoWhite["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	LogoWhite["BackgroundTransparency"] = 1
	LogoWhite["Position"] = UDim2.new(0, 50, 0.5, 0)
	LogoWhite["Parent"] = Titlebar

	local Title = Instance.new("TextLabel")
	Title["TextWrapped"] = true
	Title["Interactable"] = false
	Title["BorderSizePixel"] = 0
	Title["RichText"] = true
	Title["Name"] = "Title"
	Title["TextScaled"] = true
	Title["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
	Title["FontFace"] = Font.new("rbxassetid://12187371324", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
	Title["Size"] = UDim2.new(0, 300, 0, 50)
	Title["Position"] = UDim2.new(0, 80, 0, 10)
	Title["TextColor3"] = Color3.fromRGB(255, 255, 255)
	Title["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	Title["Text"] = "ploitUI"
	Title["BackgroundTransparency"] = 1
	Title["TextXAlignment"] = Enum.TextXAlignment.Left
	Title["TextSize"] = 14
	Title["Parent"] = Titlebar

	local TopBar = Instance.new("Frame")
	TopBar["BorderSizePixel"] = 0
	TopBar["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
	TopBar["AnchorPoint"] = Vector2.new(1, 0)
	TopBar["Name"] = "TopBar"
	TopBar["Size"] = UDim2.new(0, 300, 0, 25)
	TopBar["ClipsDescendants"] = true
	TopBar["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	TopBar["BackgroundTransparency"] = 1
	TopBar["Position"] = UDim2.new(1, -10, 0, 10)
	TopBar["Parent"] = Titlebar

	local UIListLayout_1 = Instance.new("UIListLayout")
	UIListLayout_1["FillDirection"] = Enum.FillDirection.Horizontal
	UIListLayout_1["HorizontalAlignment"] = Enum.HorizontalAlignment.Right
	UIListLayout_1["VerticalAlignment"] = Enum.VerticalAlignment.Center
	UIListLayout_1["SortOrder"] = Enum.SortOrder.LayoutOrder
	UIListLayout_1["Padding"] = UDim.new(0, 5)
	UIListLayout_1["Parent"] = TopBar

	local Minimize = Instance.new("ImageButton")
	Minimize["BorderSizePixel"] = 0
	Minimize["Name"] = "Minimize"
	Minimize["BackgroundTransparency"] = 1
	Minimize["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
	Minimize["Image"] = "http://www.roblox.com/asset/?id=6026568240"
	Minimize["Size"] = UDim2.new(0, 25, 0, 25)
	Minimize["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	Minimize["Parent"] = TopBar

	local Close = Instance.new("ImageButton")
	Close["BorderSizePixel"] = 0
	Close["Name"] = "Close"
	Close["BackgroundTransparency"] = 1
	Close["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
	Close["Image"] = "http://www.roblox.com/asset/?id=6031094678"
	Close["Size"] = UDim2.new(0, 25, 0, 25)
	Close["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	Close["Parent"] = TopBar

	local Tabs = Instance.new("Frame")
	Tabs["BorderSizePixel"] = 0
	Tabs["BackgroundColor3"] = Color3.fromRGB(30.00000201165676, 30.00000201165676, 30.00000201165676)
	Tabs["AnchorPoint"] = Vector2.new(0, 1)
	Tabs["Name"] = "Tabs"
	Tabs["Size"] = UDim2.new(1, -170, 0.875, -20)
	Tabs["ClipsDescendants"] = true
	Tabs["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	Tabs["Position"] = UDim2.new(0, 170, 1, 0)
	Tabs["Parent"] = MainWindow

	local UIPageLayout = Instance.new("UIPageLayout")
	UIPageLayout["FillDirection"] = Enum.FillDirection.Vertical
	UIPageLayout["TweenTime"] = 0.20000000298023224
	UIPageLayout["SortOrder"] = Enum.SortOrder.LayoutOrder
	UIPageLayout["VerticalAlignment"] = Enum.VerticalAlignment.Center
	UIPageLayout["EasingStyle"] = Enum.EasingStyle.Cubic
	UIPageLayout["EasingDirection"] = Enum.EasingDirection.InOut
	UIPageLayout["GamepadInputEnabled"] = false
	UIPageLayout["ScrollWheelInputEnabled"] = false
	UIPageLayout["TouchInputEnabled"] = false
	UIPageLayout["Parent"] = Tabs

	local UICorner_4 = Instance.new("UICorner")
	UICorner_4["CornerRadius"] = UDim.new(0, 15)
	UICorner_4["Parent"] = Tabs

	local UIScale = Instance.new("UIScale")
	UIScale["Parent"] = Window
	
	return Window
end

function module:CreateWindowButton(parent)
	local WindowButton = Instance.new("Frame")
	WindowButton["BorderSizePixel"] = 0
	WindowButton["BackgroundColor3"] = Color3.fromRGB(30.00000201165676, 30.00000201165676, 30.00000201165676)
	WindowButton["AnchorPoint"] = Vector2.new(1, 0.5)
	WindowButton["Name"] = "WindowButton"
	WindowButton["Size"] = UDim2.new(0, 50, 0, 50)
	WindowButton["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	WindowButton["Position"] = UDim2.new(1, 0, 0.5, 0)
	WindowButton["Parent"] = parent

	local UICorner = Instance.new("UICorner")
	UICorner["CornerRadius"] = UDim.new(0, 15)
	UICorner["Parent"] = WindowButton

	local Keybind = Instance.new("TextLabel")
	Keybind["BorderSizePixel"] = 0
	Keybind["RichText"] = true
	Keybind["Name"] = "Keybind"
	Keybind["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
	Keybind["FontFace"] = Font.new("rbxassetid://12187371324", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
	Keybind["AnchorPoint"] = Vector2.new(0, 0.5)
	Keybind["Visible"] = false
	Keybind["Size"] = UDim2.new(0, 20, 0, 10)
	Keybind["Position"] = UDim2.new(1, 0, 0.5, 0)
	Keybind["TextColor3"] = Color3.fromRGB(255, 255, 255)
	Keybind["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	Keybind["Text"] = "[1]"
	Keybind["BackgroundTransparency"] = 1
	Keybind["TextSize"] = 10
	Keybind["Parent"] = WindowButton

	local WindowToggle = Instance.new("ImageButton")
	WindowToggle["BorderSizePixel"] = 0
	WindowToggle["Name"] = "WindowToggle"
	WindowToggle["BackgroundTransparency"] = 1
	WindowToggle["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
	WindowToggle["AnchorPoint"] = Vector2.new(0.5, 0.5)
	WindowToggle["Image"] = "http://www.roblox.com/asset/?id=14738461299"
	WindowToggle["Size"] = UDim2.new(0, 50, 0, 50)
	WindowToggle["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	WindowToggle["Position"] = UDim2.new(0.5, 0, 0.5, 0)
	WindowToggle["Parent"] = WindowButton
	
	return WindowButton
end

function module:CreateTab(parent)
	local TabWindow = Instance.new("ScrollingFrame")
	TabWindow["Active"] = true
	TabWindow["BorderSizePixel"] = 0
	TabWindow["CanvasSize"] = UDim2.new(0, 0, 1, 0)
	TabWindow["Name"] = "TabWindow"
	TabWindow["AutomaticCanvasSize"] = Enum.AutomaticSize.Y
	TabWindow["VerticalScrollBarPosition"] = Enum.VerticalScrollBarPosition.Left
	TabWindow["AnchorPoint"] = Vector2.new(0, 1)
	TabWindow["Size"] = UDim2.new(1, 0, 1, -10)
	TabWindow["BorderColor3"] = Color3.fromRGB(255, 255, 255)
	TabWindow["ScrollBarThickness"] = 2
	TabWindow["ScrollingDirection"] = Enum.ScrollingDirection.Y
	TabWindow["BackgroundTransparency"] = 1
	TabWindow["Position"] = UDim2.new(0, 0, 1, 0)
	TabWindow["BackgroundColor3"] = Color3.fromRGB(30.00000201165676, 30.00000201165676, 30.00000201165676)
	TabWindow["Parent"] = parent

	local UIListLayout = Instance.new("UIListLayout")
	UIListLayout["HorizontalAlignment"] = Enum.HorizontalAlignment.Center
	UIListLayout["SortOrder"] = Enum.SortOrder.LayoutOrder
	UIListLayout["Padding"] = UDim.new(0, 10)
	UIListLayout["Parent"] = TabWindow
	
	return TabWindow
end

function module:CreateTabButton(parent)
	local TabButton = Instance.new("TextButton")
	TabButton["BorderSizePixel"] = 0
	TabButton["Name"] = "TabButton"
	TabButton["TextSize"] = 14
	TabButton["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
	TabButton["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
	TabButton["Size"] = UDim2.new(1, 0, 0, 25)
	TabButton["TextColor3"] = Color3.fromRGB(0, 0, 0)
	TabButton["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	TabButton["Text"] = ""
	TabButton["Font"] = Enum.Font.SourceSans
	TabButton["BackgroundTransparency"] = 1
	TabButton["Parent"] = parent

	local ImageLabel = Instance.new("ImageLabel")
	ImageLabel["BorderSizePixel"] = 0
	ImageLabel["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
	ImageLabel["ImageTransparency"] = 0.5
	ImageLabel["Image"] = "http://www.roblox.com/asset/?id=6026568198"
	ImageLabel["Size"] = UDim2.new(0, 25, 0, 25)
	ImageLabel["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	ImageLabel["BackgroundTransparency"] = 1
	ImageLabel["Position"] = UDim2.new(0, 10, 0, 0)
	ImageLabel["Parent"] = TabButton

	local TextLabel = Instance.new("TextLabel")
	TextLabel["TextWrapped"] = true
	TextLabel["BorderSizePixel"] = 0
	TextLabel["RichText"] = true
	TextLabel["TextScaled"] = true
	TextLabel["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
	TextLabel["FontFace"] = Font.new("rbxassetid://12187371324", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
	TextLabel["TextTransparency"] = 0.5
	TextLabel["Size"] = UDim2.new(1, -45, 0, 25)
	TextLabel["Position"] = UDim2.new(0, 45, 0, 0)
	TextLabel["TextColor3"] = Color3.fromRGB(255, 255, 255)
	TextLabel["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	TextLabel["Text"] = "Home"
	TextLabel["BackgroundTransparency"] = 1
	TextLabel["TextXAlignment"] = Enum.TextXAlignment.Left
	TextLabel["TextSize"] = 14
	TextLabel["Parent"] = TabButton
	
	return TabButton
end

function module:CreateLabel(parent)
	local LabelObject = Instance.new("Frame")
	LabelObject["BorderSizePixel"] = 0
	LabelObject["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
	LabelObject["Name"] = "LabelObject"
	LabelObject["AutomaticSize"] = Enum.AutomaticSize.Y
	LabelObject["Size"] = UDim2.new(1, -20, 0, 18)
	LabelObject["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	LabelObject["BackgroundTransparency"] = 1
	LabelObject["Parent"] = parent

	local Title = Instance.new("TextLabel")
	Title["TextWrapped"] = true
	Title["BorderSizePixel"] = 0
	Title["RichText"] = true
	Title["Name"] = "Title"
	Title["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
	Title["FontFace"] = Font.new("rbxassetid://12187371324", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
	Title["AutomaticSize"] = Enum.AutomaticSize.Y
	Title["Size"] = UDim2.new(1, -40, 0, 18)
	Title["TextColor3"] = Color3.fromRGB(255, 255, 255)
	Title["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	Title["Text"] = "Label"
	Title["LayoutOrder"] = -1
	Title["BackgroundTransparency"] = 1
	Title["TextXAlignment"] = Enum.TextXAlignment.Left
	Title["TextSize"] = 18
	Title["Parent"] = LabelObject

	local UIFlexItem = Instance.new("UIFlexItem")
	UIFlexItem["FlexMode"] = Enum.UIFlexMode.Fill
	UIFlexItem["Parent"] = Title

	local Copy = Instance.new("ImageButton")
	Copy["BorderSizePixel"] = 0
	Copy["Name"] = "Copy"
	Copy["BackgroundTransparency"] = 1
	Copy["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
	Copy["AnchorPoint"] = Vector2.new(1, 0)
	Copy["Image"] = "http://www.roblox.com/asset/?id=6035053278"
	Copy["Size"] = UDim2.new(0, 15, 0, 15)
	Copy["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	Copy["Position"] = UDim2.new(1, -20, 0, 0)
	Copy["Parent"] = LabelObject

	local Info = Instance.new("ImageButton")
	Info["BorderSizePixel"] = 0
	Info["Name"] = "Info"
	Info["BackgroundTransparency"] = 1
	Info["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
	Info["AnchorPoint"] = Vector2.new(1, 0)
	Info["Image"] = "http://www.roblox.com/asset/?id=6026568210"
	Info["Size"] = UDim2.new(0, 15, 0, 15)
	Info["LayoutOrder"] = 999
	Info["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	Info["Position"] = UDim2.new(1, 0, 0, 0)
	Info["Parent"] = LabelObject

	local UIListLayout = Instance.new("UIListLayout")
	UIListLayout["FillDirection"] = Enum.FillDirection.Horizontal
	UIListLayout["SortOrder"] = Enum.SortOrder.LayoutOrder
	UIListLayout["Padding"] = UDim.new(0, 5)
	UIListLayout["Parent"] = LabelObject
	
	return LabelObject
end

function module:CreateTextbox(parent)
	local TextboxObject = Instance.new("Frame")
	TextboxObject["BorderSizePixel"] = 0
	TextboxObject["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
	TextboxObject["Name"] = "TextboxObject"
	TextboxObject["AutomaticSize"] = Enum.AutomaticSize.Y
	TextboxObject["Size"] = UDim2.new(1, -20, 0, 18)
	TextboxObject["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	TextboxObject["BackgroundTransparency"] = 1
	TextboxObject["Parent"] = parent

	local Input = Instance.new("TextBox")
	Input["MultiLine"] = true
	Input["TextWrapped"] = true
	Input["BorderSizePixel"] = 0
	Input["Name"] = "Input"
	Input["RichText"] = true
	Input["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
	Input["FontFace"] = Font.new("rbxassetid://12187371324", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
	Input["Size"] = UDim2.new(1, -40, 0, 18)
	Input["TextSize"] = 18
	Input["TextColor3"] = Color3.fromRGB(255, 255, 255)
	Input["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	Input["Text"] = ""
	Input["BackgroundTransparency"] = 1
	Input["TextXAlignment"] = Enum.TextXAlignment.Left
	Input["ClearTextOnFocus"] = false
	Input["AutomaticSize"] = Enum.AutomaticSize.Y
	Input["Parent"] = TextboxObject

	local UIStroke = Instance.new("UIStroke")
	UIStroke["Color"] = Color3.fromRGB(255, 255, 255)
	UIStroke["Thickness"] = 2
	UIStroke["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
	UIStroke["Parent"] = Input

	local UIFlexItem = Instance.new("UIFlexItem")
	UIFlexItem["FlexMode"] = Enum.UIFlexMode.Fill
	UIFlexItem["Parent"] = Input

	local Copy = Instance.new("ImageButton")
	Copy["BorderSizePixel"] = 0
	Copy["Name"] = "Copy"
	Copy["BackgroundTransparency"] = 1
	Copy["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
	Copy["AnchorPoint"] = Vector2.new(1, 0)
	Copy["Image"] = "http://www.roblox.com/asset/?id=6035053278"
	Copy["Size"] = UDim2.new(0, 15, 0, 15)
	Copy["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	Copy["Position"] = UDim2.new(1, -20, 0, 0)
	Copy["Parent"] = TextboxObject

	local Info = Instance.new("ImageButton")
	Info["BorderSizePixel"] = 0
	Info["Name"] = "Info"
	Info["BackgroundTransparency"] = 1
	Info["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
	Info["AnchorPoint"] = Vector2.new(1, 0)
	Info["Image"] = "http://www.roblox.com/asset/?id=6026568210"
	Info["Size"] = UDim2.new(0, 15, 0, 15)
	Info["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	Info["Position"] = UDim2.new(1, 0, 0, 0)
	Info["Parent"] = TextboxObject

	local UIListLayout = Instance.new("UIListLayout")
	UIListLayout["FillDirection"] = Enum.FillDirection.Horizontal
	UIListLayout["SortOrder"] = Enum.SortOrder.LayoutOrder
	UIListLayout["Padding"] = UDim.new(0, 5)
	UIListLayout["Parent"] = TextboxObject
	
	return TextboxObject
end

function module:CreateButton(parent)
	local ButtonObject = Instance.new("Frame")
	ButtonObject["BorderSizePixel"] = 0
	ButtonObject["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
	ButtonObject["Name"] = "ButtonObject"
	ButtonObject["AutomaticSize"] = Enum.AutomaticSize.Y
	ButtonObject["Size"] = UDim2.new(1, -20, 0, 18)
	ButtonObject["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	ButtonObject["BackgroundTransparency"] = 1
	ButtonObject["Parent"] = parent

	local Info = Instance.new("ImageButton")
	Info["BorderSizePixel"] = 0
	Info["Name"] = "Info"
	Info["BackgroundTransparency"] = 1
	Info["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
	Info["AnchorPoint"] = Vector2.new(1, 0)
	Info["Image"] = "http://www.roblox.com/asset/?id=6026568210"
	Info["Size"] = UDim2.new(0, 15, 0, 15)
	Info["LayoutOrder"] = 999
	Info["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	Info["Position"] = UDim2.new(1, 0, 0, 0)
	Info["Parent"] = ButtonObject

	local UIListLayout = Instance.new("UIListLayout")
	UIListLayout["FillDirection"] = Enum.FillDirection.Horizontal
	UIListLayout["SortOrder"] = Enum.SortOrder.LayoutOrder
	UIListLayout["Padding"] = UDim.new(0, 5)
	UIListLayout["Parent"] = ButtonObject

	local Keybind = Instance.new("TextButton")
	Keybind["BorderSizePixel"] = 0
	Keybind["RichText"] = true
	Keybind["Name"] = "Keybind"
	Keybind["AutoButtonColor"] = false
	Keybind["TextSize"] = 14
	Keybind["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
	Keybind["FontFace"] = Font.new("rbxassetid://12187371324", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
	Keybind["AutomaticSize"] = Enum.AutomaticSize.X
	Keybind["Size"] = UDim2.new(0, 10, 0, 18)
	Keybind["TextColor3"] = Color3.fromRGB(255, 255, 255)
	Keybind["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	Keybind["Text"] = "[KEYBIND]"
	Keybind["BackgroundTransparency"] = 1
	Keybind["Parent"] = ButtonObject

	local Title = Instance.new("TextButton")
	Title["LayoutOrder"] = -1
	Title["TextWrapped"] = true
	Title["BorderSizePixel"] = 0
	Title["RichText"] = true
	Title["Name"] = "Title"
	Title["AutoButtonColor"] = false
	Title["TextSize"] = 18
	Title["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
	Title["FontFace"] = Font.new("rbxassetid://12187371324", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
	Title["Size"] = UDim2.new(1, -95, 0, 18)
	Title["TextColor3"] = Color3.fromRGB(255, 255, 255)
	Title["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	Title["BackgroundTransparency"] = 1
	Title["Parent"] = ButtonObject

	local UIStroke = Instance.new("UIStroke")
	UIStroke["Color"] = Color3.fromRGB(255, 255, 255)
	UIStroke["Thickness"] = 2
	UIStroke["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
	UIStroke["Parent"] = Title

	local UIFlexItem = Instance.new("UIFlexItem")
	UIFlexItem["FlexMode"] = Enum.UIFlexMode.Fill
	UIFlexItem["Parent"] = Title

	local Frame = Instance.new("Frame")
	Frame["BorderSizePixel"] = 0
	Frame["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
	Frame["AnchorPoint"] = Vector2.new(0, 0.5)
	Frame["Size"] = UDim2.new(0, 10, 0, 10)
	Frame["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	Frame["BackgroundTransparency"] = 1
	Frame["Position"] = UDim2.new(0, 4, 0.5, 0)
	Frame["Parent"] = Title

	local UIStroke_1 = Instance.new("UIStroke")
	UIStroke_1["Color"] = Color3.fromRGB(255, 255, 255)
	UIStroke_1["Thickness"] = 0.5
	UIStroke_1["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
	UIStroke_1["Parent"] = Frame
	
	return ButtonObject
end

function module:CreateToggle(parent)
	local ToggleObject = Instance.new("Frame")
	ToggleObject["BorderSizePixel"] = 0
	ToggleObject["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
	ToggleObject["Name"] = "ToggleObject"
	ToggleObject["AutomaticSize"] = Enum.AutomaticSize.Y
	ToggleObject["Size"] = UDim2.new(1, -20, 0, 18)
	ToggleObject["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	ToggleObject["BackgroundTransparency"] = 1
	ToggleObject["Parent"] = parent

	local Info = Instance.new("ImageButton")
	Info["BorderSizePixel"] = 0
	Info["Name"] = "Info"
	Info["BackgroundTransparency"] = 1
	Info["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
	Info["AnchorPoint"] = Vector2.new(1, 0)
	Info["Image"] = "http://www.roblox.com/asset/?id=6026568210"
	Info["Size"] = UDim2.new(0, 15, 0, 15)
	Info["LayoutOrder"] = 999
	Info["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	Info["Position"] = UDim2.new(1, 0, 0, 0)
	Info["Parent"] = ToggleObject

	local UIListLayout = Instance.new("UIListLayout")
	UIListLayout["FillDirection"] = Enum.FillDirection.Horizontal
	UIListLayout["SortOrder"] = Enum.SortOrder.LayoutOrder
	UIListLayout["Padding"] = UDim.new(0, 5)
	UIListLayout["Parent"] = ToggleObject

	local Keybind = Instance.new("TextButton")
	Keybind["BorderSizePixel"] = 0
	Keybind["RichText"] = true
	Keybind["Name"] = "Keybind"
	Keybind["AutoButtonColor"] = false
	Keybind["TextSize"] = 14
	Keybind["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
	Keybind["FontFace"] = Font.new("rbxassetid://12187371324", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
	Keybind["AutomaticSize"] = Enum.AutomaticSize.X
	Keybind["Size"] = UDim2.new(0, 10, 0, 18)
	Keybind["TextColor3"] = Color3.fromRGB(255, 255, 255)
	Keybind["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	Keybind["Text"] = "[KEYBIND]"
	Keybind["BackgroundTransparency"] = 1
	Keybind["Parent"] = ToggleObject

	local Title = Instance.new("TextButton")
	Title["LayoutOrder"] = -1
	Title["TextWrapped"] = true
	Title["BorderSizePixel"] = 0
	Title["RichText"] = true
	Title["Name"] = "Title"
	Title["AutoButtonColor"] = false
	Title["TextSize"] = 18
	Title["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
	Title["FontFace"] = Font.new("rbxassetid://12187371324", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
	Title["Size"] = UDim2.new(1, -95, 0, 18)
	Title["TextColor3"] = Color3.fromRGB(255, 255, 255)
	Title["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	Title["Text"] = "Toggle (OFF)"
	Title["BackgroundTransparency"] = 1
	Title["Parent"] = ToggleObject

	local UIStroke = Instance.new("UIStroke")
	UIStroke["Color"] = Color3.fromRGB(255, 255, 255)
	UIStroke["Thickness"] = 2
	UIStroke["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
	UIStroke["Parent"] = Title

	local UIFlexItem = Instance.new("UIFlexItem")
	UIFlexItem["FlexMode"] = Enum.UIFlexMode.Fill
	UIFlexItem["Parent"] = Title
	
	return ToggleObject
end

function module:CreateSlider(parent)
	local SliderObject = Instance.new("Frame")
	SliderObject["BorderSizePixel"] = 0
	SliderObject["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
	SliderObject["Name"] = "SliderObject"
	SliderObject["Size"] = UDim2.new(1, -20, 0, 58)
	SliderObject["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	SliderObject["BackgroundTransparency"] = 1
	SliderObject["Parent"] = parent

	local Slider = Instance.new("Frame")
	Slider["ZIndex"] = 10
	Slider["BorderSizePixel"] = 0
	Slider["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
	Slider["Name"] = "Slider"
	Slider["AutomaticSize"] = Enum.AutomaticSize.Y
	Slider["Size"] = UDim2.new(1, 0, 0, 20)
	Slider["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	Slider["BackgroundTransparency"] = 1
	Slider["Position"] = UDim2.new(0, 0, 0, 20)
	Slider["Parent"] = SliderObject

	local ProgressBar = Instance.new("TextButton")
	ProgressBar["BorderSizePixel"] = 0
	ProgressBar["Name"] = "ProgressBar"
	ProgressBar["TextSize"] = 14
	ProgressBar["BackgroundColor3"] = Color3.fromRGB(30.00000011175871, 30.00000011175871, 30.00000011175871)
	ProgressBar["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
	ProgressBar["Size"] = UDim2.new(1, 0, 0, 18)
	ProgressBar["TextColor3"] = Color3.fromRGB(0, 0, 0)
	ProgressBar["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	ProgressBar["Text"] = ""
	ProgressBar["Font"] = Enum.Font.SourceSans
	ProgressBar["Parent"] = Slider

	local Marks = Instance.new("Folder")
	Marks["Name"] = "Marks"
	Marks["Parent"] = ProgressBar

	local Frame = Instance.new("Frame")
	Frame["SizeConstraint"] = Enum.SizeConstraint.RelativeYY
	Frame["ZIndex"] = 10
	Frame["BorderSizePixel"] = 0
	Frame["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
	Frame["AnchorPoint"] = Vector2.new(0.5, 0.5)
	Frame["Size"] = UDim2.new(0, 1, 0.75, 0)
	Frame["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	Frame["Position"] = UDim2.new(0.5, 0, 0.5, 0)
	Frame["Parent"] = Marks

	local UIStroke = Instance.new("UIStroke")
	UIStroke["Color"] = Color3.fromRGB(255, 255, 255)
	UIStroke["Thickness"] = 2
	UIStroke["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
	UIStroke["Parent"] = ProgressBar

	local Progress = Instance.new("TextLabel")
	Progress["TextWrapped"] = true
	Progress["BorderSizePixel"] = 0
	Progress["RichText"] = true
	Progress["Name"] = "Progress"
	Progress["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
	Progress["FontFace"] = Font.new("rbxassetid://12187371324", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
	Progress["AnchorPoint"] = Vector2.new(0.5, 0)
	Progress["AutomaticSize"] = Enum.AutomaticSize.X
	Progress["Size"] = UDim2.new(0, 10, 0, 18)
	Progress["Position"] = UDim2.new(0.20000000298023224, 0, 0, 20)
	Progress["TextColor3"] = Color3.fromRGB(255, 255, 255)
	Progress["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	Progress["Text"] = "200000"
	Progress["BackgroundTransparency"] = 1
	Progress["TextSize"] = 14
	Progress["Parent"] = ProgressBar

	local Bar = Instance.new("Frame")
	Bar["BorderSizePixel"] = 0
	Bar["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
	Bar["Name"] = "Bar"
	Bar["Size"] = UDim2.new(0.20000000298023224, 0, 1, 0)
	Bar["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	Bar["Parent"] = ProgressBar

	local Title = Instance.new("TextLabel")
	Title["TextWrapped"] = true
	Title["BorderSizePixel"] = 0
	Title["RichText"] = true
	Title["Name"] = "Title"
	Title["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
	Title["FontFace"] = Font.new("rbxassetid://12187371324", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
	Title["Size"] = UDim2.new(1, -20, 0, 18)
	Title["TextColor3"] = Color3.fromRGB(255, 255, 255)
	Title["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	Title["Text"] = "Slider"
	Title["BackgroundTransparency"] = 1
	Title["TextXAlignment"] = Enum.TextXAlignment.Left
	Title["TextSize"] = 18
	Title["Parent"] = SliderObject

	local Info = Instance.new("ImageButton")
	Info["BorderSizePixel"] = 0
	Info["Name"] = "Info"
	Info["BackgroundTransparency"] = 1
	Info["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
	Info["AnchorPoint"] = Vector2.new(1, 0)
	Info["Image"] = "http://www.roblox.com/asset/?id=6026568210"
	Info["Size"] = UDim2.new(0, 15, 0, 15)
	Info["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	Info["Position"] = UDim2.new(1, 0, 0, 0)
	Info["Parent"] = SliderObject

	local HoverMenu = Instance.new("Frame")
	HoverMenu["LayoutOrder"] = 1
	HoverMenu["BorderSizePixel"] = 0
	HoverMenu["BackgroundColor3"] = Color3.fromRGB(30.00000011175871, 30.00000011175871, 30.00000011175871)
	HoverMenu["Name"] = "HoverMenu"
	HoverMenu["Size"] = UDim2.new(1, 0, 0, 30)
	HoverMenu["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	HoverMenu["Position"] = UDim2.new(0, 0, 0, 10)
	HoverMenu["Parent"] = SliderObject

	local UIGradient = Instance.new("UIGradient")
	UIGradient["Rotation"] = -90
	UIGradient["Transparency"] = NumberSequence.new{
		NumberSequenceKeypoint.new(0, 0),
		NumberSequenceKeypoint.new(0.539,0),
		NumberSequenceKeypoint.new(0.67,1),
		NumberSequenceKeypoint.new(1, 1)
	}
	UIGradient["Parent"] = HoverMenu

	local Middle = Instance.new("TextLabel")
	Middle["TextWrapped"] = true
	Middle["BorderSizePixel"] = 0
	Middle["RichText"] = true
	Middle["Name"] = "Middle"
	Middle["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
	Middle["FontFace"] = Font.new("rbxassetid://12187371324", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
	Middle["AnchorPoint"] = Vector2.new(0.5, 1)
	Middle["AutomaticSize"] = Enum.AutomaticSize.X
	Middle["Size"] = UDim2.new(0, 10, 0, 18)
	Middle["Position"] = UDim2.new(0.5, 0, 1, 0)
	Middle["TextColor3"] = Color3.fromRGB(255, 255, 255)
	Middle["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	Middle["Text"] = "500000"
	Middle["BackgroundTransparency"] = 1
	Middle["TextSize"] = 14
	Middle["Parent"] = HoverMenu

	local Max = Instance.new("TextLabel")
	Max["TextWrapped"] = true
	Max["BorderSizePixel"] = 0
	Max["RichText"] = true
	Max["Name"] = "Max"
	Max["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
	Max["FontFace"] = Font.new("rbxassetid://12187371324", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
	Max["AnchorPoint"] = Vector2.new(1, 1)
	Max["AutomaticSize"] = Enum.AutomaticSize.X
	Max["Size"] = UDim2.new(0, 10, 0, 18)
	Max["Position"] = UDim2.new(1, 0, 1, 0)
	Max["TextColor3"] = Color3.fromRGB(255, 255, 255)
	Max["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	Max["Text"] = "1000000"
	Max["BackgroundTransparency"] = 1
	Max["TextSize"] = 14
	Max["Parent"] = HoverMenu

	local Min = Instance.new("TextLabel")
	Min["TextWrapped"] = true
	Min["BorderSizePixel"] = 0
	Min["RichText"] = true
	Min["Name"] = "Min"
	Min["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
	Min["FontFace"] = Font.new("rbxassetid://12187371324", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
	Min["AnchorPoint"] = Vector2.new(0, 1)
	Min["AutomaticSize"] = Enum.AutomaticSize.X
	Min["Size"] = UDim2.new(0, 10, 0, 18)
	Min["Position"] = UDim2.new(0, 0, 1, 0)
	Min["TextColor3"] = Color3.fromRGB(255, 255, 255)
	Min["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	Min["Text"] = "0"
	Min["BackgroundTransparency"] = 1
	Min["TextSize"] = 14
	Min["Parent"] = HoverMenu
	
	return SliderObject
end

function module:CreateContainer(parent)
	local ContainerObject = Instance.new("Frame")
	ContainerObject["BorderSizePixel"] = 0
	ContainerObject["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
	ContainerObject["Name"] = "ContainerObject"
	ContainerObject["AutomaticSize"] = Enum.AutomaticSize.Y
	ContainerObject["Size"] = UDim2.new(1, -20, 0, 32)
	ContainerObject["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	ContainerObject["BackgroundTransparency"] = 1
	ContainerObject["Parent"] = parent

	local UICorner = Instance.new("UICorner")
	UICorner["Parent"] = ContainerObject

	local ScrollingFrame = Instance.new("ScrollingFrame")
	ScrollingFrame["Active"] = true
	ScrollingFrame["BorderSizePixel"] = 0
	ScrollingFrame["CanvasSize"] = UDim2.new(0, 0, 1, 0)
	ScrollingFrame["AutomaticCanvasSize"] = Enum.AutomaticSize.Y
	ScrollingFrame["Size"] = UDim2.new(1, 0, 0, 100)
	ScrollingFrame["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	ScrollingFrame["ScrollBarThickness"] = 2
	ScrollingFrame["ScrollingDirection"] = Enum.ScrollingDirection.Y
	ScrollingFrame["BackgroundTransparency"] = 1
	ScrollingFrame["Position"] = UDim2.new(0, 0, 0, 20)
	ScrollingFrame["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
	ScrollingFrame["Parent"] = ContainerObject

	local UIListLayout = Instance.new("UIListLayout")
	UIListLayout["HorizontalAlignment"] = Enum.HorizontalAlignment.Center
	UIListLayout["SortOrder"] = Enum.SortOrder.LayoutOrder
	UIListLayout["Padding"] = UDim.new(0, 10)
	UIListLayout["Parent"] = ScrollingFrame

	local UIStroke = Instance.new("UIStroke")
	UIStroke["Color"] = Color3.fromRGB(255, 255, 255)
	UIStroke["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
	UIStroke["Parent"] = ScrollingFrame

	local UIGradient = Instance.new("UIGradient")
	UIGradient["Color"] = ColorSequence.new(Color3.new(1,1,1))
	UIGradient["Rotation"] = 90
	UIGradient["Transparency"] = NumberSequence.new{
		NumberSequenceKeypoint.new(0, 0),
		NumberSequenceKeypoint.new(0.25,1),
		NumberSequenceKeypoint.new(0.75,1),
		NumberSequenceKeypoint.new(1, 0)
	}
	UIGradient["Parent"] = UIStroke

	local BufferBottom = Instance.new("Frame")
	BufferBottom["LayoutOrder"] = 99999
	BufferBottom["BorderSizePixel"] = 0
	BufferBottom["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
	BufferBottom["Name"] = "BufferBottom"
	BufferBottom["Size"] = UDim2.new(1, 0, 0, 2)
	BufferBottom["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	BufferBottom["BackgroundTransparency"] = 1
	BufferBottom["Position"] = UDim2.new(0, 0, 0, 32)
	BufferBottom["Parent"] = ScrollingFrame

	local BufferTop = Instance.new("Frame")
	BufferTop["LayoutOrder"] = -1
	BufferTop["BorderSizePixel"] = 0
	BufferTop["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
	BufferTop["Name"] = "BufferTop"
	BufferTop["Size"] = UDim2.new(1, 0, 0, 2)
	BufferTop["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	BufferTop["BackgroundTransparency"] = 1
	BufferTop["Position"] = UDim2.new(0, 0, 0, 32)
	BufferTop["Parent"] = ScrollingFrame

	local Bar = Instance.new("Frame")
	Bar["BorderSizePixel"] = 0
	Bar["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
	Bar["Name"] = "Bar"
	Bar["Size"] = UDim2.new(1, 0, 0, 15)
	Bar["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	Bar["BackgroundTransparency"] = 1
	Bar["Parent"] = ContainerObject

	local Info = Instance.new("ImageButton")
	Info["BorderSizePixel"] = 0
	Info["Name"] = "Info"
	Info["BackgroundTransparency"] = 1
	Info["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
	Info["AnchorPoint"] = Vector2.new(1, 0)
	Info["Image"] = "http://www.roblox.com/asset/?id=6026568210"
	Info["Size"] = UDim2.new(0, 15, 0, 15)
	Info["LayoutOrder"] = 999
	Info["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	Info["Position"] = UDim2.new(1, 0, 0, 0)
	Info["Parent"] = Bar

	local Title = Instance.new("TextLabel")
	Title["TextWrapped"] = true
	Title["BorderSizePixel"] = 0
	Title["RichText"] = true
	Title["Name"] = "Title"
	Title["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
	Title["FontFace"] = Font.new("rbxassetid://12187371324", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
	Title["Size"] = UDim2.new(1, -20, 0, 18)
	Title["TextColor3"] = Color3.fromRGB(255, 255, 255)
	Title["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	Title["Text"] = "Container"
	Title["LayoutOrder"] = -1
	Title["BackgroundTransparency"] = 1
	Title["TextXAlignment"] = Enum.TextXAlignment.Left
	Title["TextSize"] = 18
	Title["Parent"] = Bar

	local UIFlexItem = Instance.new("UIFlexItem")
	UIFlexItem["FlexMode"] = Enum.UIFlexMode.Fill
	UIFlexItem["Parent"] = Title

	local UIListLayout_1 = Instance.new("UIListLayout")
	UIListLayout_1["FillDirection"] = Enum.FillDirection.Horizontal
	UIListLayout_1["SortOrder"] = Enum.SortOrder.LayoutOrder
	UIListLayout_1["Padding"] = UDim.new(0, 5)
	UIListLayout_1["Parent"] = Bar

	local ToggleContainer = Instance.new("Frame")
	ToggleContainer["BorderSizePixel"] = 0
	ToggleContainer["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
	ToggleContainer["Name"] = "ToggleContainer"
	ToggleContainer["Size"] = UDim2.new(0, 15, 0, 15)
	ToggleContainer["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	ToggleContainer["BackgroundTransparency"] = 1
	ToggleContainer["Parent"] = Bar

	local MenuToggle = Instance.new("ImageButton")
	MenuToggle["BorderSizePixel"] = 0
	MenuToggle["Name"] = "MenuToggle"
	MenuToggle["BackgroundTransparency"] = 1
	MenuToggle["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
	MenuToggle["Image"] = "http://www.roblox.com/asset/?id=6034818372"
	MenuToggle["Size"] = UDim2.new(0, 15, 0, 15)
	MenuToggle["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	MenuToggle["Parent"] = ToggleContainer
	
	return ContainerObject
end

function module:CreateDropdown(parent)
	local DropdownObject = Instance.new("Frame")
	DropdownObject["BorderSizePixel"] = 0
	DropdownObject["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
	DropdownObject["Name"] = "DropdownObject"
	DropdownObject["AutomaticSize"] = Enum.AutomaticSize.Y
	DropdownObject["Size"] = UDim2.new(1, -20, 0, 32)
	DropdownObject["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	DropdownObject["BackgroundTransparency"] = 1
	DropdownObject["Parent"] = parent

	local UICorner = Instance.new("UICorner")
	UICorner["Parent"] = DropdownObject

	local ScrollingFrame = Instance.new("ScrollingFrame")
	ScrollingFrame["Active"] = true
	ScrollingFrame["BorderSizePixel"] = 0
	ScrollingFrame["CanvasSize"] = UDim2.new(0, 0, 1, 0)
	ScrollingFrame["AutomaticCanvasSize"] = Enum.AutomaticSize.Y
	ScrollingFrame["Size"] = UDim2.new(1, 0, 0, 100)
	ScrollingFrame["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	ScrollingFrame["ScrollBarThickness"] = 2
	ScrollingFrame["ScrollingDirection"] = Enum.ScrollingDirection.Y
	ScrollingFrame["BackgroundTransparency"] = 1
	ScrollingFrame["Position"] = UDim2.new(0, 0, 0, 20)
	ScrollingFrame["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
	ScrollingFrame["Parent"] = DropdownObject

	local UIStroke = Instance.new("UIStroke")
	UIStroke["Color"] = Color3.fromRGB(255, 255, 255)
	UIStroke["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
	UIStroke["Parent"] = ScrollingFrame

	local UIGradient = Instance.new("UIGradient")
	UIGradient["Color"] = ColorSequence.new(Color3.new(1,1,1))
	UIGradient["Rotation"] = 90
	UIGradient["Transparency"] = NumberSequence.new{
		NumberSequenceKeypoint.new(0, 0),
		NumberSequenceKeypoint.new(0.25, 1),
		NumberSequenceKeypoint.new(0.75, 1),
		NumberSequenceKeypoint.new(1, 0)
	}
	UIGradient["Parent"] = UIStroke

	local BufferBottom = Instance.new("Frame")
	BufferBottom["LayoutOrder"] = 99999
	BufferBottom["BorderSizePixel"] = 0
	BufferBottom["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
	BufferBottom["Name"] = "BufferBottom"
	BufferBottom["Size"] = UDim2.new(1, 0, 0, 2)
	BufferBottom["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	BufferBottom["BackgroundTransparency"] = 1
	BufferBottom["Position"] = UDim2.new(0, 0, 0, 32)
	BufferBottom["Parent"] = ScrollingFrame

	local UIListLayout = Instance.new("UIListLayout")
	UIListLayout["HorizontalAlignment"] = Enum.HorizontalAlignment.Center
	UIListLayout["SortOrder"] = Enum.SortOrder.LayoutOrder
	UIListLayout["Padding"] = UDim.new(0, 5)
	UIListLayout["Parent"] = ScrollingFrame

	local BufferTop = Instance.new("Frame")
	BufferTop["LayoutOrder"] = -1
	BufferTop["BorderSizePixel"] = 0
	BufferTop["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
	BufferTop["Name"] = "BufferTop"
	BufferTop["Size"] = UDim2.new(1, 0, 0, 2)
	BufferTop["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	BufferTop["BackgroundTransparency"] = 1
	BufferTop["Position"] = UDim2.new(0, 0, 0, 32)
	BufferTop["Parent"] = ScrollingFrame

	local Bar = Instance.new("Frame")
	Bar["LayoutOrder"] = 1
	Bar["BorderSizePixel"] = 0
	Bar["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
	Bar["Name"] = "Bar"
	Bar["Size"] = UDim2.new(1, 0, 0, 15)
	Bar["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	Bar["BackgroundTransparency"] = 1
	Bar["Parent"] = DropdownObject

	local Info = Instance.new("ImageButton")
	Info["ZIndex"] = 5
	Info["BorderSizePixel"] = 0
	Info["Name"] = "Info"
	Info["BackgroundTransparency"] = 1
	Info["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
	Info["AnchorPoint"] = Vector2.new(1, 0)
	Info["Image"] = "http://www.roblox.com/asset/?id=6026568210"
	Info["Size"] = UDim2.new(0, 15, 0, 15)
	Info["LayoutOrder"] = 999
	Info["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	Info["Position"] = UDim2.new(1, 0, 0, 0)
	Info["Parent"] = Bar

	local Title = Instance.new("TextLabel")
	Title["TextWrapped"] = true
	Title["BorderSizePixel"] = 0
	Title["RichText"] = true
	Title["Name"] = "Title"
	Title["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
	Title["FontFace"] = Font.new("rbxassetid://12187371324", Enum.FontWeight.Bold, Enum.FontStyle.Normal)
	Title["Size"] = UDim2.new(1, -20, 0, 18)
	Title["TextColor3"] = Color3.fromRGB(255, 255, 255)
	Title["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	Title["Text"] = "Container"
	Title["LayoutOrder"] = -1
	Title["BackgroundTransparency"] = 1
	Title["TextXAlignment"] = Enum.TextXAlignment.Left
	Title["TextSize"] = 18
	Title["Parent"] = Bar

	local UIFlexItem = Instance.new("UIFlexItem")
	UIFlexItem["FlexMode"] = Enum.UIFlexMode.Fill
	UIFlexItem["Parent"] = Title

	local UIListLayout_1 = Instance.new("UIListLayout")
	UIListLayout_1["FillDirection"] = Enum.FillDirection.Horizontal
	UIListLayout_1["SortOrder"] = Enum.SortOrder.LayoutOrder
	UIListLayout_1["Padding"] = UDim.new(0, 5)
	UIListLayout_1["Parent"] = Bar

	local ToggleContainer = Instance.new("Frame")
	ToggleContainer["BorderSizePixel"] = 0
	ToggleContainer["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
	ToggleContainer["Name"] = "ToggleContainer"
	ToggleContainer["Size"] = UDim2.new(0, 15, 0, 15)
	ToggleContainer["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	ToggleContainer["BackgroundTransparency"] = 1
	ToggleContainer["Parent"] = Bar

	local MenuToggle = Instance.new("ImageButton")
	MenuToggle["ZIndex"] = 5
	MenuToggle["BorderSizePixel"] = 0
	MenuToggle["Name"] = "MenuToggle"
	MenuToggle["BackgroundTransparency"] = 1
	MenuToggle["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
	MenuToggle["Image"] = "http://www.roblox.com/asset/?id=6034818372"
	MenuToggle["Size"] = UDim2.new(0, 15, 0, 15)
	MenuToggle["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	MenuToggle["Parent"] = ToggleContainer

	local Fade = Instance.new("Frame")
	Fade["ZIndex"] = 4
	Fade["BorderSizePixel"] = 0
	Fade["BackgroundColor3"] = Color3.fromRGB(30.00000201165676, 30.00000201165676, 30.00000201165676)
	Fade["AnchorPoint"] = Vector2.new(1, 0)
	Fade["Name"] = "Fade"
	Fade["Size"] = UDim2.new(0, 100, 0, 18)
	Fade["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	Fade["Position"] = UDim2.new(1, 40, 0, 0)
	Fade["Parent"] = ToggleContainer

	local UIGradient_1 = Instance.new("UIGradient")
	UIGradient_1["Rotation"] = 180
	UIGradient_1["Transparency"] = NumberSequence.new{
		NumberSequenceKeypoint.new(0, 0),
		NumberSequenceKeypoint.new(0.539, 0),
		NumberSequenceKeypoint.new(0.67, 1),
		NumberSequenceKeypoint.new(1, 1)
	}
	UIGradient_1["Parent"] = Fade

	local Sidebar = Instance.new("Frame")
	Sidebar["BorderSizePixel"] = 0
	Sidebar["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
	Sidebar["AnchorPoint"] = Vector2.new(1, 0)
	Sidebar["Name"] = "Sidebar"
	Sidebar["Size"] = UDim2.new(0, 210, 0, 18)
	Sidebar["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	Sidebar["BackgroundTransparency"] = 1
	Sidebar["Position"] = UDim2.new(1, -20, 0, 0)
	Sidebar["Parent"] = ToggleContainer

	local Searchbar = Instance.new("TextBox")
	Searchbar["BorderSizePixel"] = 0
	Searchbar["Name"] = "Searchbar"
	Searchbar["BackgroundColor3"] = Color3.fromRGB(25.000002309679985, 25.000002309679985, 25.000002309679985)
	Searchbar["FontFace"] = Font.new("rbxasset://fonts/families/SourceSansPro.json", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
	Searchbar["Size"] = UDim2.new(0, 100, 0, 18)
	Searchbar["AnchorPoint"] = Vector2.new(1, 0)
	Searchbar["Position"] = UDim2.new(1, 0, 0, 0)
	Searchbar["PlaceholderText"] = "Search..."
	Searchbar["TextSize"] = 18
	Searchbar["TextColor3"] = Color3.fromRGB(255, 255, 255)
	Searchbar["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	Searchbar["Text"] = ""
	Searchbar["Font"] = Enum.Font.SourceSans
	Searchbar["Parent"] = Sidebar

	local Item = Instance.new("TextLabel")
	Item["TextWrapped"] = true
	Item["ZIndex"] = 10
	Item["BorderSizePixel"] = 0
	Item["RichText"] = true
	Item["Name"] = "Item"
	Item["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
	Item["FontFace"] = Font.new("rbxassetid://12187371324", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
	Item["AnchorPoint"] = Vector2.new(1, 0)
	Item["Size"] = UDim2.new(0, 100, 0, 18)
	Item["Position"] = UDim2.new(1, -115, 0, 0)
	Item["TextColor3"] = Color3.fromRGB(255, 255, 255)
	Item["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	Item["Text"] = "None selected"
	Item["BackgroundTransparency"] = 1
	Item["TextXAlignment"] = Enum.TextXAlignment.Right
	Item["TextSize"] = 14
	Item["Parent"] = Sidebar
	
	return DropdownObject
end

function module:CreateItem(parent)
	local ItemObject = Instance.new("Frame")
	ItemObject["BorderSizePixel"] = 0
	ItemObject["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
	ItemObject["Name"] = "ItemObject"
	ItemObject["AutomaticSize"] = Enum.AutomaticSize.Y
	ItemObject["Size"] = UDim2.new(1, -20, 0, 18)
	ItemObject["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	ItemObject["BackgroundTransparency"] = 1
	ItemObject["Parent"] = parent

	local TextButton = Instance.new("TextButton")
	TextButton["TextWrapped"] = true
	TextButton["BorderSizePixel"] = 0
	TextButton["RichText"] = true
	TextButton["TextSize"] = 18
	TextButton["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
	TextButton["FontFace"] = Font.new("rbxassetid://12187371324", Enum.FontWeight.Regular, Enum.FontStyle.Normal)
	TextButton["AutomaticSize"] = Enum.AutomaticSize.Y
	TextButton["Size"] = UDim2.new(1, 0, 0, 18)
	TextButton["TextColor3"] = Color3.fromRGB(255, 255, 255)
	TextButton["BorderColor3"] = Color3.fromRGB(0, 0, 0)
	TextButton["Text"] = "Item 2"
	TextButton["BackgroundTransparency"] = 1
	TextButton["Parent"] = ItemObject

	local UIStroke = Instance.new("UIStroke")
	UIStroke["Color"] = Color3.fromRGB(255, 255, 255)
	UIStroke["Thickness"] = 2
	UIStroke["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border
	UIStroke["Parent"] = TextButton
	
	return ItemObject
end

return module
