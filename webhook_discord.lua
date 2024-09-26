local HttpService = game:GetService("HttpService")
local PlayerLocal = game.Players.LocalPlayer
local OSTime = os.time()
local Time = os.date('!*t', OSTime)

    request({
        Url = "",
        Method = 'POST',
        Headers = { ['Content-Type'] = 'application/json' },
        Body = HttpService:JSONEncode({
            content = "",
            embeds = {{
                title = "",
                color = 255,
                fields = {
                    { name = "Roblox Profile:", value = "[Click here](https://www.roblox.com/users/" .. PlayerLocal.UserId .. "/profile)\n\n".. PlayerLocal.Name .."", inline = true }
                },
                timestamp = string.format('%d-%d-%dT%02d:%02d:%02dZ', Time.year, Time.month, Time.day, Time.hour, Time.min, Time.sec)
            }}
        })
    })
