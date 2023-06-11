if Config.CheckForUpdates then
    PerformHttpRequest("https://raw.githubusercontent.com/TayMcKenzieNZ/rpemotes/master/version.txt", function(err, text, headers)
        local currentVersion = GetResourceMetadata(GetCurrentResourceName(), "version")
        if not text then
            print("Currently unable to run a version check")
        end
        if text:gsub("%s+", "") ~= currentVersion:gsub("%s+", "") then
            print("^7You are currently running an outdated version, ^7please update to version a newer version ^1" .. currentVersion .. "^7->^2" .. text .. "^7")
        end
    end)
end