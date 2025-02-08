--[[

		Gui2Rat
		10zOfficial
		Version 1.0.0

]]


-- Instances

local Notification = Instance.new("CoreGUI")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
local TextLabel_2 = Instance.new("TextLabel")
local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
local UIAspectRatioConstraint_3 = Instance.new("UIAspectRatioConstraint")

-- Properties

Notification.Name = "Notification"
Notification.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
Notification.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Frame.Parent = Notification
Frame.BackgroundColor3 = Color3.new(0.0862745, 0.0862745, 0.0862745)
Frame.BackgroundTransparency = 0.10000000149011612
Frame.BorderColor3 = Color3.new(0.282353, 0.282353, 0.282353)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0.319763124, 0, 0.0394321755, 0)
Frame.Size = UDim2.new(0.376061767, 0, 0.118296526, 0)
Frame.ZIndex = 999999999

UICorner.Parent = Frame
UICorner.CornerRadius = UDim.new(0, 5)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel.BackgroundTransparency = 1
TextLabel.BorderColor3 = Color3.new(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(1, 0, 0.666666687, 0)
TextLabel.Font = Enum.Font.SourceSansBold
TextLabel.Text = "BlueAPI"
TextLabel.TextColor3 = Color3.new(0.921569, 0.921569, 0.921569)
TextLabel.TextSize = 24

UIAspectRatioConstraint.Parent = TextLabel
UIAspectRatioConstraint.AspectRatio = 9.739999771118164

TextLabel_2.Parent = Frame
TextLabel_2.BackgroundColor3 = Color3.new(1, 1, 1)
TextLabel_2.BackgroundTransparency = 1
TextLabel_2.BorderColor3 = Color3.new(0, 0, 0)
TextLabel_2.BorderSizePixel = 0
TextLabel_2.Position = UDim2.new(0, 0, 0.333333343, 0)
TextLabel_2.Size = UDim2.new(1, 0, 0.666666687, 0)
TextLabel_2.Font = Enum.Font.SourceSansBold
TextLabel_2.Text = "Injected! Enjoy!"
TextLabel_2.TextColor3 = Color3.new(0.137255, 0.921569, 0.0941177)
TextLabel_2.TextSize = 24

UIAspectRatioConstraint_2.Parent = TextLabel_2
UIAspectRatioConstraint_2.AspectRatio = 9.739999771118164

UIAspectRatioConstraint_3.Parent = Frame
UIAspectRatioConstraint_3.AspectRatio = 6.493333339691162

-- Scripts

local function LTFFB_fake_script() -- Frame.LocalScript 
	local script = Instance.new('LocalScript', Frame)

	-- Получаем Frame, к которому привязан скрипт
	local frame = script.Parent
	
	-- Получаем сервис TweenService для анимаций
	local tweenService = game:GetService("TweenService")
	
	-- Начальные значения для анимации (полностью прозрачный)
	frame.BackgroundTransparency = 1
	frame.Visible = true -- Убедитесь, что Frame виден
	
	-- Описание анимации появления (TweenInfo)
	local fadeInInfo = TweenInfo.new(
		0.8, -- Продолжительность анимации появления (0.8 секунды)
		Enum.EasingStyle.Quad,
		Enum.EasingDirection.Out,
		0,
		false,
		0
	)
	
	-- Целевые свойства для анимации появления (полностью непрозрачный)
	local fadeInProperties = {
		BackgroundTransparency = 0.1
	}
	
	-- Создаем анимацию появления (Tween)
	local fadeInTween = tweenService:Create(frame, fadeInInfo, fadeInProperties)
	
	-- Описание анимации исчезновения (TweenInfo)
	local fadeOutInfo = TweenInfo.new(
		0.8, -- Продолжительность анимации исчезновения (0.8 секунды)
		Enum.EasingStyle.Quad,
		Enum.EasingDirection.In, -- Используем In для замедления к концу исчезновения
		0,
		false,
		0
	)
	
	-- Целевые свойства для анимации исчезновения (полностью прозрачный)
	local fadeOutProperties = {
		BackgroundTransparency = 1
	}
	
	-- Создаем анимацию исчезновения (Tween)
	local fadeOutTween = tweenService:Create(frame, fadeOutInfo, fadeOutProperties)
	
	-- Функция для последовательного воспроизведения анимаций
	local function playAnimations()
		fadeInTween:Play() -- Запускаем анимацию появления
		fadeInTween.Completed:Wait() -- Ждем, пока анимация появления завершится
	
		wait(2) -- Ждем 2 секунды
	
		fadeOutTween:Play() -- Запускаем анимацию исчезновения
		fadeOutTween.Completed:Wait() -- Ждем, пока анимация исчезновения завершится
	
		frame.Visible = false -- Делаем Frame невидимым после исчезновения (опционально)
	end
	
	-- Запускаем последовательность анимаций
	playAnimations()
end
coroutine.wrap(LTFFB_fake_script)()
