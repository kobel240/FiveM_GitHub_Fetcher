RegisterCommand("fetch", function()
    print("fetching")
    Citizen.CreateThread(function()
        local result = os.execute("cd /root/FiveM_V3/server-data && git fetch")
        if result then
            print("fetched, ready to pull")
        else
            print("failed to fetch")
        end
    end)
end)

RegisterCommand("pull", function()
    print("pulling")
    Citizen.CreateThread(function()
        local result = os.execute("cd /root/FiveM_V3/server-data && git pull")
        if result then
            print("pulled")
        else
            print("failed to pull")
        end
    end)
end)

