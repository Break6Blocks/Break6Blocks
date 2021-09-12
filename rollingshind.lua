repeat wait() until game:IsLoaded()
local player = game.Players.LocalPlayer
--loading wally ui revamped By Aika
local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()
local menuplace = 4616652839
local w = library:CreateWindow("SPIN - Shindo Life")
local e = w:CreateFolder("Get BloodLine")
if game.PlaceId == menuplace then
	
    local kgs = {}
    for i,v in pairs(game:GetService("ReplicatedStorage").alljutsu:GetChildren()) do
        if v:FindFirstChild("KG") then
            table.insert(kgs, v.Name)
        end
    end
    e:Label("Select the Bloodline slot you want to change",{
        TextSize = 15;
        TextColor = Color3.fromRGB(255,255,255); 
        BgColor = Color3.fromRGB(117, 50, 168);
    }) 
    e:Label("Choose your BL and press SPIN",{
        TextSize = 15;
    	TextColor = Color3.fromRGB(255,255,255); 
    	BgColor = Color3.fromRGB(117, 50, 168);
    }) 
    local b
    local kgslot
    local kgvalue
    e:Dropdown("BLOODLINE SLOT",{"kg1", "kg2", "kg3", "kg4"},true,function(kgS)
        b = kgS
    	kgslot = game.Players.LocalPlayer.statz.main:FindFirstChild(b)
    	kgvalue = kgslot.Value
    	print(kgslot)
    	print(kgvalue)
    end)
    local a1
    e:Dropdown("WHAT DO YOU WANT",kgs,true,function(KG1)
        print("Selected: " .. KG1)
    	a1 = KG1
    end)
    local a2
    e:Dropdown("WHAT DO YOU WANT",kgs,true,function(KG2)
        print("Selected: " .. KG2)
    	a2 = KG2
    end)
    local a3
    e:Dropdown("WHAT DO YOU WANT",kgs,true,function(KG3)
        print("Selected: " .. KG3)
    	a3 = KG3
    end)
    local a4
    e:Dropdown("WHAT DO YOU WANT",kgs,true,function(KG4)
        print("Selected: " .. KG4)
    	a4 = KG4
    end)
    local a5
    e:Dropdown("WHAT DO YOU WANT",kgs,true,function(KG5)
        print("Selected: " .. KG5)
    	a5 = KG5
    end)
    e:Button("Start Spin",function()
        game:GetService("StarterGui"):SetCore("DevConsoleVisible", true)
        kgslot.ChildAdded:Connect(function(yes)
            if yes.Name == "dontspin" then
                wait(.1)
                yes:Destroy()
            end
        end)
    	local spins = game.Players.LocalPlayer.statz.spins.Value
    	local des = game.Players.LocalPlayer.statz.spins
        spawn(function()
            for i,v in pairs(game:GetService("ReplicatedStorage").alljutsu:GetChildren()) do
                if v:FindFirstChild("KG") then
                    local a = Instance.new("StringValue")
                    a.Name = v.Name
                    a.Parent = game.Players.LocalPlayer.statz.genkailevel
                end
            end
        end)
    	spawn(function()
    	    while wait() do
    		    if spins > 0 then
                    spins = game.Players.LocalPlayer.statz.spins.Value
                	kgvalue = kgslot.Value
                	print("You got: " .. kgvalue)
                	if kgvalue ~= a1 and kgvalue ~= a2 and kgvalue ~= a3 and kgvalue ~= a4 and kgvalue ~= a5 then
                	    kgvalue = kgslot.Value
                		game.Players.LocalPlayer.startevent:FireServer("spin", b)
                		wait(.2)
                		kgvalue = kgslot.Value
                	else
                	    print("You real got: " .. kgvalue)
                	end
                else
                    player.statz.spins:Destroy()
                    game:GetService('TeleportService'):Teleport(game.PlaceId, player)
    		    end
    		end
    	end)
    end)
    e:Label("It will reset once you have 0 spin left",{
        TextSize = 15;
    	TextColor = Color3.fromRGB(255,255,255); 
    	BgColor = Color3.fromRGB(117, 50, 168);
    }) 
    e:Button("Save BloodLine",function()
        game:Shutdown()
    end)
	local ee = w:CreateFolder("Get Element")
    local elm = {}
    for i,v in pairs(game:GetService("ReplicatedStorage").alljutsu:GetChildren()) do
        if v:FindFirstChild("ELEMENT") then
            table.insert(elm, v.Name)
        end
    end
    ee:Label("Select the Element slot you want to change",{
        TextSize = 15;
        TextColor = Color3.fromRGB(255,255,255); 
        BgColor = Color3.fromRGB(117, 50, 168);
    }) 
    ee:Label("Choose your Element and press SPIN",{
        TextSize = 15;
    	TextColor = Color3.fromRGB(255,255,255); 
    	BgColor = Color3.fromRGB(117, 50, 168);
    }) 
    local b
    local kgslot
    local kgvalue
    ee:Dropdown("ELEMENT SLOT",{"element1", "element2", "element3", "element4"},true,function(kgS)
        b = kgS
    	kgslot = game.Players.LocalPlayer.statz.main:FindFirstChild(b)
    	kgvalue = kgslot.Value
    	print(kgslot)
    	print(kgvalue)
    end)
    local a1
    ee:Dropdown("WHAT DO YOU WANT",elm,true,function(KG1)
        print("Selected: " .. KG1)
    	a1 = KG1
    end)
    local a2
    ee:Dropdown("WHAT DO YOU WANT",elm,true,function(KG2)
        print("Selected: " .. KG2)
    	a2 = KG2
    end)
    local a3
    ee:Dropdown("WHAT DO YOU WANT",elm,true,function(KG3)
        print("Selected: " .. KG3)
    	a3 = KG3
    end)
    local a4
    ee:Dropdown("WHAT DO YOU WANT",elm,true,function(KG4)
        print("Selected: " .. KG4)
    	a4 = KG4
    end)
    local a5
    ee:Dropdown("WHAT DO YOU WANT",elm,true,function(KG5)
        print("Selected: " .. KG5)
    	a5 = KG5
    end)
    ee:Button("Start Spin",function()
        game:GetService("StarterGui"):SetCore("DevConsoleVisible", true)
        kgslot.ChildAdded:Connect(function(yes)
            if yes.Name == "dontspin" then
                wait(.1)
                yes:Destroy()
            end
        end)
    	local spins = game.Players.LocalPlayer.statz.spins.Value
    	local des = game.Players.LocalPlayer.statz.spins
        spawn(function()
            for i,v in pairs(game:GetService("ReplicatedStorage").alljutsu:GetChildren()) do
                if v:FindFirstChild("KG") then
                    local a = Instance.new("StringValue")
                    a.Name = v.Name
                    a.Parent = game.Players.LocalPlayer.statz.genkailevel
                end
            end
        end)
    	spawn(function()
    	    while wait() do
    		    if spins > 0 then
                    spins = game.Players.LocalPlayer.statz.spins.Value
                	kgvalue = kgslot.Value
                	print("you got: " .. kgvalue)
                	if kgvalue ~= a1 and kgvalue ~= a2 and kgvalue ~= a3 and kgvalue ~= a4 and kgvalue ~= a5 then
                	    kgvalue = kgslot.Value
                		game.Players.LocalPlayer.startevent:FireServer("spin", b)
                		wait(.2)
                		kgvalue = kgslot.Value
                	else
                	    print("You h got: " .. kgvalue)
                	end
                else
                    player.statz.spins:Destroy()
                    game:GetService('TeleportService'):Teleport(game.PlaceId, player)
    		    end
    		end
    	end)
    end)
    ee:Label("It will reset once you have 0 spin left",{
        TextSize = 15;
    	TextColor = Color3.fromRGB(255,255,255); 
    	BgColor = Color3.fromRGB(117, 50, 168);
    }) 
    ee:Button("Save Element",function()
        game:Shutdown()
    end)
	local f = w:CreateFolder("Credits")
    f:Label("made by reav#2966 | Shindo Life ver 045.3",{
        TextSize = 15;
        TextColor = Color3.fromRGB(255,255,255); 
        BgColor = Color3.fromRGB(255, 140, 0);
    }) 
    f:Label("https://discord.gg/aDRStgw",{
        TextSize = 17;
        TextColor = Color3.fromRGB(255,255,255); 
        BgColor = Color3.fromRGB(255, 140, 0); 
    }) 
    f:Button("Copy Discord Link",function()
        setclipboard("https://discord.gg/aDRStgw")
    end)
else
    e:Label("YOU MUST RUN THIS IN MAIN MENU",{
        TextSize = 15;
        TextColor = Color3.fromRGB(255,255,255); 
        BgColor = Color3.fromRGB(117, 50, 168);
    }) 
end
