Citizen.CreateThread(function()
listOn = false
	while true do
		Wait(0)
		
		if currentjob == "Policier" then
            TriggerEvent('es_freeroam:wanted', GetPlayerPed(-1))
        end
		
		-- RECOLTE DE CANABIS - START
		if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), 2224.3110351563,5576.8706054688,53.842113494873, true) <= 10 then
		
			if currentjob ~= "Policier" then
				if runningtimer1 == false then
					runningtimer1 = true
					Citizen.Wait(5000)
						if weed < 30 then
							weed = weed + 1
								ClearPrints()
								SetTextEntry_2("STRING")
								AddTextComponentString("~g~Vous venez de rÃƒÂ©colter du cannabis.")
								DrawSubtitleTimed(4500, 1)
						else
								ClearPrints()
								SetTextEntry_2("STRING")
								AddTextComponentString("~r~Vous ne pouvez pas rÃƒÂ©colter plus de cannabis!")
								DrawSubtitleTimed(2000, 1)
						end
					runningtimer1 = false
				end
			else
								ClearPrints()
								SetTextEntry_2("STRING")
								AddTextComponentString("~r~Vous ne pouvez pas rÃƒÂ©colter de cannabis en tant que policier!")
								DrawSubtitleTimed(1000, 1)
			end
		else
		runningtimer1 = false
		end
		
		
		if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), -1171.8962402344,-1572.1916503906,4.6636219024658, true) <= 5 then
		if currentjob ~= "Policier" then
		if runningtimer2 == false then
		runningtimer2 = true
		Citizen.Wait(2500)
		if weed > 0 then
		weed = weed - 1
		TriggerServerEvent('mission:completed', 50)
			ClearPrints()
			SetTextEntry_2("STRING")
			AddTextComponentString("~g~Vous venez de vendre du cannabis pour 50Ã¢â€šÂ¬.")
			DrawSubtitleTimed(2000, 1)
		else
			ClearPrints()
			SetTextEntry_2("STRING")
			AddTextComponentString("~r~Vous n'avez pas de cannabis a vendre!")
			DrawSubtitleTimed(2000, 1)
		end
		runningtimer2 = false
		
		end
		else
								ClearPrints()
								SetTextEntry_2("STRING")
								AddTextComponentString("~r~Vous ne pouvez pas vendre de cannabis en tant que policier!")
								DrawSubtitleTimed(1000, 1)
		end
		else
		runningtimer2 = false
		end
		
		-- RECOLTE DE CANABIS - END
		
		
		-- RECOLTE DE MINERAIS - START
		if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), 2682.5861, 2819.381835, 40.4238777, true) <= 10 then
		
			if currentjob == "Mineur" then
				if runningtimer3 == false then
					runningtimer3 = true
					Citizen.Wait(5000)
						if minerais < 30 then
							minerais = minerais + 1
								ClearPrints()
								SetTextEntry_2("STRING")
								AddTextComponentString("~g~Vous venez de rÃƒÂ©colter un minerais de charbon.")
								DrawSubtitleTimed(4500, 1)
						else
								ClearPrints()
								SetTextEntry_2("STRING")
								AddTextComponentString("~r~Vous ne pouvez pas rÃƒÂ©colter plus de minerais!")
								DrawSubtitleTimed(2000, 1)
						end
					runningtimer3 = false
				end
			else
								ClearPrints()
								SetTextEntry_2("STRING")
								AddTextComponentString("~r~Vous devez ÃƒÂªtre ~g~mineur~r~ pour rÃƒÂ©colter du charbon!")
								DrawSubtitleTimed(1000, 1)
			end
		else
		runningtimer3 = false
		end
		
		
		if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), -100.90411,-1025.43212,27.273557, true) <= 5 then
		if currentjob == "Mineur" then
		if runningtimer4 == false then
		runningtimer4 = true
		Citizen.Wait(2500)
		if minerais > 0 then
		minerais = minerais - 1
		TriggerServerEvent('mission:completed', 35)
			ClearPrints()
			SetTextEntry_2("STRING")
			AddTextComponentString("~g~Vous venez de vendre du charbon pour 35Ã¢â€šÂ¬.")
			DrawSubtitleTimed(2000, 1)
		else
			ClearPrints()
			SetTextEntry_2("STRING")
			AddTextComponentString("~r~Vous n'avez pas de minerais a vendre!")
			DrawSubtitleTimed(2000, 1)
		end
		runningtimer4 = false
		
		end
		else
								ClearPrints()
								SetTextEntry_2("STRING")
								AddTextComponentString("~r~Vous devez ÃƒÂªtre ~g~mineur~r~ pour vendre du charbon!")
								DrawSubtitleTimed(1000, 1)
		end
		else
		runningtimer4 = false
		end
		
		-- RECOLTE DE MINERAIS - END
		
		
		
		-- RECOLTE DE COMPOSANTS - START
		if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), 2538.594726, 2848.137939, 38.670269, true) <= 10 then
		
			if currentjob == "Ãƒâ€°lectricien" then
				if runningtimer5 == false then
					runningtimer5 = true
					Citizen.Wait(5000)
						if composants < 30 then
							composants = composants + 1
								ClearPrints()
								SetTextEntry_2("STRING")
								AddTextComponentString("~g~Vous venez de dÃƒÂ©monter un composant dÃƒÂ©faillant.")
								DrawSubtitleTimed(4500, 1)
						else
								ClearPrints()
								SetTextEntry_2("STRING")
								AddTextComponentString("~r~Il n'y a plus de composants dÃƒÂ©faillant!")
								DrawSubtitleTimed(2000, 1)
						end
					runningtimer5 = false
				end
			else
								ClearPrints()
								SetTextEntry_2("STRING")
								AddTextComponentString("~r~Vous devez ÃƒÂªtre ~g~Ãƒâ€°lectricien~r~ pour rÃƒÂ©parer cette armoire!")
								DrawSubtitleTimed(1000, 1)
			end
		else
		runningtimer5 = false
		end
		
		
		if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), -305.9089, -1168.6358, 23.2953, true) <= 5 then
		if currentjob == "Ãƒâ€°lectricien" then
		if runningtimer6 == false then
		runningtimer6 = true
		Citizen.Wait(2500)
		if composants > 0 then
		composants = composants - 1
		TriggerServerEvent('mission:completed', 40)
			ClearPrints()
			SetTextEntry_2("STRING")
			AddTextComponentString("~g~Vous venez de rÃƒÂ©parer un composant pour 40Ã¢â€šÂ¬.")
			DrawSubtitleTimed(2000, 1)
		else
			ClearPrints()
			SetTextEntry_2("STRING")
			AddTextComponentString("~r~Vous n'avez pas de composants a rÃƒÂ©parer!")
			DrawSubtitleTimed(2000, 1)
		end
		runningtimer6 = false
		
		end
		else
								ClearPrints()
								SetTextEntry_2("STRING")
								AddTextComponentString("~r~Vous devez ÃƒÂªtre ~g~Ãƒâ€°lectricien~r~ pour rÃƒÂ©parer des composants!")
								DrawSubtitleTimed(1000, 1)
		end
		else
		runningtimer6 = false
		end
		
		-- RECOLTE DE COMPOSANTS - END
		
		
		
		-- RECOLTE DE LEGUMES - START
		if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), 432.81555, 6512.2866, 28.295955, true) <= 10 then
		
			if currentjob == "Fermier" then
				if runningtimer7 == false then
					runningtimer7 = true
					Citizen.Wait(5000)
						if legumes < 30 then
							legumes = legumes + 1
								ClearPrints()
								SetTextEntry_2("STRING")
								AddTextComponentString("~g~Vous venez de rÃƒÂ©colter un lÃƒÂ©gume.")
								DrawSubtitleTimed(4500, 1)
						else
								ClearPrints()
								SetTextEntry_2("STRING")
								AddTextComponentString("~r~Il n'y a plus de legumes a rÃƒÂ©colter!")
								DrawSubtitleTimed(2000, 1)
						end
					runningtimer7 = false
				end
			else
								ClearPrints()
								SetTextEntry_2("STRING")
								AddTextComponentString("~r~Vous devez ÃƒÂªtre ~g~Fermier~r~ pour rÃƒÂ©colter des lÃƒÂ©gumes!")
								DrawSubtitleTimed(1000, 1)
			end
		else
		runningtimer7 = false
		end
		
		
		if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), -629.0490, 242.8930, 81.8941, true) <= 5 then
		if currentjob == "Fermier" then
		if runningtimer8 == false then
		runningtimer8 = true
		Citizen.Wait(2500)
		if legumes > 0 then
		legumes = legumes - 1
		TriggerServerEvent('mission:completed', 45)
			ClearPrints()
			SetTextEntry_2("STRING")
			AddTextComponentString("~g~Vous venez de vendre un lÃƒÂ©gume au marchÃƒÂ© pour 45Ã¢â€šÂ¬.")
			DrawSubtitleTimed(2000, 1)
		else
			ClearPrints()
			SetTextEntry_2("STRING")
			AddTextComponentString("~r~Vous n'avez plus de lÃƒÂ©gumes a vendre.")
			DrawSubtitleTimed(2000, 1)
		end
		runningtimer8 = false
		
		end
		else
								ClearPrints()
								SetTextEntry_2("STRING")
								AddTextComponentString("~r~Vous devez ÃƒÂªtre ~g~Fermier~r~ pour vendre des legumes!")
								DrawSubtitleTimed(1000, 1)
		end
		else
		runningtimer8 = false
		end
		
		-- RECOLTE DE LEGUMES - END
		
		-- RECOLTE DE BOIS - START
		if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), -597.9465, 5301.661621, 70.21409, true) <= 10 then
		
			if currentjob == "BÃƒÂ»cheron" then
				if runningtimer9 == false then
					runningtimer9 = true
					Citizen.Wait(5000)
						if bois < 30 then
							bois = bois + 1
								ClearPrints()
								SetTextEntry_2("STRING")
								AddTextComponentString("~g~Vous venez de couper un rondin de bois.")
								DrawSubtitleTimed(4500, 1)
						else
								ClearPrints()
								SetTextEntry_2("STRING")
								AddTextComponentString("~r~Il n'y a plus de bois a couper!")
								DrawSubtitleTimed(2000, 1)
						end
					runningtimer9 = false
				end
			else
								ClearPrints()
								SetTextEntry_2("STRING")
								AddTextComponentString("~r~Vous devez ÃƒÂªtre ~g~BÃƒÂ»cheron~r~ pour couper du bois!")
								DrawSubtitleTimed(1000, 1)
			end
		else
		runningtimer9 = false
		end
		
		
		if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), -93.8015, 2798.4980, 53.359611, true) <= 5 then
		if currentjob == "BÃƒÂ»cheron" then
		if runningtimer10 == false then
		runningtimer10 = true
		Citizen.Wait(2500)
		if bois > 0 then
		bois = bois - 1
		TriggerServerEvent('mission:completed', 20)
			ClearPrints()
			SetTextEntry_2("STRING")
			AddTextComponentString("~g~Vous venez de vendre un rondin de bois pour 20Ã¢â€šÂ¬.")
			DrawSubtitleTimed(2000, 1)
		else
			ClearPrints()
			SetTextEntry_2("STRING")
			AddTextComponentString("~r~Vous n'avez plus de bois a vendre.")
			DrawSubtitleTimed(2000, 1)
		end
		runningtimer10 = false
		
		end
		else
								ClearPrints()
								SetTextEntry_2("STRING")
								AddTextComponentString("~r~Vous devez ÃƒÂªtre ~g~BÃƒÂ»cheron~r~ pour vendre du bois!")
								DrawSubtitleTimed(1000, 1)
		end
		else
		runningtimer10 = false
		end
		
		-- RECOLTE DE BOIS - END
		
		
		-- RECOLTE DE POUBELLES - START
		if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), 61.2373, 6508.7988, 31.4746, true) <= 10 then
		
			if currentjob == "Eboueur" then
				if runningtimer11 == false then
					runningtimer11 = true
					Citizen.Wait(5000)
						if poubelle < 30 then
							poubelle = poubelle + 1
								ClearPrints()
								SetTextEntry_2("STRING")
								AddTextComponentString("~g~Vous venez de ramasser un sac poubelle.")
								DrawSubtitleTimed(4500, 1)
						else
								ClearPrints()
								SetTextEntry_2("STRING")
								AddTextComponentString("~r~Il n'y a plus de sac poubelle a ramasser!")
								DrawSubtitleTimed(2000, 1)
						end
					runningtimer11 = false
				end
			else
								ClearPrints()
								SetTextEntry_2("STRING")
								AddTextComponentString("~r~Vous devez ÃƒÂªtre ~g~Eboueur~r~ pour ramasser les poubelles!")
								DrawSubtitleTimed(1000, 1)
			end
		else
		runningtimer11 = false
		end
		
		
		if GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(-1)), -1135.792480, 2692.8027, 18.80028, true) <= 5 then
		if currentjob == "Eboueur" then
		if runningtimer12 == false then
		runningtimer12 = true
		Citizen.Wait(2500)
		if poubelle > 0 then
		poubelle = poubelle - 1
		TriggerServerEvent('mission:completed', 20)
			ClearPrints()
			SetTextEntry_2("STRING")
			AddTextComponentString("~g~Vous venez de dÃƒÂ©poser un sac poubelle pour 20Ã¢â€šÂ¬.")
			DrawSubtitleTimed(2000, 1)
		else
			ClearPrints()
			SetTextEntry_2("STRING")
			AddTextComponentString("~r~Vous n'avez plus de sac poubelle a dÃƒÂ©poser.")
			DrawSubtitleTimed(2000, 1)
		end
		runningtimer12 = false
		
		end
		else
								ClearPrints()
								SetTextEntry_2("STRING")
								AddTextComponentString("~r~Vous devez ÃƒÂªtre ~g~Eboueur~r~ pour dÃƒÂ©poser un sac poubelle!")
								DrawSubtitleTimed(1000, 1)
		end
		else
		runningtimer12 = false
		end
		
		-- RECOLTE DE POUBELLES - END
		
		
	end
end)
