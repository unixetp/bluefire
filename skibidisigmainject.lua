print('[BlueAPI] Thanks for using BlueAPI! 🎉')
local Notification = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
local TextLabel_2 = Instance.new("TextLabel")
local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
local UIAspectRatioConstraint_3 = Instance.new("UIAspectRatioConstraint")

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

local function LTFFB_fake_script()
	local script = Instance.new('LocalScript', Frame)

	local frame = script.Parent
	local tweenService = game:GetService("TweenService")

	local startYPosition = UDim2.new(frame.Position.X.Scale, frame.Position.X.Offset, -0.2, 0)
	local targetYPosition = Frame.Position
	local endYPosition = UDim2.new(frame.Position.X.Scale, frame.Position.X.Offset, 1.2, 0)

	frame.Position = startYPosition
	frame.Visible = true

	local slideInInfo = TweenInfo.new(
		0.5,
		Enum.EasingStyle.Quad,
		Enum.EasingDirection.Out,
		0,
		false,
		0
	)

	local slideInProperties = {
		Position = targetYPosition
	}

	local slideInTween = tweenService:Create(frame, slideInInfo, slideInProperties)

	local slideOutInfo = TweenInfo.new(
		0.5,
		Enum.EasingStyle.Quad,
		Enum.EasingDirection.In,
		0,
		false,
		0
	)

	local slideOutProperties = {
		Position = endYPosition
	}

	local slideOutTween = tweenService:Create(frame, slideOutInfo, slideOutProperties)

	local function playAnimations()
		slideInTween:Play()
		slideInTween.Completed:Wait()

		wait(2)

		slideOutTween:Play()
		slideOutTween.Completed:Wait()

		frame.Visible = false
	end

	playAnimations()
end
coroutine.wrap(LTFFB_fake_script)()
