-- Emotes you add in the file will automatically be added to AnimationList.lua
-- If you have multiple custom list files they MUST be added between AnimationList.lua and Emote.lua in fxmanifest.lua!
-- Don't change 'CustomDP' it is local to this file!

-- Remove the } from the = {} then enter your own animation code ---
-- Don't forget to close the tables.

---@type AnimationListConfig?
---@diagnostic disable-next-line: missing-fields
local CustomDP = {}

CustomDP.Expressions = {}
CustomDP.Walks = {}
CustomDP.Shared = {
    -- Bailes latinos sincronizados incluidos en stream/[nuevosbailes].
    ['bachata1f'] = { 'pandora@authenticv1@bachata1', 'pandora_fem', 'Bachata 1 (pareja)', 'bachata1m', AnimationOptions = { EmoteLoop = true, Attachto = true, xPos = 0.0, yPos = 0.0, zPos = 0.0, xRot = 0.0, yRot = 0.0, zRot = 0.0 } },
    ['bachata1m'] = { 'pandora@authenticv1@bachata1', 'pandora_male', 'Bachata 1 (pareja)', 'bachata1f', AnimationOptions = { EmoteLoop = true } },
    ['bachata2f'] = { 'pandora@authenticv1@bachata2', 'pandora_fem', 'Bachata 2 (pareja)', 'bachata2m', AnimationOptions = { EmoteLoop = true, Attachto = true, xPos = 0.0, yPos = 0.0, zPos = 0.0, xRot = 0.0, yRot = 0.0, zRot = 0.0 } },
    ['bachata2m'] = { 'pandora@authenticv1@bachata2', 'pandora_male', 'Bachata 2 (pareja)', 'bachata2f', AnimationOptions = { EmoteLoop = true } },
    ['bachata3f'] = { 'pandora@authenticv1@bachata3', 'pandora_fem', 'Bachata 3 (pareja)', 'bachata3m', AnimationOptions = { EmoteLoop = true, Attachto = true, xPos = 0.0, yPos = 0.0, zPos = 0.0, xRot = 0.0, yRot = 0.0, zRot = 0.0 } },
    ['bachata3m'] = { 'pandora@authenticv1@bachata3', 'pandora_male', 'Bachata 3 (pareja)', 'bachata3f', AnimationOptions = { EmoteLoop = true } },
    ['bachata4f'] = { 'pandora@authenticv1@bachata4', 'pandora_fem', 'Bachata 4 (pareja)', 'bachata4m', AnimationOptions = { EmoteLoop = true, Attachto = true, xPos = 0.0, yPos = 0.0, zPos = 0.0, xRot = 0.0, yRot = 0.0, zRot = 0.0 } },
    ['bachata4m'] = { 'pandora@authenticv1@bachata4', 'pandora_male', 'Bachata 4 (pareja)', 'bachata4f', AnimationOptions = { EmoteLoop = true } },
    ['salsa1f'] = { 'pandora@authenticv1@salsa1', 'pandora_fem', 'Salsa 1 (pareja)', 'salsa1m', AnimationOptions = { EmoteLoop = true, Attachto = true, xPos = 0.0, yPos = 0.0, zPos = 0.0, xRot = 0.0, yRot = 0.0, zRot = 0.0 } },
    ['salsa1m'] = { 'pandora@authenticv1@salsa1', 'pandora_male', 'Salsa 1 (pareja)', 'salsa1f', AnimationOptions = { EmoteLoop = true } },
    ['salsa2f'] = { 'pandora@authenticv1@salsa2', 'pandora_fem', 'Salsa 2 (pareja)', 'salsa2m', AnimationOptions = { EmoteLoop = true, Attachto = true, xPos = 0.0, yPos = 0.0, zPos = 0.0, xRot = 0.0, yRot = 0.0, zRot = 0.0 } },
    ['salsa2m'] = { 'pandora@authenticv1@salsa2', 'pandora_male', 'Salsa 2 (pareja)', 'salsa2f', AnimationOptions = { EmoteLoop = true } },
    ['salsa3f'] = { 'pandora@authenticv1@salsa3', 'pandora_fem', 'Salsa 3 (pareja)', 'salsa3m', AnimationOptions = { EmoteLoop = true, Attachto = true, xPos = 0.0, yPos = 0.0, zPos = 0.0, xRot = 0.0, yRot = 0.0, zRot = 0.0 } },
    ['salsa3m'] = { 'pandora@authenticv1@salsa3', 'pandora_male', 'Salsa 3 (pareja)', 'salsa3f', AnimationOptions = { EmoteLoop = true } },
    ['kompa1f'] = { 'pandora@authenticv1@kompa1', 'pandora_fem', 'Kompa 1 (pareja)', 'kompa1m', AnimationOptions = { EmoteLoop = true, Attachto = true, xPos = 0.0, yPos = 0.0, zPos = 0.0, xRot = 0.0, yRot = 0.0, zRot = 0.0 } },
    ['kompa1m'] = { 'pandora@authenticv1@kompa1', 'pandora_male', 'Kompa 1 (pareja)', 'kompa1f', AnimationOptions = { EmoteLoop = true } },
}
CustomDP.Dances = {}
CustomDP.AnimalEmotes = {}
CustomDP.Exits = {}
CustomDP.Emotes = {}
CustomDP.PropEmotes = {}


if StreamEmoteAddons then
    for category, entries in pairs(StreamEmoteAddons) do
        CustomDP[category] = entries
    end
end
-----------------------------------------------------------------------------------------
--| I don't think you should change the code below unless you know what you are doing |--
-----------------------------------------------------------------------------------------

function LoadAddonEmotes()
    assert(CustomDP ~= nil, 'Addon emotes can only be loaded once')
    for arrayName, array in pairs(CustomDP) do
        if RP[arrayName] then
            for emoteName, emoteData in pairs(array) do
                RP[arrayName][emoteName] = emoteData
            end
        end
    end
    -- Free memory
    CustomDP = nil
end
