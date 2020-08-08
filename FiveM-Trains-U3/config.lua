--=============================================================
-- Settings you CAN change and are meant to be changed, YAY :P
-- I do NOT use these on my server but have implemented it for
-- other users to make it more easy to adapt to their roleplay
-- server for example.
--=============================================================
PayWithBank 			= 25		-- Change this to 1 if you want users to pay with bank card (NOTE: Do implement your OWN banking system here please!)
UserBankIDi 			= 3		-- 1 = Maze, 2 = Bank Of Liberty, 3 = Fleeca  (This will show the corresponding message when the player doesn't have enoug money)
AllowEnterTrainWanted	= 1		-- Change to 1 if you want to allow players to ENTER the train when they have a wanted level
TicketPrice				= 25	-- Change to any value YOU think is suitable for a Metro Ticket in your (RP) Server
StationsExitScanRadius	= 15.0	-- I would RECOMMEND to leave it at 15 for best detection in trains, this variable sets the 'scan radius size' per station marker.
								-- NOTE: The StationsExitScanRadius HAS TO BE A FLOAT! (15.0 for example (which is the default!))

UseTwoMetros			= 1		-- KEEP IN MIND: When using two Metro's, players on one of the trams CAN be 'thrown out' when the trams pass eachother
								-- since the Metro's will PASS THROUGH EACH OTHER at some point! (this is inevitable! since the Metro track is just ONE TRACK!)
								-- it looks like they are two tracks in the game, but at both ends it will make a large 'u turn'!
								-- so if you do NOT want your players to be thrown out (and POSSIBLY killed) by a Metro, then set this value to 0!
								-- When set to 0, the script will only spawn ONE Metro Train instead of two (each in opposite direction)

ReportTerroristOnMetro	= true	-- When set to true the player will get an INSTANT wanted level of 4 when shooting on the Metro,
								-- this to 'contribute' to 'terroristic behavior' realism on (Real-Life) RP servers (where it's not normal either to
								-- just (randomly) shoot while on/in public transportation!) if you want to ENABLE shooting from the Metro (as passenger)
								-- then change this value to false

Debug					= true	-- Do you want some debug message ? 

-- These are the locations of which 'the host' (well his/her script) will
-- pick a random location to spawn a new (Freight) train
TrainLocations = {
	{2533.0,2833.0,38.0},
	{2606.0,2927.0,40.0},
	{2463.0,3872.0,38.8},
	{1164.0,6433.0,32.0},
	{537.0,-1324.1,29.1},
	{219.1,-2487.7,6.0}
}

-- There is all the messages for every action in this script
-- Language available actually : 
-- en (English)
-- fr (Français)

Language = 'fr' 
Message = {}

Message['en'] = {
	['buyticket'] = "Press ~INPUT_CONTEXT~ to to buy a metro ticket",
	['press_to_enter'] = "Press ~INPUT_CONTEXT~ while facing (and near) the Metro to enter it.",
	['los_santos_transit'] = "Los Santos Transit",
	['tourist_information'] = "Tourist Information",
	['already_got_ticket'] = "You already have a valid Metro Ticket, please go to one of the stations and board the Metro",
	['account_information'] = "Account Information",
	['account_nomoney'] = "Transaction failed, you do not have sufficient funds.",
	['ticket_purchased'] = "Thank you for your purchase, your ticket will be valid for the current session.",
	['stop_toolate'] = "Sorry, it seems that you pressed a little bit to late, you'll have to wait for the next station.",
	['sorry'] = "Sorry",
	['exit_metro_random'] = ", but it's not allowed to randomly exit the Metro. Please wait for the next station!",
	['Sir'] = "Sir",
	['Miss'] = "Miss",
	['need_ticket'] = "Sorry, You will need to buy a LST Metro Ticket first.",
	['have_wantedlevel'] = "Sorry we do not allow futugives in our Metro's. All passengers should be able to travel safely!",
	['entered_metro'] = "You've entered the Metro, your ticket has been invalidated.",
	['terrorist'] = "We will NOT tolerate terrorist behaviour on our public transport vehicles!",
	['no_metro_spawned'] = "Our Appologies, something has gone terribly wrong, you have received a free ticket!",
	['travel_metro'] = "Thank you for traveling with Los Santos Transit.",
}

Message['fr'] = {
	['buyticket'] = "Appuyez sur ~INPUT_CONTEXT~ pour acheter un ticket de Metro",
	['press_to_enter'] = "Appuyez sur ~INPUT_CONTEXT~ en face (et proche) du Metro pour entrer dedans.",
	['los_santos_transit'] = "Los Santos Transit",
	['tourist_information'] = "Information Touriste",
	['already_got_ticket'] = "Vous avez déjà un ticket de Metro valide, merci de vous rendre dans une de nos stations et monter dans un Metro",
	['account_information'] = "Information Compte",
	['account_nomoney'] = "Transaction échouée, solde insuffisant",
	['ticket_purchased'] = "Merci pour votre achat, votre ticket sera valide pendant votre session actuelle.",
	['stop_toolate'] = "Désolé, il semble que vous avez appuyé trop tard, vous devez attendre la prochaine station.",
	['sorry'] = "Désolé",
	['exit_metro_random'] = ", mais il n'est pas permis de sortir aléatoirement du Metro. Merci d'attendre la prochaine station !",
	['Sir'] = "Monsieur",
	['Miss'] = "Mademoiselle",
	['need_ticket'] = "Désolé, vous devez acheté d'abord un ticket de Metro.",
	['have_wantedlevel'] = "Désolé, nous ne tolérons pas les fugitifs dans nos Metro. Tout les passagers doivent voyager en toute sécurité !",
	['entered_metro'] = "Vous êtes entré dans le Metro, votre ticket a été invalidé.",
	['terrorist'] = "Nous ne tolérerons PAS le comportement terroriste sur nos véhicules de transport public !",
	['no_metro_spawned'] = "Nos escuses, quelque chose s'est mal passé, vous avez reçu un billet gratuit!",
	['travel_metro'] = "Merci de voyager avec Los Santos Transit.",
}

Message['es'] = {
	['buyticket'] = "Pulsa ~INPUT_CONTEXT~ comprar un billete de metro",
	['press_to_enter'] = "Pulsa ~INPUT_CONTEXT~ enfrente (y cerca) del Metro para entrar.",
	['los_santos_transit'] = "Los Santos Transit",
	['tourist_information'] = "Información turística",
	['already_got_ticket'] = "Ya tiene un boleto de metro válido, vaya a una de nuestras estaciones y suba a un metro",
	['account_information'] = "Información de la cuenta",
	['account_nomoney'] = "Transacción fallida, saldo insuficiente",
	['ticket_purchased'] = "Gracias por su compra, su entrada será válida durante su sesión actual.",
	['stop_toolate'] = "Lo siento, parece que presionaste demasiado tarde, tienes que esperar a la siguiente estación.",
	['sorry'] = "Lo siento",
	['exit_metro_random'] = ", pero no está permitido salir del Metro al azar. Espere la próxima estación !",
	['Sir'] = "señor",
	['Miss'] = "señorita",
	['need_ticket'] = "Lo siento, primero debes comprar un boleto de Metro.",
	['have_wantedlevel'] = "Lo sentimos, no toleramos fugitivos en nuestro Metro. Todos los pasajeros deben viajar con seguridad !",
	['entered_metro'] = "Has entrado en Metro, tu billete ha sido invalidado.",
	['terrorist'] = "NO toleraremos el comportamiento terrorista en nuestros vehículos de transporte público. !",
	['no_metro_spawned'] = "Nuestras excusas, algo salió mal, recibiste un boleto gratis!",
	['travel_metro'] = "Gracias por viajar con Los Santos Transit.",
}