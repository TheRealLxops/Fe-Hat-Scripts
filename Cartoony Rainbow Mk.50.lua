local Plr = game:GetService("Players").LocalPlayer -- you
local Player = game:GetService("Players").LocalPlayer-- you
local Character = Player.Character-- your character
local function align(i,v) -- align function
local att0 = Instance.new("Attachment", i)
att0.Position = Vector3.new(0,0,0)
local att1 = Instance.new("Attachment", v)
att1.Position = Vector3.new(0,-1.5,0)--position
att1.Rotation = Vector3.new(50, 10, 50)--rotation
local AP = Instance.new("AlignPosition", i)
AP.Attachment0 = att0
AP.Attachment1 = att1
AP.RigidityEnabled = false
AP.ReactionForceEnabled = false
AP.ApplyAtCenterOfMass = true
AP.MaxForce = 9999999
AP.MaxVelocity = math.huge
AP.Responsiveness = 1000000000000
local AO = Instance.new("AlignOrientation", i)
AO.Attachment0 = att0
AO.Attachment1 = att1
AO.ReactionTorqueEnabled = true
AO.PrimaryAxisOnly = false
AO.MaxTorque = 9999999
AO.MaxAngularVelocity = math.huge
AO.Responsiveness = 10000000000000
end








local Hats = {
    xd = Character:WaitForChild("Cartoony Rainbow Mk.50"), -- the hat/body limb name

}
Hats.xd.Handle.AccessoryWeld:Remove()

local function align(i,v)
local att0 = Instance.new("Attachment", i)



att0.Position = Vector3.new(0,0,0) 

--test

local att1 = Instance.new("Attachment", v)
att1.Position = Vector3.new(0,-1.2,-.5)--position
att1.Rotation = Vector3.new(-90, 0, 0)--rotation

local AP = Instance.new("AlignPosition", i)
AP.Attachment0 = att0
AP.Attachment1 = att1
AP.RigidityEnabled = false
AP.ReactionForceEnabled = false
AP.ApplyAtCenterOfMass = true
AP.MaxForce = 9999999
AP.MaxVelocity = math.huge
AP.Responsiveness = 1000000000000
local AO = Instance.new("AlignOrientation", i)
AO.Attachment0 = att0
AO.Attachment1 = att1
AO.ReactionTorqueEnabled = true
AO.PrimaryAxisOnly = false
AO.MaxTorque = 9999999
AO.MaxAngularVelocity = math.huge
AO.Responsiveness = 10000000000000
end



align(Hats.xd.Handle, Character["Right Arm"])







