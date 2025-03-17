extends BaseExam

func _ready() -> void:
	Questions = [
		[
			SINGLE,
			"An instructor is discussing facts about different mobile device operating software. The instructor states: “When the device roams out of the range of any Wi-Fi networks, it can connect to the cellular data network if this feature is enabled.” To which OS does this relate: iOS, Android, or both?",
			"iOS","Android","both",3
		],
		[
			SINGLE,
			"An administrator is re-imaging a large number of Mac OS X machines. What built-in tool or command can be used to remotely boot the computers?",
			"mstsc","Finder","Netboot","Time Machine",3
		],
		[
			SINGLE,
			"Which Linux file system introduced the journaled file system, which can be used to minimize the risk of file system corruption in the event of a sudden power loss?",
			"ext2","NFS","CDFS","ext3",4
		],
		[
			DOUBLE,
			"A file called new_resume has the following file permissions: rw-r-x--x . What two facts can be determined from these permissions? (Choose two.)",
			"Group members are able to modify the file.","The user has full access to the file.","The user is able to read and modify the file.","Members of the group have read and execute access to the file.","Other people have no access to the file.","Other people have read and execute access to the file.",3,4
		],
		[
			SINGLE,
			"What is the most commonly used method to close an application that appears to be frozen on an OS X-based computer?",
			"Use Force Quit.","Access the Status menu.","Use Task Manager.","Access the Notification Center.",1
		],
		[
			SINGLE,
			"What is the result of doing a factory reset on a mobile device?",
			"A complete backup of the device is done and all viruses and malware are removed.","The operating system will be updated with the most recent updates and patches.","All user data and settings will be deleted.","The operating system will be deleted and all user data is transferred to the Cloud.",3
		],
		[
			SINGLE,
			"Android apps run primarily based on privileges enabled by the user. Sometimes an Android app requires extra privileges to access system components. How do Android apps run to accomplish both situations?",
			"Android apps run through a proxy service.","Android apps run in a walled garden.","Android apps run in a guest mode","Android apps run in a sandbox.",4
		],
		[
			DOUBLE,
			"A Linux administrator wants to backup current files in a data directory and store them in a new directory on another disk. Which two commands would be needed? (Choose two.)",
			"cd","mkdir","mv","rm","cp",2,5
		],
		[
			SINGLE,
			"What represents apps in the Windows Phone interface?",
			"widgets","buttons","tiles","icons",3
		],
		[
			SINGLE,
			"A Linux PC user notices that the PC freezes on startup and exhibits kernel panic where there is a stop screen. What is a possible cause for the issue?",
			"A driver has become corrupted.","Deja Dup has been turned off in the system.","LILO has been deleted.","GRUB has been corrupted.",1
		],
		[
			SINGLE,
			"Which cloud-based storage service does Microsoft provide for backups?",
			"Dropbox","Google Sync","OneDrive","iCloud",3
		],
		[
			SINGLE,
			"What is a good source for safely downloading Android apps?",
			"the Apple App Store","freeware sites","iTunes","Google Play",4
		],
		[
			SINGLE,
			"What tool or command is used in the Mac OS X to navigate the file system?",
			"mstsc","Finder","Task Manager","File Explorer",2
		],
		[
			SINGLE,
			"Which statement describes the iOS app icons on a mobile device screen?",
			"Each icon is a shortcut of the app.","Each icon represents the actual app.","Each icon links to multiple instances of the actual app.","Each icon represents an instance of the actual app.",2
		],
		[
			SINGLE,
			"What is a purpose of the boot manager program?",
			"It checks the validity of hardware and software on the device after a factory reset.","It allows the user to select the OS to use to boot the device.","It allows the user to determine which apps are automatically opened during the boot process.","It automates the POST and checks the disk for bad sectors during a boot.","It manages antivirus signature files, encryption keys, and certificates when a device boots.",2
		],
		[
			SINGLE,
			"What is Wi-Fi calling?",
			"a convenient way to securely and digitally make payments with mobile devices","a government emergency alert service for smartphones","a method for sharing data between two mobile devices","a way to make mobile phone calls over a wireless data network","a method used to push apps to smartphones",4
		],
		[
			SINGLE,
			"What command is used to open a text editor in a Linux system?",
			"ifconfig","ls","grep","vim",4
		],
		[
			DOUBLE,
			"What are two purposes of the passcode lock feature on mobile devices? (Choose two.)",
			"to erase all personal data from the device","to remotely lock the device if it is stolen","to prevent unauthorized use of the device","to help prevent theft of private information","to restore and re-synchronize the device","to return the device to the default factory state",3,4
		],
		[
			DOUBLE,
			"Which two location data sources can locator apps use to determine the position of a mobile device? (Choose two.)",
			"cellular towers","the sandbox","remote lock","an app source","WiFi hotspots",1,5
		],
		[
			DOUBLE,
			"Refer to the exhibit. What two statements are true about the mobile operating system screen shown? (Choose two.)\n (Image of a screen with triangle, circle, and square icons at the bottom of the screen enclosed in a red rectangle)",
			"The area enclosed by the red rectangle contains navigation icons.","This is an iOS screen.","This is an Android screen.","The area that is highlighted displays background processes and indicators.","This is a Windows Phone screen.",1,3
		],
		[
			SINGLE,
			"Which model does Apple use to provide iOS apps to customers?",
			"walled garden","Xcode","iCloud","sandbox",1
		],
		[
			SINGLE,
			"What is the purpose of using the auto-brightness feature on a mobile device with an LCD screen?",
			"to conserve battery power","to prevent the burn-in effect on the screen","to display text messages with better contrast","to reduce the interference from sunlight",1
		],
		[
			SINGLE,
			"An instructor is discussing facts about different mobile device operating software. The instructor states: “This OS uses the system bar, displayed at the bottom of every screen, to navigate apps and screens.” To which OS does this relate: iOS, Android, or both?",
			"iOS","Android","both",2
		],
		[
			DOUBLE,
			"Which two methods are commonly used to remove the default restrictions and protections added to mobile operating systems? (Choose two.)",
			"rooting","rootkit execution","device update","jailbreaking","system backup",1,4
		],
		[
			SINGLE,
			"An instructor is discussing facts about different mobile device operating software. The instructor states: “GPS signals are used to enable geocaching, geotagging and device tracking on these mobile devices.” To which OS does this relate: iOS, Android, or both?",
			"iOS","Android","both",3
		],
		[
			SINGLE,
			"Which file system is the primary file system used by Apple in current Macintosh computers?",
			"ext2","ext3","APFS","CDFS","HFS+",3
		],
		[
			SINGLE,
			"An instructor is discussing facts about different mobile device operating software. The instructor states: “Remote backups are a cloud-enabled service for mobile devices.” To which OS does this relate: iOS, Android, or both?",
			"iOS","Android","both",3
		],
		[
			SINGLE,
			"What is the purpose of signature files used to secure mobile devices and operating systems?",
			"They contain a record of historical and pending firmware and software updates.","They contain a list of all user passwords.","They contain sample code from known viruses and malware that is used by security software to identify malicious software.","They contain a log of digital certificates and encryption keys associated with the user.",3
		],
		[
			SINGLE,
			"Which navigation icon on the system bar of an Android device is used to return to the previous screen?",
			"Back","Home","Menu","Recent Apps",1
		],
		[
			SINGLE,
			"Which statement describes the Touch ID in iOS devices?",
			"It is used as the passcode.","It is the encryption key set by the user.","It is the hash value of the user fingerprint.","It is used to set the touch screen sensitivity.",3
		],
		[
			SINGLE,
			"An instructor is discussing facts about different mobile device operating software. The instructor states: “To synchronize a mobile device to a PC, iTunes must be installed on the PC.” To which OS does this relate: iOS, Android, or both?",
			"iOS","Android","both",1
		],
		[
			SINGLE,
			"A mobile device user notices that the system update includes an update of the Primary Rate ISDN (PRI). What is the function of the PRI?",
			"It is the configuration of radio frequencies used on the device.","It is the configuration of the data rates between the device and the cell tower.","It is the data rate setting of the user account with the carrier service.","It is the configuration information that the device needs to communicate on networks other than the carrier network.",2
		],
		[
			SINGLE,
			"An instructor is discussing facts about different mobile device operating software. The instructor states: “The mobile devices have a feature called Spotlight that is a search tool that provides information from many sources.” To which OS does this relate: iOS, Android, or both?",
			"iOS","Android","both",1
		],
		[
			SINGLE,
			"An instructor is discussing facts about different mobile device operating software. The instructor states: “The icon on the Home screen is a shortcut to the app.” To which OS does this relate: iOS, Android, or both?",
			"Android","iOS","both",1
		],
		[
			DOUBLE,
			"What are two ways that iOS differs from Android? (Choose two.)",
			"iOS uses an All Apps button whereas Android uses a Home button.","iOS has a physical Home button, but Android uses navigation icons.","In iOS, the icon for an app represents the app itself. Deleting the icon in iOS deletes the app. In Android, the icon on the Home screen is a shortcut to the app.","In iOS, apps can only appear on screens, whereas in Android, apps can appear on screens and in folders.","In iOS, folders are created by dragging one app on top of another app, but in Android folders must be created from the home screen menu.",2,3
		],
		[
			SINGLE,
			"An instructor is discussing facts about different mobile device operating software. The instructor states: “WIFI hotspots are a location data source that can be used by locator apps to determine the position of a mobile device.” To which OS does this relate: iOS, Android, or both?",
			"iOS","Android","both",3
		],
		[
			SINGLE,
			"What is the name of the Windows Phone 8.1 digital, or virtual, assistant?",
			"Bing","Nova Launcher","Spotlight","Cortana",4
		],
		[
			SINGLE,
			"An instructor is discussing facts about different mobile device operating software. The instructor states: “The start voice control function can be performed with the home button.” To which OS does this relate: iOS, Android, or both?",
			"Android","iOS","both",2
		],
		[
			SINGLE,
			"An instructor is discussing facts about different mobile device operating software. The instructor states: “This OS can be used by programmers to operate devices like laptops, smart TVs, and e-book readers.” To which OS does this relate: iOS, Android, or both?",
			"iOS","both","Android",3
		]
	]
	super()
