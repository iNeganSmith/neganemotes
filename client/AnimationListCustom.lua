-- NeganEmotes - Tebex Free Edition
-- No third-party streamed animation packs are redistributed in this branch.

---@type AnimationListConfig?
---@diagnostic disable-next-line: missing-fields
local CustomDP = {}

CustomDP.Expressions = {}
CustomDP.Walks = {}
CustomDP.Shared = {}
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

function LoadAddonEmotes()
    assert(CustomDP ~= nil, 'Addon emotes can only be loaded once')
    for arrayName, array in pairs(CustomDP) do
        if RP[arrayName] then
            for emoteName, emoteData in pairs(array) do
                RP[arrayName][emoteName] = emoteData
            end
        end
    end
    CustomDP = nil
end
