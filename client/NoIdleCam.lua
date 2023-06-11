RegisterCommand('idlecamoff', function() -- help2 31, 167, 9
  TriggerEvent("rzr:notify", "Idle Cam ist jetzt aus", "RZR | Emotes")
  DisableIdleCamera(true)
  SetPedCanPlayAmbientAnims(playerPed, false)
  SetResourceKvp("idleCam", "off")
end)

RegisterCommand('idlecamon', function() -- help2 31, 167, 9
  TriggerEvent("rzr:notify", "Idle Cam ist jetzt an", "RZR | Emotes")
  DisableIdleCamera(false)
  SetPedCanPlayAmbientAnims(playerPed, true)
  SetResourceKvp("idleCam", "on")
end)

Citizen.CreateThread(function()
  TriggerEvent("chat:addSuggestion", "/idlecamon", "Re-enables the idle cam")
  TriggerEvent("chat:addSuggestion", "/idlecamoff", "Disables the idle cam")

  local idleCamDisabled = GetResourceKvpString("idleCam") == "off"
  DisableIdleCamera(idleCamDisabled)
end)
