-- Path name, for example "root/server"
path = "set path here" 

RegisterCommand("fetch", function()
    print("fetching")
    Citizen.CreateThread(function()
        local result = os.execute("cd "..path.." && git fetch")
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
        local result = os.execute("cd "..path.." && git pull")
        if result then
            print("pulled")
        else
            print("failed to pull")
        end
    end)
end)

