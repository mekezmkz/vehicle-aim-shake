local shakeIntensity = 0.2 -- Adjust this value to control the intensity of the camera shake
local isShaking = false
local shakeTimer = 0

-- Main thread to check if player is aiming in a vehicle
Citizen.CreateThread(function()
    while true do
        local ped = PlayerPedId()
        local wait = 500 -- Default wait time for optimization
        
        -- Check if player is in a vehicle
        if IsPedInAnyVehicle(ped, false) then
            wait = 100 -- Reduce wait time when in vehicle for more responsive checks
            
            -- Check if player is aiming
            if IsPlayerFreeAiming(PlayerId()) then
                -- Create a continuous shake effect while aiming
                shakeTimer = shakeTimer + 1
                if shakeTimer >= 8 then -- Reset shake every 8 cycles
                    StopGameplayCamShaking(true)
                    ShakeGameplayCam("SMALL_EXPLOSION_SHAKE", shakeIntensity)
                    shakeTimer = 0
                end
                isShaking = true
                wait = 50 -- Shorter wait time for more responsive shake loop
            else
                if isShaking then
                    -- Stop camera shake
                    StopGameplayCamShaking(true)
                    isShaking = false
                    shakeTimer = 0
                end
            end
        else
            -- If not in vehicle, ensure shake is stopped
            if isShaking then
                StopGameplayCamShaking(true)
                isShaking = false
                shakeTimer = 0
            end
        end
        
        Citizen.Wait(wait)
    end
end)

-- Command to adjust shake intensity in-game (for testing/admin use)
--RegisterCommand('setaimshake', function(source, args)
--    if args[1] and tonumber(args[1]) then
--         local newIntensity = tonumber(args[1])
--         if newIntensity >= 0.0 and newIntensity <= 2.0 then
--             shakeIntensity = newIntensity
--             TriggerEvent('chat:addMessage', {
--                 color = {255, 0, 0},
--                 multiline = true,
--                 args = {"System", "Camera shake intensity set to " .. newIntensity}
--             })
--         else
--             TriggerEvent('chat:addMessage', {
--                 color = {255, 0, 0},
--                 multiline = true,
--                 args = {"System", "Intensity must be between 0.0 and 2.0"}
--             })
--         end
--     end
-- end, false)