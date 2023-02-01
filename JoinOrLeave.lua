if getgenv().executed then
    return
        print("already executed the Join/Leave spy")
end

getgenv().executed = true


game.Players.PlayerAdded:Connect(function(player)
    local userId = player.UserId
    local thumbType = Enum.ThumbnailType.AvatarBust
    local thumbSize = Enum.ThumbnailSize.Size420x420
    local content, isReady = game.Players:GetUserThumbnailAsync(userId, thumbType, thumbSize)
        
        game.StarterGui:SetCore("SendNotification", {
            Title = "Someone joined!",
            Icon = content,
            Text = player.DisplayName.."("..player.name..")" .. " Joined the game.",
            Duration = 5
        })
        if getgenv().webhook ~= nil then
local GameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
local placeid = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).PlaceId
local OSTime = os.time();
local userId = player.UserId
local thumbType = Enum.ThumbnailType.AvatarBust
local thumbSize = Enum.ThumbnailSize.Size420x420
local content, isReady = game.Players:GetUserThumbnailAsync(userId, thumbType, thumbSize)
local Time = os.date('!*t', OSTime);
local Avatar = content;
local Embed = {
    title = "ID: "..player.UserId;
    color = '99999';
    footer = { text = game.JobId };
    author = {
        name = player.Name;
        url = 'https://web.roblox.com/users/' ..player.UserId;
    };
    fields = {
        {
            name = 'joined the game';
            value = player.Name .." has joined the game";
        },
    };
    timestamp = string.format('%d-%d-%dT%02d:%02d:%02dZ', Time.year, Time.month, Time.day, Time.hour, Time.min, Time.sec);
};
(syn and syn.request or http_request) {
    Url = webhook;
    Method = 'POST';
    Headers = {
        ['Content-Type'] = 'application/json';
    };
    Body = game:GetService'HttpService':JSONEncode( { content = Content; embeds = { Embed } } );
};

        end
        print(player.name.. "Joined the game")
    end)
	
		
			
				
					
						
							
								
game.Players.PlayerRemoving:Connect(function(player)
    local userId = player.UserId
    local thumbType = Enum.ThumbnailType.AvatarBust
    local thumbSize = Enum.ThumbnailSize.Size420x420
    local content, isReady = game.Players:GetUserThumbnailAsync(userId, thumbType, thumbSize)
        
        game.StarterGui:SetCore("SendNotification", {
            Title = "Someone Left!",
            Icon = content,
            Text = player.DisplayName.."("..player.name..")" .. " Left the game.",
            Duration = 5
        })

if getgenv().webhook ~= nil then
local GameName = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name
local placeid = game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).PlaceId
local OSTime = os.time();
local userId = player.UserId
local thumbType = Enum.ThumbnailType.AvatarBust
local thumbSize = Enum.ThumbnailSize.Size420x420
local content, isReady = game.Players:GetUserThumbnailAsync(userId, thumbType, thumbSize)
local Time = os.date('!*t', OSTime);
local Avatar = content;
local Embed = {
    title = "ID: "..player.UserId;
    color = '99999';
    footer = { text = game.JobId };
    author = {
        name = player.Name;
        url = 'https://web.roblox.com/users/' ..player.UserId;
    };
    fields = {
        {
            name = 'Left the game';
            value = player.Name .." has Left the game";
        },
    };
    timestamp = string.format('%d-%d-%dT%02d:%02d:%02dZ', Time.year, Time.month, Time.day, Time.hour, Time.min, Time.sec);
};
(syn and syn.request or http_request) {
    Url = webhook;
    Method = 'POST';
    Headers = {
        ['Content-Type'] = 'application/json';
    };
    Body = game:GetService'HttpService':JSONEncode( { content = Content; embeds = { Embed } } );
};
end
        print(player.name.. "Left the game")
end)




