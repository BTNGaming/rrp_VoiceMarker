local playerNamesDist = 10

Citizen.CreateThread(function()
    while true do
        for id = 0, 256 do
            if  ((NetworkIsPlayerActive( id )) and GetPlayerPed( id ) ~= GetPlayerPed( -1 )) then
                ped = GetPlayerPed( id )
 
                x1, y1, z1 = table.unpack( GetEntityCoords( GetPlayerPed( -1 ), true ) )
                x2, y2, z2 = table.unpack( GetEntityCoords( GetPlayerPed( id ), true ) )
                distance = math.floor(GetDistanceBetweenCoords(x1,  y1,  z1,  x2,  y2,  z2,  true))
		local takeaway = 0.95
        z2 = z2 + Config.MarkerHeight
                if ((distance < playerNamesDist) and IsEntityVisible(GetPlayerPed(id))) ~= GetPlayerPed( -1 ) then
            if NetworkIsPlayerTalking(id) then
            DrawMarker(Config.MarkerType,x2,y2,z2 - 0.0, 0, 0, 10, 0, 0, 0, Config.MarkerSize.x, Config.MarkerSize.y, Config.MarkerSize.z, Config.MarkerColor.r, Config.MarkerColor.g, Config.MarkerColor.b, 105, Config.MarkerBounce, 1, 2, 0, 0, 0, 0)
		    else
                    end
                end  
            end
        end
        Citizen.Wait(0)
    end
end)
