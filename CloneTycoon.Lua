

local ScreenGui = Instance.new("ScreenGui")
local main = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local Cash = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")
local TextLabel = Instance.new("TextLabel")
local UICorner_3 = Instance.new("UICorner")
local ImageLabel = Instance.new("ImageLabel")
local UICorner_4 = Instance.new("UICorner")
local TextLabel_2 = Instance.new("TextLabel")
local UICorner_5 = Instance.new("UICorner")

--Properties:

ScreenGui.Parent = game.CoreGui

main.Name = "main"
main.Parent = ScreenGui
main.BackgroundColor3 = Color3.fromRGB(61, 61, 61)
main.Position = UDim2.new(0.24695459, 0, 0.345381528, 0)
main.Size = UDim2.new(0, 441, 0, 178)
main.Active = true
main.Draggable = true

UICorner.CornerRadius = UDim.new(0, 16)
UICorner.Parent = main

Cash.Name = "Cash"
Cash.Parent = main
Cash.BackgroundColor3 = Color3.fromRGB(122, 54, 141)
Cash.Position = UDim2.new(0.510204077, 0, 0.612359524, 0)
Cash.Size = UDim2.new(0, 200, 0, 50)
Cash.Font = Enum.Font.SourceSans
Cash.Text = "Start"
Cash.TextColor3 = Color3.fromRGB(255, 0, 4)
Cash.TextSize = 20.000

UICorner_2.CornerRadius = UDim.new(0, 16)
UICorner_2.Parent = Cash

TextLabel.Parent = main
TextLabel.BackgroundColor3 = Color3.fromRGB(39, 39, 39)
TextLabel.Size = UDim2.new(0, 200, 0, 50)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "Welcome!"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 20.000

UICorner_3.CornerRadius = UDim.new(0, 16)
UICorner_3.Parent = TextLabel

ImageLabel.Parent = main
ImageLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 255)
ImageLabel.Position = UDim2.new(0.0680272132, 0, 0.280898869, 0)
ImageLabel.Size = UDim2.new(0, 140, 0, 100)
ImageLabel.Image = "rbxasset://textures/ui/GuiImagePlaceholder.png"

UICorner_4.CornerRadius = UDim.new(0, 16)
UICorner_4.Parent = ImageLabel

TextLabel_2.Parent = main
TextLabel_2.BackgroundColor3 = Color3.fromRGB(61, 61, 61)
TextLabel_2.Position = UDim2.new(0.489795923, 0, 0.061797753, 0)
TextLabel_2.Size = UDim2.new(0, 200, 0, 50)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "Requirments: Ore Refinery, Must Go To Ore Refinery, Cost: About $400"
TextLabel_2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_2.TextSize = 16.000
TextLabel_2.TextWrapped = true

UICorner_5.Parent = TextLabel_2

-- Scripts:

local function FCUHCXF_fake_script() -- Cash.LocalScript 
	local script = Instance.new('LocalScript', Cash)

	script.Parent.MouseButton1Click:connect(function()
		function FindSelfTycoon()
			for i,v in pairs(game:GetService("Workspace").Tycoons:GetChildren()) do
				if (v.Factory.Player.Value == game.Players.LocalPlayer.Name) then
					return v
				end
			end
		end
	
		while true do
			do
				fireproximityprompt(FindSelfTycoon().Factory.Objects.BoughtItems["Ore Refinery"].SpellVortex.Main.Attachment.SellOres)
			end
	
			do
				local minnerai = {
					"Coal",
					"Iron",
					"Gold",
					"Diamonds",
					"Stone",
				}
	
				for i,v in pairs(minnerai) do
					workspace.Events.DataStores.uhoh:FireServer("mine",v)
				end
			end
	
			game.RunService.RenderStepped:Wait()
		end
	end)
	
end
coroutine.wrap(FCUHCXF_fake_script)()
local function RWHMBHA_fake_script() -- ImageLabel.LocalScript 
	local script = Instance.new('LocalScript', ImageLabel)

	local image = script.Parent
	image.Image = game.Players:GetUserThumbnailAsync(game.Players.LocalPlayer.UserId,Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size420x420)
	
end
coroutine.wrap(RWHMBHA_fake_script)()
