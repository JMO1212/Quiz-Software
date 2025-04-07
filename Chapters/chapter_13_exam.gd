extends BaseExam

func _ready() -> void:
	Questions = [
		[
			DOUBLE,
			"A high technology company has an issue with unauthorized people gaining access into the company by following an authorized employee through the secure entrance. Which two measures could help with this security breach? (Choose two.)",
			"mantrap","multifactor authentication","biometrics","security guard that checks IDs","employee smart ID",1,4
		],
		[
			SINGLE,
			"A user calls the help desk reporting that a laptop is not performing as expected. Upon checking the laptop, a technician notices that some system files have been renamed and file permissions have changed. What could cause these problems?",
			"The display driver is corrupted.","The file system is corrupted.","The file system has been encrypted.","The laptop is infected by a virus.",4
		],
		[
			SINGLE,
			"A user receives a phone call from a person who claims to represent IT services and then asks that user for confirmation of username and password for auditing purposes. Which security threat does this phone call represent?",
			"anonymous keylogging","spam","social engineering","DDoS",3
		],
		[
			SINGLE,
			"Refer to the exhibit (still don't support images. not really needed for this one anyway). The security policy of an organization allows employees to connect to the office intranet from their homes. Which type of security policy is this?",
			"incident handling","acceptable use","remote access","network maintenance",3
		],
		[
			SINGLE,
			"A manager approaches a PC repair person with the issue that users are coming in to the company in the middle of the night to play games on their computers. What might the PC repair person do to help in this situation?",
			"Enable power on passwords in the BIOS.","Use Device Manager to limit access to the computer.","Use Event View to document the times logged in and out of the computer.","Limit the login times.",4
		],
		[
			SINGLE,
			"Refer to the exhibit. Which type of workstation password is being used? (just guess lol)",
			"synchronous","multifactor","login","network","BIOS",5
		],
		[
			SINGLE,
			"Which security technique or device wipes the data from a hard drive by being placed near the drive platter for at least 2 minutes?",
			"biometric scanner","erase scope","EFS","low-level format","degaussing wand",5
		],
		[
			SINGLE,
			"A SOHO company has hired a technician to come in and configure and secure the computers. The technician has decided to configure a local security policy for the machines. Which setting would the technician use to ensure that the user did not make their password the same as their own user account name?",
			"minimum password length","maximum password age","meet complexity requirements","enforce password history",3
		],
		[
			SINGLE,
			"Which type of firewall serves as a relay between users and servers on the Internet, inspects all traffic, and allows or denies traffic based on a set of rules?",
			"proxy firewall","stateful packet firewall","operating system firewall","packet filtering firewall",1
		],
		[
			DOUBLE,
			"Which two algorithms are used for hash encoding to guarantee the integrity of data? (Choose two.)",
			"SHA","SSL","VPN","chap checksum","MD5",1,5
		],
		[
			SINGLE,
			"A retail store wants to secure laptops that are on display. The store manager also wants a record of which employees enter the backroom where inventory is kept. Which security option would work best for this situation?",
			"cable locks and a token-based lock on the backroom","a condition that laptops are viewed one at a time and only the owner has a key to the backroom","security cameras and only the manager having access to the backroom","guards and log sheets",1
		],
		[
			SINGLE,
			"How can users working on a shared computer keep their personal browsing history hidden from other workers that may use this computer?",
			"Move any downloaded files to the recycle bin.","Reboot the computer after closing the web browser.","Use only an encrypted connection to access websites.","Operate the web browser in private browser mode.",4
		],
		[
			SINGLE,
			"The IT department is reporting that a company web server is receiving an abnormally high number of web page requests from different locations simultaneously. Which type of security attack is occurring?",
			"spyware","social engineering","adware","DDoS","phishing",4
		],
		[
			SINGLE,
			"What would cause a Microsoft Windows update to fail?",
			"The wired or wireless NIC was disabled.","A required prior update was not installed.","The computer has had its security breached.","The computer has a virus.",2
		],
		[
			SINGLE,
			"A customer uses Internet Explorer and Microsoft Edge as browsers on the computer. The customer asks the technician how to configure the computer to detect and filter phishing websites, to analyze websites for suspicious items, and to check downloads against a list of known malicious files and sites. Which web security feature should the technician demonstrate?",
			"SmartScreen Filter","Firewall","AutoPlay","ActiveX Filter",1
		],
		[
			SINGLE,
			"A technician is preparing to encrypt a corporate drive by using Microsoft BitLocker. Which BIOS option will the technician need to enable?",
			"SSL","NTFS","TPM","EFS",3
		],
		[
			SINGLE,
			"After confirming the removal of a virus from a computer, how should the technician ensure and verify the full functionality of the system?",
			"Document the problem and the procedures performed to solve it.","Check for the latest OS patches and updates.","Talk with the user to determine the cause of the problem.","Gather information from a number of sources to clearly identify the problem.",2
		],
		[
			DOUBLE,
			"Which two statements characterize wireless network security? (Choose two.)",
			"Using the default IP address on an access point makes hacking easier.","An attacker needs physical access to at least one network device to launch an attack.","Wireless networks offer the same security features as wired networks offer.","Wireless guest mode provides open access to a protected LAN.","With SSID broadcast disabled, an attacker must know the SSID to connect.",1,5
		],
		[
			SINGLE,
			"What are signatures as they relate to security threats?",
			"a unique encryption code used by a known attacker","the beginning or end of a malware segment that has a specific cyclic redundancy check number","one or more code patterns within a specific type of malware","the checksum associated with each specific type of malware that is stored in a virus table",3
		],
		[
			DOUBLE,
			"Which two items are used in asymmetric encryption? (Choose two.)",
			"a private key","a TPM","a DES key","a token","a public key",1,5
		],
		[
			SINGLE,
			"A user notices that files created and saved locally last week are missing and asks the technician to investigate. The technician suspects there has been a security breach. Which type of malware could be responsible?",
			"phishing","adware","Trojan","spyware",3
		],
		[
			SINGLE,
			"A technician has been asked by a manager to recommend a security solution for protecting a computer against rootkits. Which security technique should the technician recommend?",
			"antimalware","port scan","ASA","dual authentication",1
		],
		[
			SINGLE,
			"A technician has been asked by a manager to recommend a security solution for protecting a computer against Trojans. Which security technique should the technician recommend?",
			"port scan","dual authentication","antimalware","ASA",3
		],
		[
			SINGLE,
			"When would a PC repair person want to deploy the idle timeout feature?",
			"when users are leaving their desk but remaining logged on","when users are inserting media and running applications not sanctioned by the company","when users are playing music CDs and leaving them playing even after the users have left for the day","when users are surfing the Internet and not doing their job",1
		],
		[
			SINGLE,
			"A college student logs onto a college computer for the first time. Which security policy category should be presented to the student?",
			"identification and authentication policies","incident handling policies","network maintenance policies","acceptable use policies",4
		],
		[
			SINGLE,
			"A technician is configuring rights and permissions in Windows 7. Which tool will the technician use?",
			"Device Manager","Local Users and Groups","Local Security Policy","Resource Monitor",2
		],
		[
			SINGLE,
			"An IT technician wants to create a rule on two Windows 10 computers to prevent an installed application from accessing the public Internet. Which tool would the technician use to accomplish this task?",
			"Windows Defender Firewall with Advanced Security","Computer Management","DMZ","Local Security Policy",1
		],
		[
			SINGLE,
			"A newly created company has fifteen Windows 10 computers that need to be installed before the company can open for business. What is a best practice that the technician should implement when configuring the Windows Firewall?",
			"The technician should remove all default firewall rules and selectively deny traffic from reaching the company network.","The technician should enable the Windows Firewall for inbound traffic and install other firewall software for outbound traffic control.","After implementing third party security software for the company, the technician should verify that the Windows Firewall is disabled.","The technician should create instructions for corporate users on how to allow an app through the WIndows Firewall using the Administrator account.",3
		],
		[
			SINGLE,
			"A technician has been asked by a manager to recommend a security solution for protecting a computer against spyware. Which security technique should the technician recommend?",
			"dual authentication","antimalware","ping sweep","IPS",2
		],
		[
			SINGLE,
			"A technician has been asked by a manager to recommend a security solution for protecting a computer against worms. Which security technique should the technician recommend?",
			"antimalware","SSL","ping sweep","IPS",1
		],
		[
			SINGLE,
			"A technician has been asked by a manager to recommend a security solution for protecting a computer against ransomware. Which security technique should the technician recommend?",
			"encryption","ping sweep","IPS","antimalware",4
		],
		[
			SINGLE,
			"A technician has been asked by a manager to recommend a security solution for protecting a computer against keyloggers. Which security technique should the technician recommend?",
			"ASA","antimalware","ping sweep","IPS",2
		],
		[
			SINGLE,
			"A system administrator has been asked to protect the sensitive data on the Windows 7 computers of all management employees. Which Windows feature can be used to selectively encrypt individual files within the user accounts of each manager?​",
			"BitLocker","EFS","TPM","Windows Update",2
		],
		[
			SINGLE,
			"A group of users on the same network are all complaining about their computers running slowly. After investigating, the technician determines that these computers are part of a zombie network. Which type of malware is used to control these computers?",
			"rootkit","spyware","virus","botnet",4
		],
		[
			SINGLE,
			"A technician has been asked by a manager to recommend a security solution for protecting a computer against adware programs. Which security technique should the technician recommend?",
			"antimalware","IPS","ping sweep","ASA",1
		]
	]
	super()
