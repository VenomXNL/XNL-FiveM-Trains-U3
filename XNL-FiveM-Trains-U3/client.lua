--[[
	WARNING WARNING WARNING!!
		Disable the XNLforceTrains function on line 456 BEFORE you use the script online! with that command you can force the trains to spawn (for testing only!)
	WARNING WARNING WARNING!!
=====================================================================================================================================	
    License, Credits, Basic information, FAQ
=====================================================================================================================================	
	Based on/inspired by: 
	Blumlaut (FiveM Community) / Bluethefurry (Github)
	Original Post:	 https://forum.fivem.net/t/release-trains/28841
	Original Script: https://github.com/Bluethefurry/FiveM-Trains/releases
	
	(Re-)Created by: VenomXNL
	License: Use it as you please but do have decency and respect by crediting the original creators :)
	
	What is it?: A very extensive Train and (well mostely) Metro Addon for FiveM
	
	Basic Functionality list:
	  - Spawns a 'synced' (and working/driving) Freight train on the railroad tracks of Los Santos
	  - Spawns (1 or 2) Metro carts which can be entered as passenger by the players ("no passenger limit!")
	  - Players can WALK AROUND in the moving Metro! :)
	  - Players HAVE to buy a Metro Ticket to be able to enter (With (ATM) animated Ticket machine handling)
	  - Ticket will 'invalidate' when they have entered so they will have to buy a new one
	  - Wanted level handling (refuse passengers from entering when wanted)
	  - 'terrorist detection', which means if players shoot while on the train they will get a 4 star wanted level
	  - Easily configurable with basic variables
	  - Different Bank Messages (for Maze Bank, Bank of Liberty or Fleeca bank)
	  - Metro's, Freight Train and their drivers are 'invincible' (to prevent others 'ruining' the game/RP)
	  - Players can only EXIT the Metro at the stations (by Pressing [E] by default)
	  - Players COULD enter the Metro ANYWHERE (if they have a Ticket Of course), by making it stop (stand in front of it)
	  
	Known 'bugs' or 'issues':
	  - The Metro's DO NOT stop at the stations this is due to a limitation in the 'official game script'!
	    I CAN change this and HAD changed this, but this will increase the chance of de-syncing A LOT so I've removed it!
	  - When you enter the Metro as passenger the doors 'will dissapear', why? I don't know, but you can NOT walk through it!
		NOTE: They CAN still be used as cover though (the bottom part), which means the 'collision info' will remain active though.
	  - The ticket machines above ground (the green/old ones) DO NOT WORK, I tried for several hours to find them in the archives but
		with no luck. I however did find one that looks like it, but that one doesn't respond at all.
		I MIGHT update that when someone can tell me the model of that ticket machine object, however for now I have left it at that.
		Also because the original game-texture says: "Sorry, this machine will NEVER work", so i thought: lets keep it in lore :P (nice excuse huh? haha)
	  - When a player puts a vehicle (which doesn't automatically despawns) infront of the Metro, the Metro will wait there till the
		vehicle is removed for eternity.
	  
	Questions I've already got from our server member/crew while we where testing this script:
	  - Q: Can you make it so you can drive the Freight or Metro?
	  - A: Yes, I can.
	  
	  - Q: WILL you make it so we can drive either of them?
	  - A: Already done it, Let's test it :P
	  
	  - Q: (Player on the other side while i'm driving the train:) Woaha, why the f*ck is my train tripping so hard?
	  - A: Well mine isn't, Maybe it's because i'm driving backwards but YOUR game (engine) isn't expecting it.
	  
	  - Q: So you have now (permanently) removed the feature to drive the trains?
	  - A: Yes, I have. And I have even DELETED THE CODE, so I will NOT remake it, since it's not stable enough.
	  
	  Well that's about the 'main question' I expect to show up (since nearly everyone whom tested it did so to)
	  So my basic awnser is: NOPE I will note make it like that sorry.
	  Maybe there are others whom have managed to do it, and did made a syncing system (server sided or so), I haven't
	  and I won't, Sorry. Most of my scripts and server are client-sided with minimal network traffic (via scripting),
	  only statistics, financials and owned matterials (like houses, cars or items) are server sided to prevent cheating.
	  And since we won't need the train or metro driver missions I can't 'afford' to put to much time in developing something
	  stable and thoroughly tested while I'm not going to use it anyway ;)
	  
	Other Possible Questions:
	  - Q: Can I use this on my server?
	  - A: Sure you can that's why I've uploaded it :)
	  
	  - Q: Can you please help me add or make my money/banking system?
	  - A: No, sorry. I'm VERY busy with me job and other projects, I decided to share my code's_m_m_lsmetro_01
		   to public for others to use, possibly adapt and for others to learn from them (hence the massive commenting!).
		   I have learned it the same way years ago: Looking at other people's codes and trying what would change things or
		   make it do what I wanted it to do.
	   
	  - Q: So you're basically saying I "just need to learn" to script/program?
	  - A: YES, if you would like to run servers and games like this, and thus use mods, it's DEFINITLY a MUST if you can,
		   it might look hard in the beginning, but trust me: You will be thankful if you learn it yourself :)
		   
	  - Q: But you also stated that I can adapt your code right?
	  - A: Sure, adapt, improve, or even 'strip(remove) stuff from it' to make it suit your needs
		   NOTE: Please do not just 'destroy the code' by randomly doing stuff and then posting stuff like:
		   'I "changed" this, and now your  code doesn't work anymore'. If that happens I suggest you keep trying
		   till it DOES what you need, investigate about the Native codes, look on other sites for resources and
		   information, you can ofcourse ask questions, no problem. Just keep in mind that I'm not going to (not even
		   able to due to my schedule IF I wanted to)) script all kinds of things for everyone randomly ;) :)
	  
	  - Q: One more question though: If I can adapt your code, am I also allowed to re-upload it?
	  - A: Yes you are! :) BUT please do give credits to me and the original creator on whom's idea this
		   scripted was based and inspired on. (AKA: It's NOT allowed to reupload/publish without credits where due)
	  
	General adivce (applies to ALL uploading coders):
	If this script/addon doesn't do what you wanted it to do, if you think it's "sh*tty" etc, that's all fine, but
	just keep that to yourself and find another one that suits your needs (or even better: Make it yourself) ;)
	Keep in mind that people upload code to help/provide others in resources and learning matterial, and that doing so
	costs (extra) time. Time they took to provide you (and many others) with resources, code, samples and addons.
	Contribute, help, share and evolve together, that's the power of a community :)
	(Ofcourse doesn't mean that constructive critisim isn't welcome or desired (since we all will always have points of
	improvement :) )
	  
	=================================== Money Handling Information ===================================
	 If the rest if TL;DR, fine, your problem ;) :P (Don't nag either if you can't figure it out haha)
	 But ATLEAST do read this piece for setup! and IF you have questions, or if want to Adapt or
	 re-publish/upload it: Don't be stubborn, respect other peoples work, and DO read the above ;)
	===================================================================================================
	IMPORTANT NOTE: Bellow 'somewhere' in the code you will find these two lines:
	BankAmount = 10000    --StatGetInt("BANK_BALANCE",-1)
	PlayerCashAm = 10000  --StatGetInt("MP0_WALLET_BALANCE",-1)
	
	Make sure that you adapt them to YOUR OWN SERVER, since like stated there (in the script to),
	many servers use a different money management system, and thus it's not quite possible to make
	one that is 'general in use' for all. We use one that doesn't uses the game stats at all (since thats
	to easy to influence with cheat programs for example). To make sure that people could test/try this
	script i have set the INTERNAL SCRIPT money values to very high (those DO NOT affect the player itself though!)

	This also means that there is no money being taken from the player when he/she buy's a ticket
	
	To make sure that money is taken from the player when buying a ticked you will need to find the following code part:
		if PayWithBank == 1 then
			-- Put YOUR code to deduct the amount from the players BANK account here
			-- 'Basic Example':  PlayerBankMoney = PlayerBankMoney - TicketPrice
		else
			-- Put YOUR code to deduct the amount from the players CASH money account here
			-- 'Basic Example':  PlayerCash = PlayerCash - TicketPrice
		end
	
	And add your OWN SERVER money handling/taking code here
	
	I hope this code/addon is usefull for some people or that they might learn from it by using parts of it :)
	
	Greets,
	VenomXNL
=====================================================================================================================================	
]]



--=============================================================
-- Settings you CAN change and are meant to be changed, YAY :P
-- I do NOT use these on my server but have implemented it for
-- other users to make it more easy to adapt to their roleplay
-- server for example.
--=============================================================
PayWithBank 			= 0		-- Change this to 1 if you want users to pay with bank card (NOTE: Do implement your OWN banking system here please!)
UserBankIDi 			= 3		-- 1 = Maze, 2 = Bank Of Liberty, 3 = Fleeca  (This will show the corresponding message when the player doesn't have enoug money)
AllowEnterTrainWanted	= 0		-- Change to 1 if you want to allow players to ENTER the train when they have a wanted level
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
--===================================================
-- Variables used BY the script, do NOT modify them
-- unless you know what you are doing!
-- Modifying these might/will result in undesired
-- behaviour and/or script breaking!
--===================================================
IsPlayerNearMetro = false
IsPlayerInMetro = false
PlayerHasMetroTicket = false
IsPlayerUsingTicketMachine = false
ShowingExitMetroMessage = false

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

--===================================================
-- These are radius locations (multiple per station)
-- to detect if the player can exit the Metro
--===================================================
local XNLMetroScanPoints = {
	{XNLStationid=0, x=230.82389831543, y=-1204.0643310547, z=38.902523040771},
	{XNLStationid=0, x=249.59216308594, y=-1204.7095947266, z=38.92488861084},
	{XNLStationid=0, x=270.33166503906, y=-1204.5366210938, z=38.902912139893},
	{XNLStationid=0, x=285.96697998047, y=-1204.2261962891, z=38.929733276367},
	{XNLStationid=0, x=304.13528442383, y=-1204.3720703125, z=38.892612457275},
	{XNLStationid=1, x=-294.53421020508, y=-353.38571166992, z=10.063089370728},
	{XNLStationid=1, x=-294.96997070313, y=-335.69766235352, z=10.06309223175},
	{XNLStationid=1, x=-294.66772460938, y=-318.29565429688, z=10.063152313232},
	{XNLStationid=1, x=-294.73403930664, y=-303.77200317383, z=10.063160896301},
	{XNLStationid=1, x=-294.84133911133, y=-296.04568481445, z=10.063159942627},
	{XNLStationid=2, x=-795.28063964844, y=-126.3436050415, z=19.950298309326},
	{XNLStationid=2, x=-811.87170410156, y=-136.16409301758, z=19.950319290161},
	{XNLStationid=2, x=-819.25689697266, y=-140.25764465332, z=19.95037651062},
	{XNLStationid=2, x=-826.06652832031, y=-143.90898132324, z=19.95037651062},
	{XNLStationid=2, x=-839.2587890625, y=-151.32421875, z=19.950378417969},
	{XNLStationid=2, x=-844.77874755859, y=-154.31440734863, z=19.950380325317},
	{XNLStationid=3, x=-1366.642578125, y=-440.04803466797, z=15.045327186584},
	{XNLStationid=3, x=-1361.4998779297, y=-446.50497436523, z=15.045324325562},
	{XNLStationid=3, x=-1357.4061279297, y=-453.40963745117, z=15.045320510864},
	{XNLStationid=3, x=-1353.4593505859, y=-461.88238525391, z=15.045323371887},
	{XNLStationid=3, x=-1346.1264648438, y=-474.15142822266, z=15.045383453369},
	{XNLStationid=3, x=-1338.1717529297, y=-488.97756958008, z=15.045383453369},
	{XNLStationid=3, x=-1335.0261230469, y=-493.50796508789, z=15.045380592346},
	{XNLStationid=4, x=-530.67529296875, y=-673.33935546875, z=11.808959960938},
	{XNLStationid=4, x=-517.35559082031, y=-672.76635742188, z=11.808965682983},
	{XNLStationid=4, x=-499.44836425781, y=-673.37664794922, z=11.808973312378},
	{XNLStationid=4, x=-483.1321105957, y=-672.68438720703, z=11.809024810791},
	{XNLStationid=4, x=-468.05545043945, y=-672.74371337891, z=11.80902671814},
	{XNLStationid=5, x=-206.90379333496, y=-1014.9454345703, z=30.138082504272},
	{XNLStationid=5, x=-212.65534973145, y=-1031.6101074219, z=30.208702087402},
	{XNLStationid=5, x=-212.65534973145, y=-1031.6101074219, z=30.208702087402},
	{XNLStationid=5, x=-217.0216217041, y=-1042.4768066406, z=30.573789596558},
	{XNLStationid=5, x=-221.29409790039, y=-1054.5914306641, z=30.13950920105},
	{XNLStationid=6, x=101.89681243896, y=-1714.7589111328, z=30.112174987793},
	{XNLStationid=6, x=113.05246734619, y=-1724.7247314453, z=30.111650466919},
	{XNLStationid=6, x=122.72943878174, y=-1731.7276611328, z=30.54141998291},
	{XNLStationid=6, x=132.55198669434, y=-1739.7276611328, z=30.109527587891},
	{XNLStationid=7, x=-532.24133300781, y=-1263.6896972656, z=26.901586532593},
	{XNLStationid=7, x=-539.62115478516, y=-1280.5207519531, z=26.908163070679},
	{XNLStationid=7, x=-545.18548583984, y=-1290.9525146484, z=26.901586532593},
	{XNLStationid=7, x=-549.92230224609, y=-1302.8682861328, z=26.901605606079},
	{XNLStationid=8, x=-872.75714111328, y=-2289.3198242188, z=-11.732793807983},
	{XNLStationid=8, x=-875.53247070313, y=-2297.67578125, z=-11.732793807983},
	{XNLStationid=8, x=-880.05035400391, y=-2309.1235351563, z=-11.732788085938},
	{XNLStationid=8, x=-883.25482177734, y=-2321.3303222656, z=-11.732738494873},
	{XNLStationid=8, x=-890.087890625, y=-2336.2553710938, z=-11.732738494873},
	{XNLStationid=8, x=-894.92395019531, y=-2350.4128417969, z=-11.732727050781},
	{XNLStationid=9, x=-1062.7882080078, y=-2690.7492675781, z=-7.4116077423096},
	{XNLStationid=9, x=-1071.6839599609, y=-2701.8503417969, z=-7.410071849823},
	{XNLStationid=9, x=-1079.0869140625, y=-2710.7033691406, z=-7.4100732803345},
	{XNLStationid=9, x=-1086.8758544922, y=-2720.0673828125, z=-7.4101362228394},
	{XNLStationid=9, x=-1095.3796386719, y=-2729.8442382813, z=-7.4101347923279},
	{XNLStationid=9, x=-1103.7401123047, y=-2740.369140625, z=-7.4101300239563}
}

-- These are the 'exit points' to where the player is teleported with the short fade-out / fade-in
-- NOTE: XNLStationid is NOT used in this table, it's just here for user refrence!
 local XNLMetroEXITPoints = {
	{XNLStationid=0, x=294.46011352539, y=-1203.5991210938, z=38.902496337891, h=90.168075561523},
	{XNLStationid=1, x=-294.76913452148, y=-303.44619750977, z=10.063159942627, h=185.19216918945},
	{XNLStationid=2, x=-839.20843505859, y=-151.43312072754, z=19.950380325317, h=298.70877075195},
	{XNLStationid=3, x=-1337.9787597656, y=-488.36145019531, z=15.045375823975, h=28.487064361572},
	{XNLStationid=4, x=-474.07037353516, y=-673.10729980469, z=11.809032440186, h=81.799621582031},
	{XNLStationid=5, x=-222.13038635254, y=-1054.5043945313, z=30.139930725098, h=155.81954956055},
	{XNLStationid=6, x=133.13328552246, y=-1739.5617675781, z=30.109495162964, h=231.40335083008},
	{XNLStationid=7, x=-550.79998779297, y=-1302.4467773438, z=26.901605606079, h=155.53070068359},
	{XNLStationid=8, x=-891.87664794922, y=-2342.6486816406, z=-11.732737541199, h=353.59387207031},
	{XNLStationid=9, x=-1099.6376953125, y=-2734.8957519531, z=-7.410129070282, h=314.91424560547}
}


local TicketMachines = {'prop_train_ticket_02', 'v_serv_tu_statio3_'}
local anim = "mini@atmenter"

Citizen.CreateThread(function()
	function LoadTrainModels() -- f*ck your rails, too!
		tempmodel = GetHashKey("freight")
		RequestModel(tempmodel)
		while not HasModelLoaded(tempmodel) do
			RequestModel(tempmodel)
			Citizen.Wait(0)
		end
		
		tempmodel = GetHashKey("freightcar")
		RequestModel(tempmodel)
		while not HasModelLoaded(tempmodel) do
			RequestModel(tempmodel)
			Citizen.Wait(0)
		end
		
		tempmodel = GetHashKey("freightgrain")
		RequestModel(tempmodel)
		while not HasModelLoaded(tempmodel) do
			RequestModel(tempmodel)
			Citizen.Wait(0)
		end
		
		tempmodel = GetHashKey("freightcont1")
		RequestModel(tempmodel)
		while not HasModelLoaded(tempmodel) do
			RequestModel(tempmodel)
			Citizen.Wait(0)
		end
		
		tempmodel = GetHashKey("freightcont2")
		RequestModel(tempmodel)
		while not HasModelLoaded(tempmodel) do
			RequestModel(tempmodel)
			Citizen.Wait(0)
		end
		
		tempmodel = GetHashKey("freighttrailer")
		RequestModel(tempmodel)
		while not HasModelLoaded(tempmodel) do
			RequestModel(tempmodel)
			Citizen.Wait(0)
		end

		tempmodel = GetHashKey("tankercar")
		RequestModel(tempmodel)
		while not HasModelLoaded(tempmodel) do
			RequestModel(tempmodel)
			Citizen.Wait(0)
		end
		
		tempmodel = GetHashKey("metrotrain")
		RequestModel(tempmodel)
		while not HasModelLoaded(tempmodel) do
			RequestModel(tempmodel)
			Citizen.Wait(0)
		end
		
		tempmodel = GetHashKey("s_m_m_lsmetro_01")
		RequestModel(tempmodel)
		while not HasModelLoaded(tempmodel) do
			RequestModel(tempmodel)
			Citizen.Wait(0)
		end
		print("XNL Log: Train Models Loaded" )
	end

	LoadTrainModels()

	RegisterNetEvent("StartTrain")
	function StartTrain()
		--Citizen.Trace("a train has arrived") -- whee i must be host, lucky me
		randomSpawn = math.random(#TrainLocations)
		x,y,z = TrainLocations[randomSpawn][1], TrainLocations[randomSpawn][2], TrainLocations[randomSpawn][3] -- get some random locations for our spawn
	
	
		-- For those whom are interested: The yesorno variable determines the direction of the train ;)
		yesorno = math.random(0,100)
		if yesorno >= 50 then -- untested, but seems to work /shrug
			yesorno = true
		elseif yesorno < 50 then
			yesorno = false
		end
		
		--====================================================================================
		-- Note: This (DeleteAllTrains()) might work when you join a session or so which
		-- has 'roque trains' (aka with no host or where the host just left while you joined)
		-- but I (VenomXNL) have noticed that it has no effect at all when the script is
		-- restarted and clients stay in the session, however it will not spawn any new ones
		-- either since it doesn't detect a player connecting.
		-- I suspect that it doesn't remove/delete the trains since the game would still see
		-- them as Mission Trains which would require the native deleteMissionTrain.
		-- Although it is impossible to call this native since after a restart of this script
		-- we no longer have a refrence to call them.
		-- I will leave the call here as intended by the original developer, but I SUSPECT
		-- that it would not have much use (but can't confirm it with 100% certainty though)
		--====================================================================================
		DeleteAllTrains()
		Wait(100)
		Train = CreateMissionTrain(math.random(0,22), x,y,z,yesorno)
		print("XNL Log: Train 1 created (Freight)." )
		while not DoesEntityExist(Train) do
			Wait(800)
			print("XNL Log: Waiting for Freight to be created" )
		end
		Wait(200) -- Added a small 'waiting' while the train is loaded (to prevent the)
				  -- random unexplained spawning of the freight train on the Metro Rails
		
		MetroTrain = CreateMissionTrain(24,40.2,-1201.3,31.0,true) -- these ones have pre-defined spawns since they are a pain to set up
		print("XNL Log: Train 2 created (Metro)." )
		while not DoesEntityExist(MetroTrain) do
			Wait(800)
			print("XNL Log: Waiting for Metro Train 1 to be created" ) -- Also wait until the train entity has actually been created
		end
		Wait(200) -- Added a small 'waiting' while the train is loaded (to prevent the)
				  -- random unexplained spawning of the freight train on the Metro Rails
		
		if UseTwoMetros == 1 then
			MetroTrain2 = CreateMissionTrain(24,-618.0,-1476.8,16.2,true)
			print("XNL Log: Train 3 created (Metro #2)." )
			while not DoesEntityExist(MetroTrain2) do
				Wait(800)
				print("XNL Log: Waiting for Metro Train 2 to be created" )  -- Also wait until the train entity has actually been created
			end
		end
		Wait(200) -- Added a small 'waiting' while the train is loaded (to prevent the)
				  -- random unexplained spawning of the freight train on the Metro Rails

		TrainDriverHash = GetHashKey("s_m_m_lsmetro_01")

		-- By making a refrence to the drivers we can call them further on to make them invincible for example.
		Driver1 = CreatePedInsideVehicle(Train, 26, TrainDriverHash, -1, 1, true)
		Driver2 = CreatePedInsideVehicle(MetroTrain, 26, TrainDriverHash, -1, 1, true)

		if UseTwoMetros == 1 then
			Driver3 = CreatePedInsideVehicle(MetroTrain2, 26, TrainDriverHash, -1, 1, true) -- create peds for the trains
		end
		
		--=========================================================
		-- XNL 'Addition': This SHOULD prevent the train driver(s)
		-- from getting shot or fleeing out of the train/tram when
		-- being targeted by the player.
		-- We have had several instances where the tram driver just
		-- teleported out of the tram to attack the player when it
		-- it was targeted (even without holding a weapon).
		-- I suspect that this behaviour is default in the game
		-- unless you override it.
		--=========================================================
		SetBlockingOfNonTemporaryEvents(driver1, true)
		SetPedFleeAttributes(driver1, 0, 0)
		SetEntityInvincible(driver1, true)
		SetEntityAsMissionEntity(Driver1, true)


		SetBlockingOfNonTemporaryEvents(Driver3, true)
		SetPedFleeAttributes(Driver3, 0, 0)
		SetEntityInvincible(Driver3, true)
		SetEntityAsMissionEntity(Driver3, true)
	
		SetEntityAsMissionEntity(Train,true,true) -- dunno if this does anything, just throwing it in for good measure
		SetEntityAsMissionEntity(MetroTrain,true,true)

		SetEntityInvincible(Train, true)
		SetEntityInvincible(MetroTrain, true)

		if UseTwoMetros == 1 then
			SetBlockingOfNonTemporaryEvents(Driver2, true)
			SetPedFleeAttributes(Driver2, 0, 0)
			SetEntityInvincible(Driver2, true)
			SetEntityAsMissionEntity(Driver2, true)
			SetEntityAsMissionEntity(MetroTrain2,true,true)
			SetEntityInvincible(MetroTrain2, true)
		end
		
		-- Cleanup from memory
		SetModelAsNoLongerNeeded(TrainDriverHash)

		print("XNL Log: Train System Started, you are currently 'host' for the trains." )
	end

	AddEventHandler("StartTrain", StartTrain)
end)

--=============================================================
-- Forces to call the Start Train funciton and thus making you
-- the host and instantly spawning NEW trains.
-- WARNING: This function is ONLY meant for testing purposes
-- when making extra script modifications for example.
-- It will NOT clean up exisiting trains and thus resulting in
-- a lot of 'cr*p' on your server. When you have used this
-- function manually and want to resume a 'normal run' of the
-- server you should close all clients to make sure that the
-- trains will dissapear.
--=============================================================
RegisterCommand("XNLforcetrains",function(source, args)
	StartTrain()
end)


Citizen.CreateThread(function()
	ShowedBuyTicketHelper = false
	ShowedLeaveMetroHelper = false
	while true do
		Wait(10)
		
		if IsPlayerNearTicketMachine then
			if not IsPlayerUsingTicketMachine  then
				if not ShowedBuyTicketHelper then
					DisplayHelpText("Press ~INPUT_CONTEXT~ to to buy a metro ticket ($" .. TicketPrice .. ")")
					ShowedBuyTicketHelper = true
				end
			else
				ClearAllHelpMessages()				
				DisableControlAction(0, 201, true)
				DisableControlAction(1, 201, true)				
			end

			if IsControlJustPressed(0, 51) and PlayerHasMetroTicket then	
				SMS_Message("CHAR_LS_TOURIST_BOARD", "Los Santos Transit", "Tourist Information", "You already have a valid Metro Ticket, please go to one of the stations and board the Metro", true)
				Wait(3500) -- To avoid people 'spamming themselves' with the message popup (3500ms is 'just enough' to take the fun out of it :P)
			end
			
			if IsControlJustPressed(0, 51) and not PlayerHasMetroTicket then	
				IsPlayerUsingTicketMachine = true
				RequestAnimDict("mini@atmbase")		
				RequestAnimDict(anim)
				while not HasAnimDictLoaded(anim) do
					Wait(1)
				end

				SetCurrentPedWeapon(playerPed, GetHashKey("weapon_unarmed"), true)
				TaskLookAtEntity(playerPed, currentTicketMachine, 2000, 2048, 2)
				Wait(500)
				TaskGoStraightToCoord(playerPed, TicketMX, TicketMY, TicketMZ, 0.1, 4000, GetEntityHeading(currentTicketMachine), 0.5)				
				Wait(2000)
				TaskPlayAnim(playerPed, anim, "enter", 8.0, 1.0, -1, 0, 0.0, 0, 0, 0)
				RemoveAnimDict(animDict)
				Wait(4000)
				TaskPlayAnim(playerPed, "mini@atmbase", "base", 8.0, 1.0, -1, 0, 0.0, 0, 0, 0)
				RemoveAnimDict("mini@atmbase")				
				Wait(500)
				PlaySoundFrontend(-1, "ATM_WINDOW", "HUD_FRONTEND_DEFAULT_SOUNDSET", true)
				
				RequestAnimDict("mini@atmexit")
				while not HasAnimDictLoaded("mini@atmexit") do
					Wait(1)
				end
				TaskPlayAnim(playerPed, "mini@atmexit", "exit", 8.0, 1.0, -1, 0, 0.0, 0, 0, 0)
				RemoveAnimDict("mini@atmexit")
				Wait(500)
				
				--=====================================================================================
				-- Put here the actual 'reader'/function that your server uses
				-- to calculate/get the players bank account saldo and cash money!
				-- Now they are just set 'hardcoded' to an high amount to make the
				-- script work for people whom don't read a single line of code
				-- and then instantly post "Hey, i can't even buy a ticket, the script is broken" :P
				-- 
				-- Nope it's NOT broken, it just needs a BIT of adapting to your server and it's
				-- money handling. Since we use a custom banking system we have much different calls 
				-- than others might have so i've decided to put it in here like this so that it
				-- functions for everyone when they want to test/try the script :)
				--=====================================================================================
				BankAmount = 10000    --StatGetInt("BANK_BALANCE",-1)
				PlayerCashAm = 10000  --StatGetInt("MP0_WALLET_BALANCE",-1)
				
				if PayWithBank == 1 then
					XNLUserMoney = BankAmount
				else
					XNLUserMoney = PlayerCashAm
				end

				--===================================================================
				-- Please note, that despite if you make your players pay with
				-- cash or by bank, it will always show the selected bank popup
				-- if the player doesn't have enough cash (this is NOT a bug!)
				-- if you want/need it differently you can adapt the code bellow ;)
				--==================================================================
				if XNLUserMoney < TicketPrice then
					if UserBankIDi == 1 then		  		-- Maze Bank
						BankIcon = "CHAR_BANK_MAZE"		
						BankName = "Maze Bank"
					end
					if UserBankIDi == 2 then				-- Bank Of Liberty
						BankIcon = "CHAR_BANK_BOL"
						BankName = "Bank Of Liberty"
					end
					
					if UserBankIDi == 3 then		  		-- Fleeca (Default Fallback to!)
						BankIcon = "CHAR_BANK_FLEECA"
						BankName = "Fleeca Bank"
					end
					SMS_Message(BankIcon, BankName, "Account Information", "Transaction failed, you do not have sufficient funds.", true)
				else
					if PayWithBank == 1 then
						-- Put YOUR code to deduct the amount from the players BANK account here
						-- 'Basic Example':  PlayerBankMoney = PlayerBankMoney - TicketPrice
					else
						-- Put YOUR code to deduct the amount from the players CASH money account here
						-- 'Basic Example':  PlayerCash = PlayerCash - TicketPrice
					end
				
					SMS_Message("CHAR_LS_TOURIST_BOARD", "Los Santos Transit", "Tourist Information", "Thank you for your purchase, your ticket will be valid for the current session.", true)
					PlayerHasMetroTicket = true
				end
				
				IsPlayerUsingTicketMachine = false
			end
		else
			ShowedBuyTicketHelper = false
		end
		


		-- E/Action key (There will only be checked for trains when the player presses the action key)
		-- This Section is used to ENTER the Metro
		if IsControlJustPressed(0, 51) then	
			playerPed = PlayerPedId()
			x,y,z = table.unpack(GetEntityCoords(playerPed, true))
			IsPlayerInVehicle = IsPedInAnyVehicle(playerPed, true)
			SkipReEnterCheck = false
			
			if IsPlayerInMetro then
				if XNLCanPlayerExitTrain() then
					if not XNLTeleportPlayerToNearestMetroExit() then
						SMS_Message("CHAR_LS_TOURIST_BOARD", "Los Santos Transit", "Tourist Information", "Sorry, it seems that you pressed a little bit to late, you'll have to wait for the next station.", true)
					end
					SkipReEnterCheck = true -- This variable is used to prevent the character from directly trying to re-enter the Metro after leaving it.
				else
					XNLGenMess = "Sir"
					if XNLIsPedFemale(playerPed) then
						XNLGenMess = "Miss"
					end
					SMS_Message("CHAR_LS_TOURIST_BOARD", "Los Santos Transit", "Tourist Information", "Sorry " .. XNLGenMess .. ", but it's not allowed to randomly exit the Metro. Please wait for the next station!", true)
				end
			end
			
			--===============================================
			-- Make sure the player is NOT in a vehicle and 
			-- NOT already on the Metro
			--===============================================
			if not IsPlayerNearMetro and not IsPlayerInMetro and not SkipReEnterCheck then
				if not IsPlayerInVehicle then
					local coordA = GetEntityCoords(GetPlayerPed(-1), 1)
					local coordB = GetOffsetFromEntityInWorldCoords(GetPlayerPed(-1), 0.0, 3.0, 0.0)
					local Metro = getVehicleInDirection(coordA, coordB)
					if DoesEntityExist(Metro) then
						if GetEntityModel(Metro) == GetHashKey("metrotrain") then
							if not PlayerHasMetroTicket	then
									--==========================================================================
									-- Notify the player he/she needs to buy a ticket before entering the metro
									--==========================================================================
									SMS_Message("CHAR_LS_TOURIST_BOARD", "Los Santos Transit", "Tourist Information", "Sorry, You will need to buy a LST Metro Ticket first.", true)
							else
								if IsPlayerWantedLevelGreater(PlayerId(), 0) and AllowEnterTrainWanted == 0 then
									--==========================================================================
									-- If the player's wanted level is greater than 0, he/she will be
									-- denied to ENTER the Metro.
									-- If he/she GETS WHILE wanted on the train, we will handle that furher on
									--==========================================================================
									SMS_Message("CHAR_LS_TOURIST_BOARD", "Los Santos Transit", "Tourist Information", "Sorry we do not allow futugives in our Metro's. All passengers should be able to travel safely!", true)
								else
									CurrentMetro = Metro
									MetroX, MetroY, MetroZ = table.unpack(GetOffsetFromEntityInWorldCoords(CurrentMetro, 0.0, 0.0, 0.0))
									IsPlayerNearMetro = true
									
									-- Extra Info: Use the commentented line bellow to put passengers on 
									-- a seat in the train. DO NOTE! that you will need to make a (simple)
									-- check to detect if the seat is not taken by a ped or another player!
									-- for the function bellow you can use inded 1 or 2 (the last parm)
									--SetPedIntoVehicle(GetPlayerPed(-1), Metro, 1) 
									SetEntityCoordsNoOffset(PlayerPedId(), MetroX, MetroY, MetroZ + 2.0)
									IsPlayerInMetro = true
									PlayerHasMetroTicket = false
									SMS_Message("CHAR_LS_TOURIST_BOARD", "Los Santos Transit", "Tourist Information", "You've entered the Metro, your ticket has been invalidated.", true)
								end
							end
						else
							IsPlayerNearMetro = false
						end
					else
						IsPlayerNearMetro = false
					end
				else
					if not DoesEntityExist(CurrentMetro) then
						IsPlayerNearMetro = false
					else
						if GetDistanceBetweenCoords(x,y,z, MetroX, MetroY, MetroZ, true) > 3.5 then
							IsPlayerNearMetro = false
						end
					end
				end
			end
		end


		--=============================================================
		-- Check if the player is in the Metro AND pressed the [E] key
		--=============================================================
		if IsPlayerInMetro then
			if ReportTerroristOnMetro == true then
				if GetPlayerWantedLevel(PlayerId()) < 4 then
					if IsPedShooting(GetPlayerPed(-1)) then
						SetPlayerWantedLevel(PlayerId(), 4, 0)
						SetPlayerWantedLevelNow(PlayerId(), 0)
						SMS_Message("CHAR_LS_TOURIST_BOARD", "Los Santos Transit", "Tourist Information", "We will NOT tolerate terrorist behaviour on our public transport vehicles!", true)
					end
				end
			end
			
			if not DoesEntityExist(CurrentMetro) then
				-- Not ANY clue on when this might happen haha, but it's a funny message and error handler in one :Phone_SoundSet_Default
				-- we have seen it happen once or so in MANY test rounds of the metro system that the metro just vanished, so this is to
				-- 'encounter' that POSSIBLE issue (which I presume has to do with de-syncing or so)
				IsPlayerNearMetro = false
				IsPlayerInMetro = false
				PlayerHasMetroTicket = true
				SMS_Message("CHAR_LS_TOURIST_BOARD", "Los Santos Transit", "Tourist Information", "Our Appologies, something has gone terribly wrong, you have received a free ticket!", true)
			else
				if IsPlayerInMetro then
					-- This will ensure that it will only show the 'how to leave metro' text while near/at a station
					if ShowingExitMetroMessage == true and not ShowedLeaveMetroHelper then
						DisplayHelpText("Press ~INPUT_CONTEXT~ to leave the metro")
						ShowedLeaveMetroHelper = true
					end
					
					-- This part detects if the player is further away than 15.0 units from the Metro he/she used
					MetroX, MetroY, MetroZ = table.unpack(GetOffsetFromEntityInWorldCoords(CurrentMetro, 0.0, 0.0, 0.0))
					x,y,z = table.unpack(GetEntityCoords(playerPed, true))
					if GetDistanceBetweenCoords(x,y,z, MetroX, MetroY, MetroZ, true) > 15.0 then
						IsPlayerNearMetro = false
						IsPlayerInMetro = false
						SMS_Message("CHAR_LS_TOURIST_BOARD", "Los Santos Transit", "Tourist Information", "Thank you for traveling with Los Santos Transit.", true)
					end
					
				end
			end
		end
		
	end
end)

Citizen.CreateThread(function()
	--=======================================================================================
	-- Note only do this 'check' every 550ms to prevent
	-- to much load in the game (taking in account many other scripts also running of course)
	--=======================================================================================
	ShowedEToEnterMetro = false
	while true do
		Wait(550)
		if IsPlayerInMetro then
			if XNLCanPlayerExitTrain() then
				ShowingExitMetroMessage = true
			else
				ShowingExitMetroMessage = false
				ShowedLeaveMetroHelper = false
			end
			ShowedEToEnterMetro = false
		end
		
		-- We only have to check this part if the player is NOT on the metro.
		if not IsPlayerInMetro then
			playerPed = PlayerPedId()
			IsPlayerInVehicle = IsPedInAnyVehicle(playerPed, true)
	
			-- And then ONLY check it if the player isn't in a vehicle either 
			-- Note: The way i'm using the metro, the game doesn't recognize it as being
			-- on/in a vehicle.
			if not IsPlayerInVehicle then
				
				-- Yes, yes I know, the function is called 'XNLCanPlayerEXITTrain', but it
				-- is also used to detect if the player is at one of the stations on foot :)
				if PlayerHasMetroTicket and XNLCanPlayerExitTrain() then
					if not ShowedEToEnterMetro then
						DisplayHelpText("Press ~INPUT_CONTEXT~ while facing (and near) the Metro to enter it.")
						ShowedEToEnterMetro = true
					end
				else
					ShowedEToEnterMetro = false
				end
			
				-- Only show the "Press [E] to buy...." message near the ticket machine if the player does NOT own a ticket already
				-- Do note that it IS possible to 'activate' the ticket machine again though (but will give a different message ;) )
				x,y,z = table.unpack(GetEntityCoords(playerPed, true))
				-- And then only need to keep checking (scanning cords) if the player is not near the Ticket Machine (anymore)
				if not IsPlayerNearTicketMachine then
					for k,v in pairs(TicketMachines) do
						TicketMachine = GetClosestObjectOfType(x, y, z, 0.75, GetHashKey(v), false)
						if DoesEntityExist(TicketMachine) then
							currentTicketMachine = TicketMachine
							TicketMX, TicketMY, TicketMZ = table.unpack(GetOffsetFromEntityInWorldCoords(TicketMachine, 0.0, -.85, 0.0))
							IsPlayerNearTicketMachine = true
						end
					end
				else
					if not DoesEntityExist(currentTicketMachine) then
						IsPlayerNearTicketMachine = false -- If for some (weird) reasons the ticked machine (suddenly)
					else								  --doesn't exist anymore, tell the script that the player isn't near one anymore
						if GetDistanceBetweenCoords(x,y,z, TicketMX, TicketMY, TicketMZ, true) > 2.0 then
							IsPlayerNearTicketMachine = false -- And do the same if the player is more than a radius of 2.0 away from the ticket machine
						end
					end
				end
			end
		end
	end
end)

-- This is the function which is used to display 'SMS Style messages'
-- If you need more/other icons to display, then make sure to check out:
-- https://wiki.gtanet.work/index.php?title=Notification_Pictures
-- YES YES, I KNOW! it's 'a competitor' :P but it's definitly a good
-- resource for fellow modders :)
function SMS_Message(NotiPic, SenderName, Subject, MessageText, PlaySound)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(MessageText)
    SetNotificationBackgroundColor(140)
    SetNotificationMessage(NotiPic, NotiPic, true, 4, SenderName, Subject, MessageText)
    DrawNotification(false, true)
	if PlaySound then
		PlaySoundFrontend(GetSoundId(), "Text_Arrive_Tone", "Phone_SoundSet_Default", true)
	end
end

-- This is the text 'helper' which is used at the top left for messages like 'Press [E] to buy ticket ($25)'
function DisplayHelpText(str)
	SetTextComponentFormat("STRING")
	AddTextComponentString(str)
	DisplayHelpTextFromStringLabel(0, 0, 1, -1)
	EndTextCommandDisplayHelp(0, 0, true, 2000)
end

-- Using a RayCast to detect if the player is trying to get into the train
-- This is needed since it's not possible (yet) to detect the train model with
-- the normal native calls
function getVehicleInDirection(coordFrom, coordTo)
	local rayHandle = CastRayPointToPoint(coordFrom.x, coordFrom.y, coordFrom.z, coordTo.x, coordTo.y, coordTo.z, 10, GetPlayerPed(-1), 0)
	local a, b, c, d, vehicle = GetRaycastResult(rayHandle)
	return vehicle
end


--==============================================
-- Simple yet effective function to check if
-- player is female or male (sine we only use
-- mp_f_freemode_01 and mp_m_freemode_01 on our
-- server) We need(ed) this function because for
-- some weird reason IsPedMale had some issues
-- with some scripts.
--==============================================
function XNLIsPedFemale(ped)
	if IsPedModel(ped, 'mp_f_freemode_01') then
		return true
	else
		return false
	end
end

function XNLCanPlayerExitTrain()
	playerPed = PlayerPedId()
	for _, item in pairs(XNLMetroScanPoints) do
		Px,Py,Pz = table.unpack(GetEntityCoords(playerPed, true))
		if GetDistanceBetweenCoords(Px,Py,Pz, item.x, item.y, item.z, true) < StationsExitScanRadius then
			return true -- The function DID detected the player within one of the radius markers at the stations
		end
	end
	return false -- The function did NOT detected the player within one of the radius markers at the stations
end

function XNLTeleportPlayerToNearestMetroExit()
	playerPed = PlayerPedId()
	for _, item in pairs(XNLMetroScanPoints) do
		Px,Py,Pz = table.unpack(GetEntityCoords(playerPed, true))
		if GetDistanceBetweenCoords(Px,Py,Pz, item.x, item.y, item.z, true) < StationsExitScanRadius then
			for _, item2 in pairs(XNLMetroEXITPoints) do
				if item.XNLStationid == item2.XNLStationid  then
					DoScreenFadeOut(800)
					while not IsScreenFadedOut() do
						Wait(10)
					end
					XNLNewX = item2.x -- The 'new' Player X position
					XNLNewY = item2.y -- The 'new' Player Y position
					XNLNewZ = item2.z -- The 'new' Player Z position
					XNLNewH = item2.h -- The 'new' Player Heading Direction
		
					SetEntityCoordsNoOffset(PlayerPedId(), XNLNewX, XNLNewY, XNLNewZ)
					SetEntityHeading(PlayerPedId(), XNLNewH)
		
					DoScreenFadeIn(800)
					while not IsScreenFadedIn() do
						Wait(10)
					end
					return true 
				end
			end
		end
	end
	return false -- The function did NOT detected the player within one of the radius markers at the stations
end
