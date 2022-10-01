local library = {}
local TweenService = game:GetService("TweenService")
local UIS = game:GetService("UserInputService")
local InputService = game:GetService('UserInputService');
local TextService = game:GetService('TextService');
local TweenService = game:GetService('TweenService');
local CoreGui = game:GetService('CoreGui');
local RunService = game:GetService('RunService')
local GuiService = game:GetService('GuiService')
local RenderStepped = RunService.RenderStepped;
local plrs = game:GetService('Players')
local LocalPlayer = game:GetService('Players').LocalPlayer;
local Mouse = LocalPlayer:GetMouse();

-- SHIT UI LIBRARY STAARTS -

local Bracket = Instance.new("ScreenGui")
local ALL = Instance.new("Frame")
local GUI = Instance.new("Frame")
local Upper = Instance.new("Frame")
local line = Instance.new("Frame")
local TitleHub = Instance.new("TextLabel")
local TabHolderUpper = Instance.new("Frame")
local TABHOLDERLIST = Instance.new("UIListLayout")


local ALL_ = ALL
--Properties:

Bracket.Name = "Bracket"
Bracket.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Bracket.ResetOnSpawn = false

ALL.Name = "ALL"
ALL.Parent = Bracket
ALL.BackgroundColor3 = Color3.fromRGB(111, 111, 111)
ALL.BorderSizePixel = 0
ALL.ClipsDescendants = false
ALL.Position = UDim2.new(0.332360744, 0, 0.0604788996, 0)
ALL.Size = UDim2.new(0, 481, 0, 567)

if syn then
	syn.protect_gui(Bracket)
else
	if gethui then
		Bracket.Parent = gethui()
	else
		Bracket.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")

	end
end
GUI.Name = "GUI"
GUI.Parent = ALL
GUI.AnchorPoint = Vector2.new(0.5, 0.5)
GUI.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
GUI.BorderSizePixel = 0
GUI.Position = UDim2.new(0.5, 0, 0.5, 0)
GUI.Size = UDim2.new(0.995000005, 0, 0.995000005, 0)

Upper.Name = "Upper"
Upper.Parent = GUI
Upper.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
Upper.BorderSizePixel = 0
Upper.Size = UDim2.new(0, 479, 0, 23)

line.Name = "line"
line.Parent = Upper
line.BackgroundColor3 = Color3.fromRGB(111, 111, 111)
line.BorderSizePixel = 0
line.Position = UDim2.new(0, 0, 0.86804533, 0)
line.Size = UDim2.new(0, 479, 0, 2)
TABHOLDERLIST.Padding = UDim.new(0, 7)

TitleHub.Name = "TitleHub"
TitleHub.Parent = Upper
TitleHub.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TitleHub.BackgroundTransparency = 1.000
TitleHub.BorderSizePixel = 0
TitleHub.Position = UDim2.new(0.0160630848, 0, 0, 0)
TitleHub.Size = UDim2.new(0, 220, 0, 21)
TitleHub.Font = Enum.Font.Cartoon
TitleHub.Text = "Affinity Hub"
TitleHub.TextColor3 = Color3.fromRGB(255, 255, 255)
TitleHub.TextSize = 16.000
TitleHub.TextXAlignment = Enum.TextXAlignment.Left

TabHolderUpper.Name = "TabHolderUpper"
TabHolderUpper.Parent = ALL
TabHolderUpper.BackgroundColor3 = Color3.fromRGB(10, 10, 10)
TabHolderUpper.BorderColor3 = Color3.fromRGB(27, 42, 53)
TabHolderUpper.BorderSizePixel = 0
TabHolderUpper.Position = UDim2.new(0.026002245, 0, 0.042526044, 0)
TabHolderUpper.Size = UDim2.new(0, 461, 0, 18)
TabHolderUpper.ZIndex = 2

TABHOLDERLIST.Name = "TABHOLDERLIST"
TABHOLDERLIST.Parent = TabHolderUpper
TABHOLDERLIST.FillDirection = Enum.FillDirection.Horizontal
TABHOLDERLIST.SortOrder = Enum.SortOrder.LayoutOrder


local Holder = Instance.new("ImageLabel")

Holder.Name = "Holder"
Holder.Parent = ALL
Holder.AnchorPoint = Vector2.new(0.5, 0)
Holder.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
Holder.BorderColor3 = Color3.fromRGB(25, 25, 25)
Holder.BorderSizePixel = 0
Holder.Position = UDim2.new(0.50038296, 0, 0.042526044, 20)
Holder.Size = UDim2.new(1.01021302, -10, 0.965368867, -25)
Holder.ZIndex = 2
Holder.Image = "rbxassetid://5553946656"
Holder.ImageColor3 = Color3.fromRGB(0, 0, 0)
Holder.ScaleType = Enum.ScaleType.Tile
Holder.TileSize = UDim2.new(0, 100, 0, 100)
Holder.Visible = true



local tweenTime = 0.125
local tweenInfo = TweenInfo.new(
	tweenTime,
	Enum.EasingStyle.Linear,
	Enum.EasingDirection.Out
)

local TweenService = game:GetService("TweenService")
local UIS = game:GetService("UserInputService")


function AddRipple(button)
	local obj = button
	button.ClipsDescendants = true
	local function Ripple()
		spawn(
			function()
				local Mouse = game.Players.LocalPlayer:GetMouse()
				local Circle = Instance.new("ImageLabel")
				Circle.Name = "Circle"
				Circle.Parent = obj
				Circle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				Circle.BackgroundTransparency = 1.000
				Circle.ZIndex = 99
				Circle.Image = "rbxassetid://266543268"
				Circle.ImageColor3 = Color3.fromRGB(211, 211, 211)
				Circle.ImageTransparency = 0.6
				local NewX = Mouse.X - Circle.AbsolutePosition.X
				local NewY = Mouse.Y - Circle.AbsolutePosition.Y
				Circle.Position = UDim2.new(0, NewX, 0, NewY)
				local Size = 0
				if obj.AbsoluteSize.X > obj.AbsoluteSize.Y then
					Size = obj.AbsoluteSize.X * 1.5
				elseif obj.AbsoluteSize.X < obj.AbsoluteSize.Y then
					Size = obj.AbsoluteSize.Y * 1.5
				elseif obj.AbsoluteSize.X == obj.AbsoluteSize.Y then
					Size = obj.AbsoluteSize.X * 1.5
				end
				Circle:TweenSizeAndPosition(
					UDim2.new(0, Size, 0, Size),
					UDim2.new(0.5, -Size / 2, 0.5, -Size / 2),
					"Out",
					"Quad",
					0.25,
					false
				)
				for i = 1, 15 do
					Circle.ImageTransparency = Circle.ImageTransparency + 0.05
					wait()
				end
				Circle:Destroy()
			end
		)
	end

	local Background = Instance.new("Frame")
	local CornerRadius = Instance.new("UICorner")
	Background.Name = "Background"
	Background.Parent = button
	Background.AnchorPoint = Vector2.new(0.5, 0.5)
	Background.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Background.BackgroundTransparency = 1.000
	Background.ClipsDescendants = true
	Background.Position = UDim2.new(0.5, 0, 0.5, 0)
	Background.Size = UDim2.new(1, 0, 1, 0)
	CornerRadius.CornerRadius = UDim.new(0, 4)
	CornerRadius.Name = "CornerRadius"
	CornerRadius.Parent = Background
	local Players = game:GetService("Players")
	local RunService = game:GetService("RunService")

	local mouse = Players.LocalPlayer:GetMouse()

	local background = button:WaitForChild("Background")

	local active = false
	local hovering = false

	local function OnMouseButton1Down()
		local backgroundFadeIn = TweenService:Create(background, tweenInfo, { BackgroundTransparency = 0.80 })
		backgroundFadeIn:Play()
	end

	local function OnMouseButton1Up()
		local backgroundFadeIn = TweenService:Create(background, tweenInfo, { BackgroundTransparency = 1 })
		backgroundFadeIn:Play()
	end

	local function OnMouseEnter()
		hovering = true

		local backgroundFadeIn = TweenService:Create(background, tweenInfo, { BackgroundTransparency = 0.95 })

		backgroundFadeIn:Play()

		backgroundFadeIn.Completed:Wait()

		local backgroundFadeOut = TweenService:Create(background, tweenInfo, { BackgroundTransparency = 1 })

		repeat wait() until not hovering

		backgroundFadeOut:Play()
	end

	local function OnMouseLeave()
		hovering = false
		active = false
	end
	button.MouseButton1Down:Connect(OnMouseButton1Down)
	button.MouseButton1Up:Connect(OnMouseButton1Up)
	button.MouseEnter:Connect(OnMouseEnter)
	button.MouseLeave:Connect(OnMouseLeave)
	button.MouseButton1Click:Connect(Ripple)
end

local uis = game:GetService("UserInputService")
local function draggable(obj)
	local globals = {}
	globals.dragging=nil
	globals.uiorigin=nil
	globals.morigin=nil
	obj.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			globals.dragging = true
			globals.uiorigin = obj.Position
			globals.morigin = input.Position
			input.Changed:Connect(function()
				if input.UserInputState == Enum.UserInputState.End then
					globals.dragging = false
				end
			end)
		end
	end)
	uis.InputChanged:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseMovement and globals.dragging then
			local change = input.Position - globals.morigin
			obj.Position = UDim2.new(globals.uiorigin.X.Scale,globals.uiorigin.X.Offset+change.X,globals.uiorigin.Y.Scale,globals.uiorigin.Y.Offset+change.Y)
		end
	end)
end

draggable(ALL)


function getchars(text)
	local chars = 0;
	for i=1,#text do
		chars = i;
	end
	return chars
end

function library:ChangeTitle(text)
	TitleHub.Text = text
end



function library:CreateWindow(text)
	local finalsize = 0;
	local k = {}

	local TABBUTTON = Instance.new("TextButton")
	local LINE = Instance.new("Frame")
	local SIDESHOLDER = Instance.new("ScrollingFrame")
	local _1 = Instance.new("Frame")
	local UIListLayout = Instance.new("UIListLayout")
	local Frame = Instance.new("Frame")

	--Properties:


	Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Frame.BackgroundTransparency = 1.000
	Frame.BorderSizePixel = 0
	Frame.Position = UDim2.new(0.282608688, 0, 0.400709212, 0)
	Frame.Size = UDim2.new(0, 1, 0, 0)
	Frame.Parent = _1

	TABBUTTON.Name = "TABBUTTON"
	TABBUTTON.Parent = TabHolderUpper
	TABBUTTON.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TABBUTTON.BackgroundTransparency = 1.000
	TABBUTTON.BorderSizePixel = 0
	TABBUTTON.Size = UDim2.new(0, 81, 0, 18)
	TABBUTTON.ZIndex = 2
	TABBUTTON.AutoButtonColor = false
	TABBUTTON.Font = Enum.Font.SourceSansBold
	TABBUTTON.Text = text
	TABBUTTON.TextColor3 = Color3.fromRGB(255, 255, 255)
	TABBUTTON.TextSize = 17.000

	LINE.Name = "LINE"
	LINE.Parent = TABBUTTON
	LINE.AnchorPoint = Vector2.new(0.5, 0.5)
	LINE.BackgroundColor3 = Color3.fromRGB(111, 111, 111)
	LINE.BorderSizePixel = 0
	LINE.Position = UDim2.new(0.50999999, 0, 1.05555558, 0)
	LINE.Size = UDim2.new(0, 0, 0, 2)
	LINE.ZIndex = 2

	SIDESHOLDER.Name = "WINDOW"
	SIDESHOLDER.Parent = ALL
	SIDESHOLDER.Active = true
	SIDESHOLDER.AnchorPoint = Vector2.new(0.5, 0.5)
	SIDESHOLDER.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	SIDESHOLDER.BackgroundTransparency = 1.000
	SIDESHOLDER.BorderSizePixel = 0
	SIDESHOLDER.Position = UDim2.new(0.49999997, 0, 0.543946087, 0)
	SIDESHOLDER.Size = UDim2.new(0, 457, 0, 513)
	SIDESHOLDER.ZIndex = 20
	SIDESHOLDER.BottomImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
	SIDESHOLDER.CanvasSize = UDim2.new(0, 0, 0, 0)
	SIDESHOLDER.ScrollBarThickness = 3
	SIDESHOLDER.TopImage = "rbxasset://textures/ui/Scroll/scroll-middle.png"
	SIDESHOLDER.Visible = false
	SIDESHOLDER.ClipsDescendants = true

	_1.Name = "1"
	_1.Parent = SIDESHOLDER
	_1.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	_1.BackgroundTransparency = 1.000
	_1.BorderSizePixel = 0
	_1.Position = UDim2.new(-0.029540481, 0, 0, 0)
	_1.Size = UDim2.new(0, 230, 0, 564)
	_1.ZIndex = 2

	UIListLayout.Parent = _1
	UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout.Padding = UDim.new(0, 13)
	UIListLayout.Name = "LIST"

	local UIListLayout_3 = Instance.new("UIListLayout")
	local _2 = Instance.new("Frame")
	local UIListLayout_4 = Instance.new("UIListLayout")


	UIListLayout_3.Parent = SIDESHOLDER
	UIListLayout_3.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout_3.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder

	_2.Name = "2"
	_2.Parent = SIDESHOLDER
	_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	_2.BackgroundTransparency = 1.000
	_2.BorderSizePixel = 0
	_2.Position = UDim2.new(0.474989474, 0, 0, 0)
	_2.Size = UDim2.new(0, 230, 0, 564)
	_2.ZIndex = 2
	local Frame = Instance.new("Frame")

	--Properties:


	Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Frame.BackgroundTransparency = 1.000
	Frame.BorderSizePixel = 0
	Frame.Position = UDim2.new(0.282608688, 0, 0.400709212, 0)
	Frame.Size = UDim2.new(0, 1, 0, 0)
	Frame.Parent = _2
	UIListLayout_4.Parent = _2
	UIListLayout_4.HorizontalAlignment = Enum.HorizontalAlignment.Center
	UIListLayout_4.SortOrder = Enum.SortOrder.LayoutOrder
	UIListLayout_4.Padding = UDim.new(0, 13)
	UIListLayout_4.Name = "LIST"
	local final
	for i=1,getchars(text) do
		if #text > 5 then
			finalsize+=8
		else
			finalsize+=10
		end
	end
	TweenService:Create(SIDESHOLDER, TweenInfo.new(0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {ScrollBarImageTransparency = 1}):Play()	

	SIDESHOLDER.MouseEnter:Connect(function()
		TweenService:Create(SIDESHOLDER, TweenInfo.new(0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {ScrollBarImageTransparency = 0}):Play()	
	end)

	SIDESHOLDER.MouseLeave:Connect(function()
		TweenService:Create(SIDESHOLDER, TweenInfo.new(0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {ScrollBarImageTransparency = 1}):Play()	
	end)

	TABBUTTON.Size = UDim2.new(0, finalsize, 0, 18)

	TABBUTTON.MouseButton1Click:Connect(function()
		for i,v in pairs(TabHolderUpper:GetChildren()) do
			if v:IsA('TextButton') and v ~= TABBUTTON then
				TweenService:Create(v, TweenInfo.new(0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {TextColor3 = Color3.fromRGB(107, 107, 107)}):Play()	
				v.LINE:TweenSize(UDim2.new(0,0,0,2),"Out","Quint",0.4,true)
			end
		end
		for i,v in pairs(ALL:GetChildren()) do
			if v.Name == 'WINDOW' then
				v.Visible = false
			end
		end
		SIDESHOLDER.Visible = true
		TweenService:Create(TABBUTTON, TweenInfo.new(0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {TextColor3 = Color3.fromRGB(255, 255, 255)}):Play()	
		LINE:TweenSize(UDim2.new(0,finalsize,0,2),"Out","Quint",0.4,true)
	end)

	function k:AddSection(text,side)
		local u = {};


		local Section = Instance.new("Frame")
		local HOLDER = Instance.new("Frame")
		local UIListLayout_2 = Instance.new("UIListLayout")
		local UPPERHOLDER = Instance.new("Frame")
		local TITLESECION = Instance.new("TextLabel")
		local CORNY = Instance.new("UICorner")
		local LINE_4 = Instance.new("Frame")
		UIListLayout_2.Padding = UDim.new(0, 13)


		LINE_4.Name = "LINE"
		LINE_4.Parent = Section
		LINE_4.AnchorPoint = Vector2.new(0.5, 0.5)
		LINE_4.BackgroundColor3 = Color3.fromRGB(143, 143, 143)
		LINE_4.BorderSizePixel = 0
		LINE_4.Position = UDim2.new(0.5, 0, 0.5, 0)
		LINE_4.Size = UDim2.new(1, 5, 1, 5)
		LINE_4.ZIndex = 8

		Section.Name = "Section"
		Section.Parent = _1
		Section.BackgroundColor3 = Color3.fromRGB(20, 20, 20)
		Section.BorderSizePixel = 0
		Section.Position = UDim2.new(0.0238107722, 0, 0, 0)
		Section.Size = UDim2.new(0, 214, 0, 141)
		Section.ZIndex = 13

		HOLDER.Name = "HOLDER"
		HOLDER.Parent = Section
		HOLDER.AnchorPoint = Vector2.new(0.5, 0.5)
		HOLDER.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
		HOLDER.BorderSizePixel = 0
		HOLDER.Position = UDim2.new(0.5, 0, 0.5, 0)
		HOLDER.Size = UDim2.new(1, 3, 1, 3)
		HOLDER.ZIndex = 11

		UIListLayout_2.Parent = HOLDER
		UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
		UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
		UIListLayout_2.Padding = UDim.new(0, 4)

		UPPERHOLDER.Name = "UPPERHOLDER"
		UPPERHOLDER.Parent = HOLDER
		UPPERHOLDER.BackgroundColor3 = Color3.fromRGB(18, 18, 18)
		UPPERHOLDER.BackgroundTransparency = 1.000
		UPPERHOLDER.BorderColor3 = Color3.fromRGB(143, 143, 143)
		UPPERHOLDER.BorderSizePixel = 0
		UPPERHOLDER.Size = UDim2.new(0, 188, 0, 17)
		UPPERHOLDER.ZIndex = 15

		TITLESECION.Name = "TITLESECION"
		TITLESECION.Parent = UPPERHOLDER
		TITLESECION.BackgroundColor3 = Color3.fromRGB(57, 57, 57)
		TITLESECION.BackgroundTransparency = 1.000
		TITLESECION.BorderColor3 = Color3.fromRGB(27, 42, 53)
		TITLESECION.BorderSizePixel = 0
		TITLESECION.Position = UDim2.new(0,-7,0,2)
		TITLESECION.Size = UDim2.new(0, 204, 0, 14)
		TITLESECION.ZIndex = 17
		TITLESECION.Font = Enum.Font.Cartoon
		TITLESECION.Text = text
		TITLESECION.TextColor3 = Color3.fromRGB(255, 255, 255)
		TITLESECION.TextSize = 16.000
		TITLESECION.TextXAlignment = Enum.TextXAlignment.Left

		CORNY.CornerRadius = UDim.new(0, 5)
		CORNY.Name = "CORNY"
		CORNY.Parent = TITLESECION

		local function UpdateMainSize()
			local LeftSize =  UIListLayout.AbsoluteContentSize.Y
			local RightSize =  UIListLayout_4.AbsoluteContentSize.Y
			if LeftSize > RightSize then
				SIDESHOLDER.CanvasSize = UDim2.fromOffset(0, UIListLayout.AbsoluteContentSize.Y + 15)
			elseif LeftSize < RightSize then
				SIDESHOLDER.CanvasSize = UDim2.fromOffset(0, UIListLayout_4.AbsoluteContentSize.Y + 15)
			end
		end

		-- Gui to Lua
		-- Version: 3.2

		-- Instances:


		if side == 1 then
			Section.Parent = _1
		elseif side == 2 then
			Section.Parent = _2

		end
		function u:AddButton(text,action)
			text = text or "Not Defined"
			action = action or function() print('Not defined') end

			local TemplateButton = Instance.new("Frame")
			local LINE_2 = Instance.new("Frame")
			local UIGradient = Instance.new("UIGradient")
			local TextLabel = Instance.new("TextLabel")
			local LINE_3 = Instance.new("Frame")
			local Interactive = Instance.new("TextButton")

			TemplateButton.Name = "TemplateButton"
			TemplateButton.Parent = HOLDER
			TemplateButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TemplateButton.BorderSizePixel = 0
			TemplateButton.Position = UDim2.new(0.32631579, 0, 0.534722209, 0)
			TemplateButton.Size = UDim2.new(0, 194, 0, 17)
			TemplateButton.ZIndex = 14

			LINE_2.Name = "LINE"
			LINE_2.Parent = TemplateButton
			LINE_2.AnchorPoint = Vector2.new(0.5, 0.5)
			LINE_2.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
			LINE_2.BorderSizePixel = 0
			LINE_2.Position = UDim2.new(0.5, 0, 0.5, 0)
			LINE_2.Size = UDim2.new(1, 2, 1, 2)
			LINE_2.ZIndex = 13

			UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(24, 24, 24)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(27, 27, 27))}
			UIGradient.Rotation = 270
			UIGradient.Parent = TemplateButton

			TextLabel.Parent = TemplateButton
			TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel.BackgroundTransparency = 1.000
			TextLabel.BorderSizePixel = 0
			TextLabel.Size = UDim2.new(0, 194, 0, 17)
			TextLabel.ZIndex = 15
			TextLabel.Font = Enum.Font.SourceSansSemibold
			TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel.TextSize = 14.000
			TextLabel.Text = text
			LINE_3.Name = "LINE"
			LINE_3.Parent = TemplateButton
			LINE_3.AnchorPoint = Vector2.new(0.5, 0.5)
			LINE_3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			LINE_3.BorderSizePixel = 0
			LINE_3.Position = UDim2.new(0.5, 0, 0.5, 0)
			LINE_3.Size = UDim2.new(1, 3, 1, 3)
			LINE_3.ZIndex = 12

			Interactive.Name = "Interactive"
			Interactive.Parent = TemplateButton
			Interactive.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Interactive.BackgroundTransparency = 1.000
			Interactive.BorderSizePixel = 0
			Interactive.Size = UDim2.new(0, 194, 0, 18)
			Interactive.ZIndex = 20
			Interactive.Font = Enum.Font.SourceSans
			Interactive.Text = ""
			Interactive.TextColor3 = Color3.fromRGB(0, 0, 0)
			Interactive.TextSize = 20.000
			Interactive.MouseEnter:Connect(function()
				TweenService:Create(LINE_2, TweenInfo.new(0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {BackgroundColor3 = Color3.fromRGB(80, 80, 80)}):Play()	

			end)
			Interactive.MouseLeave:Connect(function()
				TweenService:Create(LINE_2, TweenInfo.new(0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {BackgroundColor3 = Color3.fromRGB(49, 49, 49)}):Play()	

			end)
			AddRipple(Interactive)

			Interactive.MouseButton1Click:Connect(function()
				pcall(function() action() end)

			end)
		end

		function u:AddToggle(Text,Value,Action)
			local p = {}
			Text = Text or "Nil Toggle"


			local val = Value or false;

			local TemplateToggle = Instance.new("Frame")
			local TextLabel = Instance.new("TextLabel")
			local Interactive = Instance.new("TextButton")
			local Frame = Instance.new("Frame")
			local Frame_2 = Instance.new("Frame")
			local Frame_3 = Instance.new("Frame")



			TemplateToggle.Name = "TemplateToggle"
			TemplateToggle.Parent = HOLDER
			TemplateToggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TemplateToggle.BackgroundTransparency = 1.000
			TemplateToggle.BorderSizePixel = 0
			TemplateToggle.Position = UDim2.new(0.154377878, 0, 0.184895828, 0)
			TemplateToggle.Size = UDim2.new(0, 187, 0, 17)
			TemplateToggle.ZIndex = 14

			TextLabel.Parent = TemplateToggle
			TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel.BackgroundTransparency = 1.000
			TextLabel.BorderSizePixel = 0
			TextLabel.Position = UDim2.new(0.113,0,0.059,0)
			TextLabel.Size = UDim2.new(0, 163, 0, 15)
			TextLabel.ZIndex = 15
			TextLabel.Font = Enum.Font.SourceSansSemibold
			TextLabel.Text = Text
			TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel.TextSize = 14.000
			TextLabel.TextXAlignment = Enum.TextXAlignment.Left

			Interactive.Name = "Interactive"
			Interactive.Parent = TemplateToggle
			Interactive.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Interactive.BackgroundTransparency = 1.000
			Interactive.BorderSizePixel = 0
			Interactive.Position = UDim2.new(-0.0240641702, 0, 0, 0)
			Interactive.Size = UDim2.new(0, 19, 0, 18)
			Interactive.ZIndex = 20
			Interactive.Font = Enum.Font.SourceSans
			Interactive.Text = ""
			Interactive.TextColor3 = Color3.fromRGB(0, 0, 0)
			Interactive.TextSize = 20.000

			Frame.Parent = TemplateToggle
			Frame.AnchorPoint = Vector2.new(0.5, 0.5)
			Frame.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
			Frame.BorderSizePixel = 0
			Frame.Position = UDim2.new(0.0286951847, 0, 0.5, 0)
			Frame.Size = UDim2.new(0, 13, 0, 13)
			Frame.ZIndex = 15

			Frame_2.Parent = Frame
			Frame_2.AnchorPoint = Vector2.new(0.5, 0.5)
			Frame_2.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
			Frame_2.BorderSizePixel = 0
			Frame_2.Position = UDim2.new(0.5, 0, 0.5, 0)
			Frame_2.Size = UDim2.new(1, 2, 1, 2)
			Frame_2.ZIndex = 14

			Frame_3.Parent = Frame
			Frame_3.AnchorPoint = Vector2.new(0.5, 0.5)
			Frame_3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			Frame_3.BorderSizePixel = 0
			Frame_3.Position = UDim2.new(0.5, 0, 0.5, 0)
			Frame_3.Size = UDim2.new(1, 3, 1, 3)
			Frame_3.ZIndex = 13


			local WAIT = true;

			if  val == false then
				WAIT = false;
				pcall(function()
					Action(val)
				end)
				TweenService:Create(Frame, TweenInfo.new(0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {BackgroundColor3 = Color3.fromRGB(28, 28, 28)}):Play()	
				WAIT = true
			else
				WAIT = false;
				pcall(function()
					Action(val)
				end)
				TweenService:Create(Frame, TweenInfo.new(0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {BackgroundColor3 = Color3.fromRGB(99, 255, 135)}):Play()
				WAIT = true
			end

			Interactive.MouseEnter:Connect(function()
				TweenService:Create(Frame_2, TweenInfo.new(0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {BackgroundColor3 = Color3.fromRGB(80, 80, 80)}):Play()	

			end)
			Interactive.MouseLeave:Connect(function()
				TweenService:Create(Frame_2, TweenInfo.new(0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {BackgroundColor3 = Color3.fromRGB(49, 49, 49)}):Play()	

			end)
			Interactive.MouseButton1Click:Connect(function()
				if val then
					WAIT = false;
					val = not val;
					pcall(function()
						Action(val)
					end)
					TweenService:Create(Frame, TweenInfo.new(0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {BackgroundColor3 = Color3.fromRGB(28, 28, 28)}):Play()	
					WAIT = true
				else
					WAIT = false;
					val = not val;
					pcall(function()
						Action(val)
					end)
					TweenService:Create(Frame, TweenInfo.new(0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {BackgroundColor3 = Color3.fromRGB(99, 255, 135)}):Play()
					WAIT = true
				end
			end)

			function p:ChangeValue(v)
				val =  v
				if val then
					WAIT = false;
					val = not val;
					pcall(function()
						Action(val)
					end)
					TweenService:Create(Frame, TweenInfo.new(0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {BackgroundColor3 = Color3.fromRGB(28, 28, 28)}):Play()	

					WAIT = true
				else
					WAIT = false;
					val = not val;
					pcall(function()
						Action(val)
					end)
					TweenService:Create(Frame, TweenInfo.new(0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {BackgroundColor3 = Color3.fromRGB(99, 255, 135)}):Play()

					WAIT = true
				end
			end

			local list = Section.Parent.LIST

			Section.Size = UDim2.fromOffset(Section.AbsoluteSize.X,  UIListLayout_2.AbsoluteContentSize.Y + 14)
			UpdateMainSize()
			return p
		end

		function u:AddDropdown(Text,tbl,sel,Action)
			local s = '';
			local K = false;
			Text = Text or  'Notdefined'
			if sel == nil then error('selectedd needs to be something invalid argument (3)') return  end

			local Templatedropdown = Instance.new("Frame")
			local LINE = Instance.new("Frame")
			local UIGradient = Instance.new("UIGradient")
			local LINE_2 = Instance.new("Frame")
			local Interactive = Instance.new("TextButton")
			local DRPDOWN = Instance.new("Frame")
			local UICorner = Instance.new("UICorner")
			local UIListLayout = Instance.new("UIListLayout")
			local GIRACOSA = Instance.new("TextLabel")


			local TextLabel = Instance.new("TextLabel")

			--Properties:

			TextLabel.Parent = Templatedropdown
			TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel.BackgroundTransparency = 1.000
			TextLabel.BorderSizePixel = 0
			TextLabel.Size = UDim2.new(0, 194, 0, 17)
			TextLabel.ZIndex = 30
			TextLabel.Font = Enum.Font.SourceSansSemibold
			TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel.TextSize = 14.000
			TextLabel.Text =Text
			--Properties:

			GIRACOSA.Name = "GIRACOSA"
			GIRACOSA.Parent = Templatedropdown
			GIRACOSA.AnchorPoint = Vector2.new(0.5, 0.5)
			GIRACOSA.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			GIRACOSA.BackgroundTransparency = 1.000
			GIRACOSA.BorderSizePixel = 0
			GIRACOSA.Position = UDim2.new(0.927938163, 0, 0.491176486, 0)
			GIRACOSA.Size = UDim2.new(0, 10, 0, 14)
			GIRACOSA.ZIndex = 30
			GIRACOSA.Font = Enum.Font.SourceSansSemibold
			GIRACOSA.Text = "+"
			GIRACOSA.TextColor3 = Color3.fromRGB(255, 255, 255)
			GIRACOSA.TextSize = 16.000
			GIRACOSA.TextXAlignment = Enum.TextXAlignment.Right


			--Properties:

			Templatedropdown.Name = "Templatedropdown"
			Templatedropdown.Parent = HOLDER
			Templatedropdown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Templatedropdown.BorderSizePixel = 0
			Templatedropdown.Position = UDim2.new(0.0345622115, 0, 0.1640625, 0)
			Templatedropdown.Size = UDim2.new(0, 194, 0, 17)
			Templatedropdown.ZIndex = 27

			LINE.Name = "LINE"
			LINE.Parent = Templatedropdown
			LINE.AnchorPoint = Vector2.new(0.5, 0.5)
			LINE.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
			LINE.BorderSizePixel = 0
			LINE.Position = UDim2.new(0.5, 0, 0.5, 0)
			LINE.Size = UDim2.new(1, 2, 1, 2)
			LINE.ZIndex = 26

			Interactive.MouseEnter:Connect(function()
				TweenService:Create(LINE, TweenInfo.new(0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {BackgroundColor3 = Color3.fromRGB(80, 80, 80)}):Play()	

			end)
			Interactive.MouseLeave:Connect(function()
				TweenService:Create(LINE, TweenInfo.new(0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {BackgroundColor3 = Color3.fromRGB(49, 49, 49)}):Play()	

			end)

			UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(24, 24, 24)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(27, 27, 27))}
			UIGradient.Rotation = 270
			UIGradient.Parent = Templatedropdown


			LINE_2.Parent = Templatedropdown
			LINE_2.AnchorPoint = Vector2.new(0.5, 0.5)
			LINE_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			LINE_2.BorderSizePixel = 0
			LINE_2.Position = UDim2.new(0.5, 0, 0.5, 0)
			LINE_2.Size = UDim2.new(1, 3, 1, 3)
			LINE_2.ZIndex = 25

			Interactive.Name = "Interactive"
			Interactive.Parent = Templatedropdown
			Interactive.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Interactive.BackgroundTransparency = 1.000
			Interactive.BorderSizePixel = 0
			Interactive.Size = UDim2.new(0, 195, 0, 18)
			Interactive.ZIndex = 40
			Interactive.Font = Enum.Font.SourceSans
			Interactive.Text = ""
			Interactive.TextColor3 = Color3.fromRGB(0, 0, 0)
			Interactive.TextSize = 20.000

			DRPDOWN.Name = "DRPDOWN"
			DRPDOWN.Parent = Templatedropdown
			DRPDOWN.BackgroundColor3 = Color3.fromRGB(11, 11, 10)
			DRPDOWN.BackgroundTransparency = 1.000
			DRPDOWN.BorderSizePixel = 0
			DRPDOWN.Position = UDim2.new(-0.00236652815, 0, 1.29856598, 0)
			DRPDOWN.Size = UDim2.new(0, 195, 0, 34)
			DRPDOWN.Visible = false
			DRPDOWN.ZIndex = 26

			UICorner.CornerRadius = UDim.new(0, 4)
			UICorner.Parent = DRPDOWN

			UIListLayout.Parent = DRPDOWN
			UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
			UIListLayout.Padding = UDim.new(0, 3)

			Interactive.MouseButton1Click:Connect(function()
				if  K then
					TweenService:Create(GIRACOSA , TweenInfo.new(0.26, Enum.EasingStyle.Quad , Enum.EasingDirection.Out), {Rotation = 180}):Play()	
					DRPDOWN.Visible = false
					K = not K
				else
					DRPDOWN.Visible = true
					TweenService:Create(GIRACOSA , TweenInfo.new(0.26, Enum.EasingStyle.Quad , Enum.EasingDirection.Out), {Rotation = 0}):Play()	
					K = not K
				end

			end)
			AddRipple(Interactive)

			for i,v in pairs(tbl) do
				local option = Instance.new("Frame")
				local OPTNION = Instance.new("Frame")
				local OPTNION_2 = Instance.new("UIGradient")
				local optntext = Instance.new("TextLabel")
				local OPTNION_3 = Instance.new("Frame")
				local optInteractive = Instance.new("TextButton")

				option.Name = "option"
				option.Parent = DRPDOWN
				option.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				option.BorderSizePixel = 0
				option.Position = UDim2.new(0.025641026, 0, 0.0882352963, 0)
				option.Size = UDim2.new(0, 183, 0, 17)
				option.ZIndex = 27

				OPTNION.Name = "OPTNION"
				OPTNION.Parent = option
				OPTNION.AnchorPoint = Vector2.new(0.5, 0.5)
				OPTNION.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
				OPTNION.BorderSizePixel = 0
				OPTNION.Position = UDim2.new(0.5, 0, 0.5, 0)
				OPTNION.Size = UDim2.new(1, 2, 1, 2)
				OPTNION.ZIndex = 26

				OPTNION_2.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(24, 24, 24)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(27, 27, 27))}
				OPTNION_2.Rotation = 270
				OPTNION_2.Name = "OPTNION"
				OPTNION_2.Parent = option

				optntext.Name = "txt"
				optntext.Parent = option
				optntext.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				optntext.BackgroundTransparency = 1.000
				optntext.BorderSizePixel = 0
				optntext.Position = UDim2.new(-0.0173491593, 0, 0, 0)
				optntext.Size = UDim2.new(0, 190, 0, 17)
				optntext.ZIndex = 28
				optntext.Font = Enum.Font.SourceSansSemibold
				optntext.Text = v
				optntext.TextColor3 = Color3.fromRGB(138, 138, 138)
				optntext.TextSize = 14.000

				OPTNION_3.Name = "OPTNION"
				OPTNION_3.Parent = option
				OPTNION_3.AnchorPoint = Vector2.new(0.5, 0.5)
				OPTNION_3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
				OPTNION_3.BorderSizePixel = 0
				OPTNION_3.Position = UDim2.new(0.5, 0, 0.5, 0)
				OPTNION_3.Size = UDim2.new(1, 3, 1, 3)
				OPTNION_3.ZIndex = 24

				optInteractive.Name = "optInteractive"
				optInteractive.Parent = option
				optInteractive.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
				optInteractive.BackgroundTransparency = 1.000
				optInteractive.BorderSizePixel = 0
				optInteractive.Size = UDim2.new(0, 183, 0, 18)
				optInteractive.ZIndex = 40
				optInteractive.Font = Enum.Font.SourceSans
				optInteractive.Text = ""
				optInteractive.TextColor3 = Color3.fromRGB(0, 0, 0)
				optInteractive.TextSize = 20.000




				if sel == v and v ~= optntext.Text then
					TweenService:Create(optntext , TweenInfo.new(0.26, Enum.EasingStyle.Quad , Enum.EasingDirection.InOut), {TextColor3 = Color3.fromRGB(131, 148, 255)}):Play()	

					s = sel;
				else
					TweenService:Create(optntext , TweenInfo.new(0.26, Enum.EasingStyle.Quad , Enum.EasingDirection.InOut), {TextColor3 = Color3.fromRGB(255, 255, 255)}):Play()	

				end

				optInteractive.MouseButton1Click:Connect(function()
					for i,v in pairs(DRPDOWN:GetChildren()) do
						if v.Name == 'option'  then

							TweenService:Create(v.txt , TweenInfo.new(0.26, Enum.EasingStyle.Quad , Enum.EasingDirection.InOut), {TextColor3 = Color3.fromRGB(255,255,255)}):Play()	
						end	
					end
					s=optntext.Text
					TweenService:Create(optntext , TweenInfo.new(0.26, Enum.EasingStyle.Quad , Enum.EasingDirection.InOut), {TextColor3 = Color3.fromRGB(131, 148, 255)}):Play()	
					pcall(function()
						Action(s)
					end)
				end)

				AddRipple(optInteractive)
			end

			local list = Section.Parent.LIST

			Section.Size = UDim2.fromOffset(Section.AbsoluteSize.X,  UIListLayout_2.AbsoluteContentSize.Y + 16)
			UpdateMainSize()
		end

		function u:AddIP(Text, Def, Action)


			local ALL = Instance.new("Frame")
			local Holder = Instance.new("ImageLabel")
			local GUI = Instance.new("Frame")
			local Upper = Instance.new("Frame")
			local line = Instance.new("Frame")
			local TitleHub = Instance.new("TextLabel")
			local Templatedropdown = Instance.new("Frame")
			local LINE = Instance.new("Frame")
			local UIGradient = Instance.new("UIGradient")
			local TextLabel = Instance.new("TextLabel")
			local LINE_2 = Instance.new("Frame")
			local Interactive = Instance.new("TextButton")
			local BodypartSelect = Instance.new("ImageLabel")
			local hjfd = Instance.new("UICorner")
			local BACKGROUND = Instance.new("ImageLabel")
			local Body = Instance.new("ImageLabel")
			local Torso = Instance.new("ImageButton")
			local BodyHitBox = Instance.new("Frame")
			local Head = Instance.new("TextButton")
			local UICorner = Instance.new("UICorner")
			local LeftArm = Instance.new("TextButton")
			local UICorner_2 = Instance.new("UICorner")
			local Torso_2 = Instance.new("TextButton")
			local UICorner_3 = Instance.new("UICorner")
			local RightLeg = Instance.new("TextButton")
			local UICorner_4 = Instance.new("UICorner")
			local RightArm = Instance.new("TextButton")
			local UICorner_5 = Instance.new("UICorner")
			local LeftLeg = Instance.new("TextButton")
			local UICorner_6 = Instance.new("UICorner")
			local Head_2 = Instance.new("ImageButton")
			local UIPadding = Instance.new("UIPadding")
			local sdfh = Instance.new("UIPadding")

			local XXX = Def
			local parts = {};
			for i,v in pairs(BodyHitBox:GetChildren()) do
				table.insert(parts,v.Name)
			end
			local function Aimpart(s)
				for i,v in next, parts do
					local p=v
					if p and p:lower():sub(1,#s)==string.lower(s) then
						return p or false
					end
				end
			end
			AddRipple(Interactive)
			local default = parts[Aimpart(Def)]
			--Properties:

			ALL.Name = "INTERACTIVE PREVIEW"
			ALL.Parent = ALL_
			ALL.BackgroundColor3 = Color3.fromRGB(111, 111, 111)
			ALL.BorderSizePixel = 0
			ALL.Position = UDim2.new(1.02119613, 0, -0.00014989078, 0)
			ALL.Size = UDim2.new(0, 199, 0, 276)
			ALL.Visible = false


			Holder.Name = "Holder"
			Holder.Parent = ALL
			Holder.AnchorPoint = Vector2.new(0.5, 0)
			Holder.BackgroundColor3 = Color3.fromRGB(15, 15, 15)
			Holder.BorderColor3 = Color3.fromRGB(25, 25, 25)
			Holder.BorderSizePixel = 0
			Holder.Position = UDim2.new(0.500383079, 0, 0.0292682368, 20)
			Holder.Size = UDim2.new(1.01021302, -10, 0.985347688, -25)
			Holder.ZIndex = 2
			Holder.Image = "rbxassetid://5553946656"
			Holder.ImageColor3 = Color3.fromRGB(0, 0, 0)
			Holder.ScaleType = Enum.ScaleType.Tile
			Holder.TileSize = UDim2.new(0, 100, 0, 100)

			GUI.Name = "GUI"
			GUI.Parent = ALL
			GUI.AnchorPoint = Vector2.new(0.5, 0.5)
			GUI.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			GUI.BorderSizePixel = 0
			GUI.Position = UDim2.new(0.5, 0, 0.5, 0)
			GUI.Size = UDim2.new(0.99000001, 0, 0.992999971, 0)

			Upper.Name = "Upper"
			Upper.Parent = GUI
			Upper.BackgroundColor3 = Color3.fromRGB(17, 17, 17)
			Upper.BorderSizePixel = 0
			Upper.Position = UDim2.new(0.0155579085, 0, 0.00361298607, 0)
			Upper.Size = UDim2.new(0, 193, 0, 24)

			line.Name = "line"
			line.Parent = Upper
			line.BackgroundColor3 = Color3.fromRGB(111, 111, 111)
			line.BorderSizePixel = 0
			line.Position = UDim2.new(-0.0158811584, 0, 0.868045986, 0)
			line.Size = UDim2.new(0, 197, 0, 1)

			TitleHub.Name = "TitleHub"
			TitleHub.Parent = Upper
			TitleHub.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TitleHub.BackgroundTransparency = 1.000
			TitleHub.BorderSizePixel = 0
			TitleHub.Position = UDim2.new(0.0160629991, 0, 0, 0)
			TitleHub.Size = UDim2.new(0, 163, 0, 21)
			TitleHub.Font = Enum.Font.Cartoon
			TitleHub.Text = "Interactive Preview"
			TitleHub.TextColor3 = Color3.fromRGB(255, 255, 255)
			TitleHub.TextSize = 16.000
			TitleHub.TextXAlignment = Enum.TextXAlignment.Left

			Templatedropdown.Name = "Templatedropdown"
			Templatedropdown.Parent = ALL
			Templatedropdown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Templatedropdown.BorderSizePixel = 0
			Templatedropdown.Position = UDim2.new(0.0778143033, 0, 0.878905952, 0)
			Templatedropdown.Size = UDim2.new(0, 167, 0, 17)
			Templatedropdown.ZIndex = 14

			LINE.Name = "LINE"
			LINE.Parent = Templatedropdown
			LINE.AnchorPoint = Vector2.new(0.5, 0.5)
			LINE.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
			LINE.BorderSizePixel = 0
			LINE.Position = UDim2.new(0.5, 0, 0.5, 0)
			LINE.Size = UDim2.new(1, 2, 1, 2)
			LINE.ZIndex = 13

			UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(24, 24, 24)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(27, 27, 27))}
			UIGradient.Rotation = 270
			UIGradient.Parent = Templatedropdown

			TextLabel.Parent = Templatedropdown
			TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel.BackgroundTransparency = 1.000
			TextLabel.BorderSizePixel = 0
			TextLabel.Position = UDim2.new(-0.0119760484, 0, 0.0588235296, 0)
			TextLabel.Size = UDim2.new(0, 168, 0, 14)
			TextLabel.ZIndex = 15
			TextLabel.Font = Enum.Font.SourceSansSemibold
			TextLabel.Text = "Close Preview"
			TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel.TextSize = 14.000

			LINE_2.Name = "LINE"
			LINE_2.Parent = Templatedropdown
			LINE_2.AnchorPoint = Vector2.new(0.5, 0.5)
			LINE_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			LINE_2.BorderSizePixel = 0
			LINE_2.Position = UDim2.new(0.5, 0, 0.5, 0)
			LINE_2.Size = UDim2.new(1, 3, 1, 3)
			LINE_2.ZIndex = 12

			Interactive.Name = "Interactive"
			Interactive.Parent = Templatedropdown
			Interactive.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Interactive.BackgroundTransparency = 1.000
			Interactive.BorderSizePixel = 0
			Interactive.Size = UDim2.new(0, 168, 0, 18)
			Interactive.ZIndex = 20
			Interactive.Font = Enum.Font.SourceSans
			Interactive.Text = ""
			Interactive.TextColor3 = Color3.fromRGB(0, 0, 0)
			Interactive.TextSize = 20.000

			BodypartSelect.Name = "BodypartSelect"
			BodypartSelect.Parent = ALL
			BodypartSelect.AnchorPoint = Vector2.new(0.5, 0.5)
			BodypartSelect.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			BodypartSelect.BackgroundTransparency = 1.000
			BodypartSelect.BorderSizePixel = 0
			BodypartSelect.ClipsDescendants = true
			BodypartSelect.Position = UDim2.new(0, 98, 0, 135)
			BodypartSelect.Size = UDim2.new(0, 168, 0, 205)
			BodypartSelect.ZIndex = 3
			BodypartSelect.Image = "http://www.roblox.com/asset/?id=9805981848"
			BodypartSelect.ScaleType = Enum.ScaleType.Crop
			BodypartSelect.SliceScale = 0.000

			hjfd.CornerRadius = UDim.new(0, 5)
			hjfd.Name = "hjfd"
			hjfd.Parent = BodypartSelect

			BACKGROUND.Name = "BACKGROUND"
			BACKGROUND.Parent = BodypartSelect
			BACKGROUND.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			BACKGROUND.BackgroundTransparency = 1.000
			BACKGROUND.BorderSizePixel = 0
			BACKGROUND.ClipsDescendants = true
			BACKGROUND.Position = UDim2.new(0, -4, 0, -4)
			BACKGROUND.Size = UDim2.new(1, 8, 1, 8)
			BACKGROUND.ZIndex = 3
			BACKGROUND.Image = "http://www.roblox.com/asset/?id=9731691467"
			BACKGROUND.ImageColor3 = Color3.fromRGB(26, 26, 26)
			BACKGROUND.ImageTransparency = 1.000
			BACKGROUND.ScaleType = Enum.ScaleType.Slice
			BACKGROUND.SliceCenter = Rect.new(6, 6, 94, 94)

			Body.Name = "Body"
			Body.Parent = BACKGROUND
			Body.AnchorPoint = Vector2.new(0.5, 0.5)
			Body.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Body.BackgroundTransparency = 1.000
			Body.BorderSizePixel = 0
			Body.Position = UDim2.new(0.5, 0, 0.479695439, 17)
			Body.Size = UDim2.new(0, 125, 0, 124)
			Body.ZIndex = 3
			Body.Image = "http://www.roblox.com/asset/?id=9807578695"

			Torso.Name = "Torso"
			Torso.Parent = Body
			Torso.AnchorPoint = Vector2.new(0.5, 0)
			Torso.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Torso.BackgroundTransparency = 1.000
			Torso.BorderSizePixel = 0
			Torso.Position = UDim2.new(0.5, 0, 0, -2)
			Torso.Size = UDim2.new(0, 63, 0, 63)
			Torso.ZIndex = 4
			Torso.AutoButtonColor = false
			Torso.Image = "http://www.roblox.com/asset/?id=9807591983"

			BodyHitBox.Name = "BodyHitBox"
			BodyHitBox.Parent = Body
			BodyHitBox.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			BodyHitBox.BackgroundTransparency = 1.000
			BodyHitBox.BorderSizePixel = 0
			BodyHitBox.Position = UDim2.new(0, 0, -0.29838711, 0)
			BodyHitBox.Size = UDim2.new(0, 125, 0, 174)
			BodyHitBox.ZIndex = 3

			Head.Name = "Head"
			Head.Parent = BodyHitBox
			Head.BackgroundColor3 = Color3.fromRGB(255, 79, 79)
			Head.BackgroundTransparency = 0.400
			Head.BorderSizePixel = 0
			Head.Position = UDim2.new(0.360000014, 0, 0.0114942528, 0)
			Head.Size = UDim2.new(0, 35, 0, 35)
			Head.ZIndex = 5
			Head.AutoButtonColor = false
			Head.Font = Enum.Font.SourceSans
			Head.Text = ""
			Head.TextColor3 = Color3.fromRGB(0, 0, 0)
			Head.TextSize = 14.000

			UICorner.CornerRadius = UDim.new(0, 7)
			UICorner.Parent = Head

			LeftArm.Name = "Left Arm"
			LeftArm.Parent = BodyHitBox
			LeftArm.BackgroundColor3 = Color3.fromRGB(255, 79, 79)
			LeftArm.BackgroundTransparency = 0.400
			LeftArm.BorderSizePixel = 0
			LeftArm.Position = UDim2.new(0, 0, 0.212643683, 0)
			LeftArm.Size = UDim2.new(0, 31, 0, 61)
			LeftArm.Visible = false
			LeftArm.ZIndex = 5
			LeftArm.AutoButtonColor = false
			LeftArm.Font = Enum.Font.SourceSans
			LeftArm.Text = ""
			LeftArm.TextColor3 = Color3.fromRGB(0, 0, 0)
			LeftArm.TextSize = 14.000

			UICorner_2.CornerRadius = UDim.new(0, 5)
			UICorner_2.Parent = LeftArm

			Torso_2.Name = "Torso"
			Torso_2.Parent = BodyHitBox
			Torso_2.BackgroundColor3 = Color3.fromRGB(255, 79, 79)
			Torso_2.BackgroundTransparency = 1.000
			Torso_2.BorderSizePixel = 0
			Torso_2.Position = UDim2.new(0.247999996, 0, 0.212643683, 0)
			Torso_2.Size = UDim2.new(0, 63, 0, 61)
			Torso_2.ZIndex = 5
			Torso_2.AutoButtonColor = false
			Torso_2.Font = Enum.Font.SourceSans
			Torso_2.Text = ""
			Torso_2.TextColor3 = Color3.fromRGB(0, 0, 0)
			Torso_2.TextSize = 14.000

			UICorner_3.CornerRadius = UDim.new(0, 5)
			UICorner_3.Parent = Torso_2

			RightLeg.Name = "Right Leg"
			RightLeg.Parent = BodyHitBox
			RightLeg.BackgroundColor3 = Color3.fromRGB(255, 79, 79)
			RightLeg.BackgroundTransparency = 0.400
			RightLeg.BorderSizePixel = 0
			RightLeg.Position = UDim2.new(0.504000008, 0, 0.574712634, 0)
			RightLeg.Size = UDim2.new(0, 31, 0, 61)
			RightLeg.Visible = false
			RightLeg.ZIndex = 5
			RightLeg.AutoButtonColor = false
			RightLeg.Font = Enum.Font.SourceSans
			RightLeg.Text = ""
			RightLeg.TextColor3 = Color3.fromRGB(0, 0, 0)
			RightLeg.TextSize = 14.000

			UICorner_4.CornerRadius = UDim.new(0, 3)
			UICorner_4.Parent = RightLeg

			RightArm.Name = "Right Arm"
			RightArm.Parent = BodyHitBox
			RightArm.BackgroundColor3 = Color3.fromRGB(255, 79, 79)
			RightArm.BackgroundTransparency = 0.400
			RightArm.BorderSizePixel = 0
			RightArm.Position = UDim2.new(0.752000034, 0, 0.212643683, 0)
			RightArm.Size = UDim2.new(0, 31, 0, 61)
			RightArm.Visible = false
			RightArm.ZIndex = 5
			RightArm.AutoButtonColor = false
			RightArm.Font = Enum.Font.SourceSans
			RightArm.Text = ""
			RightArm.TextColor3 = Color3.fromRGB(0, 0, 0)
			RightArm.TextSize = 14.000

			UICorner_5.CornerRadius = UDim.new(0, 5)
			UICorner_5.Parent = RightArm

			LeftLeg.Name = "Left Leg"
			LeftLeg.Parent = BodyHitBox
			LeftLeg.BackgroundColor3 = Color3.fromRGB(255, 79, 79)
			LeftLeg.BackgroundTransparency = 0.400
			LeftLeg.BorderSizePixel = 0
			LeftLeg.Position = UDim2.new(0.247999996, 0, 0.574712634, 0)
			LeftLeg.Size = UDim2.new(0, 31, 0, 61)
			LeftLeg.Visible = false
			LeftLeg.ZIndex = 5
			LeftLeg.AutoButtonColor = false
			LeftLeg.Font = Enum.Font.SourceSans
			LeftLeg.Text = ""
			LeftLeg.TextColor3 = Color3.fromRGB(0, 0, 0)
			LeftLeg.TextSize = 14.000

			UICorner_6.CornerRadius = UDim.new(0, 3)
			UICorner_6.Parent = LeftLeg

			Head_2.Name = "Head"
			Head_2.Parent = Body
			Head_2.AnchorPoint = Vector2.new(0.5, 1)
			Head_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Head_2.BackgroundTransparency = 1.000
			Head_2.BorderSizePixel = 0
			Head_2.Position = UDim2.new(0.5, 0, 0, 0)
			Head_2.Size = UDim2.new(0, 35, 0, 35)
			Head_2.ZIndex = 4
			Head_2.AutoButtonColor = false
			Head_2.Image = "http://www.roblox.com/asset/?id=9807583931"

			UIPadding.Parent = BACKGROUND
			UIPadding.PaddingBottom = UDim.new(0, 4)
			UIPadding.PaddingLeft = UDim.new(0, 4)
			UIPadding.PaddingRight = UDim.new(0, 4)
			UIPadding.PaddingTop = UDim.new(0, 4)

			sdfh.Name = "sdfh"
			sdfh.Parent = BodypartSelect
			sdfh.PaddingBottom = UDim.new(0, 4)
			sdfh.PaddingLeft = UDim.new(0, 4)
			sdfh.PaddingRight = UDim.new(0, 4)
			sdfh.PaddingTop = UDim.new(0, 4)

			local function onUpdate(v)
				for i,v in pairs(BodyHitBox:GetChildren()) do
					v.Visible = true
					if v.Name == XXX then
						TweenService:Create(v , TweenInfo.new(0.26, Enum.EasingStyle.Quad , Enum.EasingDirection.InOut), {BackgroundTransparency = 0.4}):Play()
					else
						TweenService:Create(v , TweenInfo.new(0.26, Enum.EasingStyle.Quad , Enum.EasingDirection.InOut), {BackgroundTransparency = 1}):Play()

					end
				end
				if v then
					ALL.Visible = false
				end
				pcall(function()Action(XXX) end)
			end

			Torso_2.MouseButton1Click:Connect(function()
				XXX = "Torso"
				for i,v in pairs(BodyHitBox:GetChildren()) do
					v.Visible = true
					TweenService:Create(v , TweenInfo.new(0.26, Enum.EasingStyle.Quad , Enum.EasingDirection.InOut), {BackgroundTransparency = 1}):Play()

				end
				TweenService:Create(Torso_2 , TweenInfo.new(0.26, Enum.EasingStyle.Quad , Enum.EasingDirection.InOut), {BackgroundTransparency = 0.4}):Play()
				onUpdate()
			end)

			Head.MouseButton1Click:Connect(function()
				XXX = Head.Name
				for i,v in pairs(BodyHitBox:GetChildren()) do
					v.Visible = true
					TweenService:Create(v , TweenInfo.new(0.26, Enum.EasingStyle.Quad , Enum.EasingDirection.InOut), {BackgroundTransparency = 1}):Play()

				end
				TweenService:Create(Head , TweenInfo.new(0.26, Enum.EasingStyle.Quad , Enum.EasingDirection.InOut), {BackgroundTransparency = 0.4}):Play()
				onUpdate()

			end)
			LeftArm.MouseButton1Click:Connect(function()
				XXX = LeftArm.Name
				for i,v in pairs(BodyHitBox:GetChildren()) do
					v.Visible = true
					TweenService:Create(v , TweenInfo.new(0.26, Enum.EasingStyle.Quad , Enum.EasingDirection.InOut), {BackgroundTransparency = 1}):Play()

				end
				TweenService:Create(LeftArm , TweenInfo.new(0.26, Enum.EasingStyle.Quad , Enum.EasingDirection.InOut), {BackgroundTransparency = 0.4}):Play()
				onUpdate()

			end)
			RightArm.MouseButton1Click:Connect(function()
				XXX = RightArm.Name
				for i,v in pairs(BodyHitBox:GetChildren()) do
					v.Visible = true
					TweenService:Create(v , TweenInfo.new(0.26, Enum.EasingStyle.Quad , Enum.EasingDirection.InOut), {BackgroundTransparency = 1}):Play()

				end
				TweenService:Create(RightArm , TweenInfo.new(0.26, Enum.EasingStyle.Quad , Enum.EasingDirection.InOut), {BackgroundTransparency = 0.4}):Play()
				onUpdate()

			end)
			LeftLeg.MouseButton1Click:Connect(function()
				XXX = LeftLeg.Name
				for i,v in pairs(BodyHitBox:GetChildren()) do
					v.Visible = true
					TweenService:Create(v , TweenInfo.new(0.26, Enum.EasingStyle.Quad , Enum.EasingDirection.InOut), {BackgroundTransparency = 1}):Play()

				end
				TweenService:Create(LeftLeg , TweenInfo.new(0.26, Enum.EasingStyle.Quad , Enum.EasingDirection.InOut), {BackgroundTransparency = 0.4}):Play()
				onUpdate()

			end)
			RightLeg.MouseButton1Click:Connect(function()
				XXX = RightLeg.Name
				for i,v in pairs(BodyHitBox:GetChildren()) do
					v.Visible = true
					TweenService:Create(v , TweenInfo.new(0.26, Enum.EasingStyle.Quad , Enum.EasingDirection.InOut), {BackgroundTransparency = 1}):Play()

				end
				TweenService:Create(RightLeg , TweenInfo.new(0.26, Enum.EasingStyle.Quad , Enum.EasingDirection.InOut), {BackgroundTransparency = 0.4}):Play()
				onUpdate()

			end)
			Interactive.MouseButton1Click:Connect(function()
				onUpdate(true)
			end)

			Interactive.MouseButton1Click:Connect(function()
				for i,v in pairs(BodyHitBox:GetChildren()) do
					v.Visible = true
					if v.Name == XXX then
						TweenService:Create(v , TweenInfo.new(0.26, Enum.EasingStyle.Quad , Enum.EasingDirection.InOut), {BackgroundTransparency = 0.4}):Play()
					else
						TweenService:Create(v , TweenInfo.new(0.26, Enum.EasingStyle.Quad , Enum.EasingDirection.InOut), {BackgroundTransparency = 1}):Play()

					end
				end
				onUpdate(true)

			end)



			local Templatedropdown = Instance.new("Frame")
			local LINE = Instance.new("Frame")
			local UIGradient = Instance.new("UIGradient")
			local TextLabel = Instance.new("TextLabel")
			local LINE_2 = Instance.new("Frame")
			local Interactive = Instance.new("TextButton")

			--Properties:

			Templatedropdown.Name = "Templatedropdown"
			Templatedropdown.Parent = HOLDER
			Templatedropdown.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Templatedropdown.BorderSizePixel = 0
			Templatedropdown.Position = UDim2.new(0.0345622115, 0, 0.1640625, 0)
			Templatedropdown.Size = UDim2.new(0, 194, 0, 17)
			Templatedropdown.ZIndex = 14

			LINE.Name = "LINE"
			LINE.Parent = Templatedropdown
			LINE.AnchorPoint = Vector2.new(0.5, 0.5)
			LINE.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
			LINE.BorderSizePixel = 0
			LINE.Position = UDim2.new(0.5, 0, 0.5, 0)
			LINE.Size = UDim2.new(1, 2, 1, 2)
			LINE.ZIndex = 13

			UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(24, 24, 24)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(27, 27, 27))}
			UIGradient.Rotation = 270
			UIGradient.Parent = Templatedropdown

			TextLabel.Parent = Templatedropdown
			TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel.BackgroundTransparency = 1.000
			TextLabel.BorderSizePixel = 0
			TextLabel.Size = UDim2.new(0, 194, 0, 17)
			TextLabel.ZIndex = 15
			TextLabel.Font = Enum.Font.SourceSansSemibold
			TextLabel.Text = Text
			TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel.TextSize = 14.000

			LINE_2.Name = "LINE"
			LINE_2.Parent = Templatedropdown
			LINE_2.AnchorPoint = Vector2.new(0.5, 0.5)
			LINE_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			LINE_2.BorderSizePixel = 0
			LINE_2.Position = UDim2.new(0.5, 0, 0.5, 0)
			LINE_2.Size = UDim2.new(1, 3, 1, 3)
			LINE_2.ZIndex = 12

			Interactive.Name = "Interactive"
			Interactive.Parent = Templatedropdown
			Interactive.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Interactive.BackgroundTransparency = 1.000
			Interactive.BorderSizePixel = 0
			Interactive.Size = UDim2.new(0, 195, 0, 18)
			Interactive.ZIndex = 20
			Interactive.Font = Enum.Font.SourceSans
			Interactive.Text = ""
			Interactive.TextColor3 = Color3.fromRGB(0, 0, 0)
			Interactive.TextSize = 20.000

			UpdateMainSize()
			AddRipple(Interactive)
			onUpdate()
			Interactive.MouseButton1Click:Connect(function()
				if ALL.Visible == false then
					ALL.Visible = true
				else
					ALL.Visible = false
				end
			end)
			Section.Size = UDim2.fromOffset(Section.AbsoluteSize.X,  UIListLayout_2.AbsoluteContentSize.Y + 16)

		end

		function u:AddKeybind(Text, KeyCode, Action)
			Text=Text or ". . ."
			Action=Action or function() end
			KeyCode=KeyCode or Enum.KeyCode.RightAlt
			local TemplateKBIND = Instance.new("Frame")
			local TextLabel = Instance.new("TextLabel")
			local Frame = Instance.new("Frame")
			local Frame_2 = Instance.new("Frame")
			local Frame_3 = Instance.new("Frame")
			local Interactive = Instance.new("TextButton")

			--Properties:

			TemplateKBIND.Name = "TemplateKBIND"
			TemplateKBIND.Parent = HOLDER
			TemplateKBIND.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TemplateKBIND.BackgroundTransparency = 1.000
			TemplateKBIND.BorderSizePixel = 0
			TemplateKBIND.Position = UDim2.new(0.154377878, 0, 0.184895828, 0)
			TemplateKBIND.Size = UDim2.new(0, 187, 0, 17)
			TemplateKBIND.ZIndex = 14

			TextLabel.Parent = TemplateKBIND
			TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel.BackgroundTransparency = 1.000
			TextLabel.BorderSizePixel = 0
			TextLabel.Position = UDim2.new(0.21428366, 0, 0.0588235296, 0)
			TextLabel.Size = UDim2.new(0, 144, 0, 15)
			TextLabel.ZIndex = 15
			TextLabel.Font = Enum.Font.SourceSansSemibold
			TextLabel.Text = "FOV Visible"
			TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel.TextSize = 14.000
			TextLabel.TextXAlignment = Enum.TextXAlignment.Left

			Frame.Parent = TemplateKBIND
			Frame.AnchorPoint = Vector2.new(0.5, 0.5)
			Frame.BackgroundColor3 = Color3.fromRGB(28, 28, 28)
			Frame.BorderSizePixel = 0
			Frame.Position = UDim2.new(0.0802674294, 0, 0.5, 0)
			Frame.Size = UDim2.new(0, 32, 0, 13)
			Frame.ZIndex = 15

			Frame_2.Parent = Frame
			Frame_2.AnchorPoint = Vector2.new(0.5, 0.5)
			Frame_2.BackgroundColor3 = Color3.fromRGB(49, 49, 49)
			Frame_2.BorderSizePixel = 0
			Frame_2.Position = UDim2.new(0.5, 0, 0.5, 0)
			Frame_2.Size = UDim2.new(1, 2, 1, 2)
			Frame_2.ZIndex = 14

			Frame_3.Parent = Frame
			Frame_3.AnchorPoint = Vector2.new(0.5, 0.5)
			Frame_3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			Frame_3.BorderSizePixel = 0
			Frame_3.Position = UDim2.new(0.5, 0, 0.5, 0)
			Frame_3.Size = UDim2.new(1, 3, 1, 3)
			Frame_3.ZIndex = 13

			Interactive.Name = "Interactive"
			Interactive.Parent = Frame
			Interactive.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Interactive.BackgroundTransparency = 1.000
			Interactive.BorderSizePixel = 0
			Interactive.Position = UDim2.new(0.038435936, 0, 0.0690366328, 0)
			Interactive.Size = UDim2.new(0, 32, 0, 10)
			Interactive.ZIndex = 20
			Interactive.Font = Enum.Font.SourceSansBold
			Interactive.Text = KeyCode.Name
			Interactive.TextColor3 = Color3.fromRGB(255, 255, 255)
			Interactive.TextSize = 14.000

			Interactive.MouseEnter:Connect(function()
				TweenService:Create(Frame_2, TweenInfo.new(0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {BackgroundColor3 = Color3.fromRGB(80, 80, 80)}):Play()	

			end)
			Interactive.MouseLeave:Connect(function()
				TweenService:Create(Frame_2, TweenInfo.new(0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {BackgroundColor3 = Color3.fromRGB(49, 49, 49)}):Play()	
			end)

			local ka = false
			game:GetService("UserInputService").InputBegan:connect(function(a, gp) 
				if not gp then 
					if a.KeyCode.Name == KeyCode.Name or a.KeyCode.Name == KeyCode and ka == false then 
						pcall(function()
							Action(KeyCode)
						end)
					end
				end
			end)

			Interactive.MouseButton1Click:connect(function() 
				game.TweenService:Create(Frame, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
					BackgroundColor3 = Color3.fromRGB(45, 45, 45)
				}):Play()
				Interactive.Text = ". . ."
				local v1, v2 = game:GetService('UserInputService').InputBegan:wait();
				ka = true
				if v1.KeyCode.Name ~= "Unknown" then
					game.TweenService:Create(Frame, TweenInfo.new(0.1, Enum.EasingStyle.Linear, Enum.EasingDirection.In), {
						BackgroundColor3 = Color3.fromRGB(0,0,0)
					}):Play()
					local kcoe =  v1.KeyCode.Name
					Interactive.Text = v1.KeyCode.Name

					if string.find(kcoe,'Alt') then
						Interactive.Text = 'ALT'
					end
					if string.find(kcoe,'Control') then
						Interactive.Text = 'CTRL'
					end
					if string.find(kcoe,'Shift') then
						Interactive.Text = 'SHIFT'
					end
					if string.find(kcoe,'Keypad') then
						Interactive.Text =  v1.KeyCode.Name:gsub('Keypad','')
					end
					wait(.2)
					ka = false

					KeyCode = v1.KeyCode.Name;
				end

			end)
			local list = Section.Parent.LIST

			Section.Size = UDim2.fromOffset(Section.AbsoluteSize.X,  UIListLayout_2.AbsoluteContentSize.Y + 16)
			UpdateMainSize()
		end

		function u:AddSlider(Text, Min , Max, Selected ,Action) 

			Text = Text or "Nil Slider"
			Action = Action or function() end
			Min = Min or 0;
			Max = Max or 100;

			local SliderDef = math.clamp(Selected, Min, Max) or math.clamp(4, Min, Max)
			local DefaultScale =  (SliderDef - Min) / (Max - Min)

			local Value;
			local mouse = game:GetService('Players').LocalPlayer:GetMouse()
			local TemplateSlider = Instance.new("Frame")
			local GD = Instance.new("UICorner")
			local Title = Instance.new("TextLabel")
			local INSIDER = Instance.new("Frame")
			local LINE = Instance.new("Frame")
			local UIGradient = Instance.new("UIGradient")
			local TextLabel = Instance.new("TextLabel")
			local LINE_2 = Instance.new("Frame")
			local sbt = Instance.new("TextButton")
			local SFrame = Instance.new("Frame")
			local UIListLayout = Instance.new("UIListLayout")

			--Properties:

			TemplateSlider.Name = "TemplateSlider"
			TemplateSlider.Parent = HOLDER
			TemplateSlider.BackgroundColor3 = Color3.fromRGB(7, 7, 8)
			TemplateSlider.BackgroundTransparency = 1.000
			TemplateSlider.BorderSizePixel = 0
			TemplateSlider.Position = UDim2.new(0.0414746553, 0, 0.370588243, 0)
			TemplateSlider.Size = UDim2.new(0, 199, 0, 30)
			TemplateSlider.ZIndex = 15

			GD.CornerRadius = UDim.new(0, 4)
			GD.Name = "^G$*D%$*&@"
			GD.Parent = TemplateSlider

			Title.Name = "A"
			Title.Parent = TemplateSlider
			Title.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			Title.BackgroundTransparency = 1.000
			Title.BorderSizePixel = 0
			Title.Size = UDim2.new(0, 99, 0, 11)
			Title.ZIndex = 16
			Title.Font = Enum.Font.SourceSansSemibold
			Title.Text = Text
			Title.TextColor3 = Color3.fromRGB(255, 255, 255)
			Title.TextSize = 16.000
			Title.TextXAlignment = Enum.TextXAlignment.Left

			INSIDER.Name = "INSIDER"
			INSIDER.Parent = TemplateSlider
			INSIDER.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			INSIDER.BorderSizePixel = 0
			INSIDER.Position = UDim2.new(0, 0, 0.444444448, 0)
			INSIDER.Size = UDim2.new(0, 194, 0, 8)
			INSIDER.ZIndex = 14

			LINE.Name = "LINE"
			LINE.Parent = INSIDER
			LINE.AnchorPoint = Vector2.new(0.5, 0.5)
			LINE.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
			LINE.BorderSizePixel = 0
			LINE.Position = UDim2.new(0.5, 0, 0.5, 0)
			LINE.Size = UDim2.new(1, 2, 1, 2)
			LINE.ZIndex = 13

			UIGradient.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, Color3.fromRGB(24, 24, 24)), ColorSequenceKeypoint.new(1.00, Color3.fromRGB(27, 27, 27))}
			UIGradient.Rotation = 270
			UIGradient.Parent = INSIDER

			TextLabel.Parent = INSIDER
			TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel.BackgroundTransparency = 1.000
			TextLabel.BorderSizePixel = 0
			TextLabel.Position = UDim2.new(0.773195863, 0, -2.1875, 0)
			TextLabel.Size = UDim2.new(0, 45, 0, 11)
			TextLabel.ZIndex = 21
			TextLabel.Font = Enum.Font.SourceSansSemibold
			TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
			TextLabel.TextSize = 14.000
			TextLabel.TextXAlignment = Enum.TextXAlignment.Right
			TextLabel.Text = tostring(Selected)
			LINE_2.Name = "LINE"
			LINE_2.Parent = INSIDER
			LINE_2.AnchorPoint = Vector2.new(0.5, 0.5)
			LINE_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
			LINE_2.BorderSizePixel = 0
			LINE_2.Position = UDim2.new(0.5, 0, 0.5, 0)
			LINE_2.Size = UDim2.new(1, 3, 1, 3)
			LINE_2.ZIndex = 12

			sbt.Name = "sbt"
			sbt.Parent = INSIDER
			sbt.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
			sbt.BackgroundTransparency = 1.000
			sbt.BorderSizePixel = 0
			sbt.ClipsDescendants = true
			sbt.Position = UDim2.new(0, -1, 0, 0)
			sbt.Size = UDim2.new(0, 194, 0, 18)
			sbt.ZIndex = 16
			sbt.AutoButtonColor = false
			sbt.Font = Enum.Font.SourceSans
			sbt.Text = ""
			sbt.TextColor3 = Color3.fromRGB(0, 0, 0)
			sbt.TextSize = 1.000

			SFrame.Name = "SFrame"
			SFrame.Parent = sbt
			SFrame.BackgroundColor3 = Color3.fromRGB(85, 85, 85)
			SFrame.Position = UDim2.new(0.0225051399, 0, 0.105415344, 0)
			SFrame.Size = UDim2.new(0, 0, 0, 4)
			SFrame.ZIndex = 20
			SFrame.BorderSizePixel = 0

			UIListLayout.Parent = TemplateSlider
			UIListLayout.SortOrder = Enum.SortOrder.Name
			UIListLayout.Padding = UDim.new(0, 5)

			TemplateSlider.MouseEnter:Connect(function()
				TweenService:Create(LINE, TweenInfo.new(0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {BackgroundColor3 = Color3.fromRGB(80, 80, 80)}):Play()	

			end)
			TemplateSlider.MouseLeave:Connect(function()
				TweenService:Create(LINE, TweenInfo.new(0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {BackgroundColor3 = Color3.fromRGB(49, 49, 49)}):Play()	

			end)
			SFrame.Size = UDim2.fromScale(DefaultScale,1)
			SFrame.Size = UDim2.new(SFrame.Size.X.Scale,0,0,4)


			sbt.MouseButton1Down:Connect(function()
				Value = math.floor((((tonumber(Max) - tonumber(Min)) / 189) * SFrame.AbsoluteSize.X) + tonumber(Min)) or 0
				TweenService:Create(TextLabel, TweenInfo.new(0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {TextColor3 = Color3.fromRGB(255, 255, 255)}):Play()
				pcall(function()
					Action(Value)
				end)

				SFrame.Size = UDim2.new(0, math.clamp(mouse.X - SFrame.AbsolutePosition.X, 0, 189), 0, 4)
				moveconnection = mouse.Move:Connect(function()
					TextLabel.Text = Value
					Value = math.floor((((tonumber(Max) - tonumber(Min)) / 189) * SFrame.AbsoluteSize.X) + tonumber(Min))
					pcall(function()
						Action(Value)
					end)
					SFrame.Size = UDim2.new(0, math.clamp(mouse.X - SFrame.AbsolutePosition.X, 0, 189), 0, 4)
				end)
				releaseconnection = uis.InputEnded:Connect(function(Mouse)
					if Mouse.UserInputType == Enum.UserInputType.MouseButton1 then
						Value = math.floor((((tonumber(Max) - tonumber(Min)) / 189) * SFrame.AbsoluteSize.X) + tonumber(Min))
						pcall(function()
							Action(Value)
						end)
						SFrame.Size = UDim2.new(0, math.clamp(mouse.X - SFrame.AbsolutePosition.X, 0, 189), 0, 4)
						moveconnection:Disconnect()
						releaseconnection:Disconnect()
						TweenService:Create(TextLabel, TweenInfo.new(0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {TextColor3 = Color3.fromRGB(126, 126, 126)}):Play()

					end
				end)
				TextLabel.Text = Value
			end)

			sbt.MouseButton1Up:Connect(function()
				TweenService:Create(TextLabel, TweenInfo.new(0.3, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {TextColor3 = Color3.fromRGB(126, 126, 126)}):Play()
			end)


			local list = Section.Parent.LIST

			Section.Size = UDim2.fromOffset(Section.AbsoluteSize.X,  UIListLayout_2.AbsoluteContentSize.Y + 16)
			UpdateMainSize()
		end

		return u
	end
	return k
end
