	================================================================================
	IF there are questions, help needed or anything, please use the FiveM FORUM
	topic to discuss and help each other.
	================================================================================


	Based on/inspired by: 
	Blumlaut (FiveM Community) / Bluethefurry (Github)
	Original Post:	 https://forum.fivem.net/t/release-trains/28841
	Original Script: https://github.com/Bluethefurry/FiveM-Trains/releases
	Reworked by VenomXNL: https://forum.cfx.re/t/release-fivem-freight-train-ai-and-enterable-trams-as-passenger-suited-for-roleplay-to/
	Last Updated:	 02-01-2024

	License: Use it as you please but do have decency and respect by crediting the original creators :)
	
	What is it?: A very extensive Train and (well mostely) Metro Addon for FiveM
	
	===================================================================================================================================================================
	2024 Update:
	===================================================================================================================================================================
	This script has been updated ONCE now because suddenly lots of people started making requests for it again, this is however a ONE TIME UPDATE!
	I don't script/mod/develop for FiveM anymore, but did wanted to help the community out a bit with this update, because the guy who took over from me
	also has left FiveM (as it seems).
	
	I will however NOT provide future support on this script, because I REALLY don't have the time for these games (like FiveM etc) lately.
	It is intended to configure and adapt a bit for YOUR OWN server, so please read the comments and instruction to do so :)

	NOTE: The code might (is) still a bit messy, but that is because (like mentioned) I seriously lack the time to work on projects like this these days,
	      I have just scrapped and 're-written' large portions of my old version and modified it to a MUCH simpler approach, and had to do this with lots of 'forgotten
		  knowledge' after not having scripted for FiveM for many years. So please keep that in mind please :)
	===================================================================================================================================================================

	
	Basic Functionality list:
	  - Activates the 'normal game trains'
	  - Players can WALK AROUND in the moving Metro, just by walking in :)
	  - Players HAVE to buy a Metro Ticket to enter (With (ATM) animated Ticket machine handling), otherwise they will get a 1 star wanted level for illegal boarding.
	  - Ticket will 'invalidate' when they have left the metro (even if it's at the same station!) so they will have to buy a new one
	  - 'terrorist detection', which means if players shoot while on the train they will get a 4 star wanted level
	  - Easily configurable with basic variables
	  - Different Bank Messages (for Maze Bank, Bank of Liberty or Fleeca bank)
	  
	Known 'bugs' or 'issues':
	  - From the inside the doors of the Metro are invisible and you can walk straight through them (and thus also while the train is moving!)
		and they even seem to dissapear if you walk through them if they are closed, this seems to be a 'model issue' with the vehicle, 
		not sure though and don't have time to figure this out sorry!
	  - The ticket machines above ground (the green/old ones) DO NOT WORK, I tried for several hours to find them in the archives but
		with no luck. I however did find one that looks like it, but that one doesn't respond at all.
		I MIGHT update that when someone can tell me the model of that ticket machine object, however for now I have left it at that.
		Also because the original game-texture says: "Sorry, this machine will NEVER work", so i thought: lets keep it in lore :P (nice excuse huh? haha)
	  
	Possible Questions:
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
