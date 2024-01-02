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
								-- NOTE: The StationsExitScanRadius HAS TO BE A FLOAT! (15.0 for example (which is the default!))

ReportTerroristOnMetro	= true	-- When set to true the player will get an INSTANT wanted level of 4 when shooting on the Metro,
								-- this to 'contribute' to 'terroristic behavior' realism on (Real-Life) RP servers (where it's not normal either to
								-- just (randomly) shoot while on/in public transportation!) if you want to ENABLE shooting from the Metro (as passenger)
								-- then change this value to false

Debug					= true	-- Do you want some debug message ? 


-- There is all the messages for every action in this script
-- Language available actually : 
-- en (English)
-- fr (Français)
-- es (Spanish)

Language = 'en' 
Message = {}

Message['en'] = {
	['we_warned_you'] = "We have warned you! Police have been notified of your illegal boarding!",
	['no_ticket_leave'] = "You don't have a ticket! please leave the metro or we will need to call the police.",
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
	['entered_metro'] = "You've exited the Metro, your ticket has been invalidated.",
	['terrorist'] = "We will NOT tolerate terrorist behaviour on our public transport vehicles!",
	['no_metro_spawned'] = "Our Appologies, something has gone terribly wrong, you have received a free ticket!",
	['travel_metro'] = "Thank you for traveling with Los Santos Transit, your ticket has been approved.",
}

Message['fr'] = {
	['we_warned_you'] = "Nous vous avons prévenu ! La police a été informée de votre embarquement illégal !",
	['no_ticket_leave'] = "Vous n'avez pas de billet ! veuillez quitter le métro ou nous devrons appeler la police.",
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
	['entered_metro'] = "Vous êtes sorti du métro, votre ticket a été invalidé.",
	['terrorist'] = "Nous ne tolérerons PAS le comportement terroriste sur nos véhicules de transport public !",
	['no_metro_spawned'] = "Nos escuses, quelque chose s'est mal passé, vous avez reçu un billet gratuit!",
	['travel_metro'] = "Merci d'avoir voyagé avec Los Santos Transit, votre billet a été approuvé.",
}

Message['es'] = {
	['we_warned_you'] = "¡Te lo hemos advertido! ¡La policía ha sido notificada de su abordaje ilegal!",
	['no_ticket_leave'] = "¡No tienes billete! Por favor, salga del metro o tendremos que llamar a la policía.",
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
	['entered_metro'] = "Has salido del Metro, tu billete ha sido invalidado.",
	['terrorist'] = "NO toleraremos el comportamiento terrorista en nuestros vehículos de transporte público. !",
	['no_metro_spawned'] = "Nuestras excusas, algo salió mal, recibiste un boleto gratis!",
	['travel_metro'] = "Gracias por viajar con Los Santos Transit, su boleto ha sido aprobado.",
}