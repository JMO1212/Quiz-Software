extends BaseExam

func _ready():
	Questions = [
		[
			SINGLE,
			"Users in a company have complained about network performance. After investigation, the IT staff has determined that the attacker is using a table of words that potentially could be used as passwords. What is the type of network attack?",
			"DDoS","DNS poisoning","dictionary","SYN flood",3
		],
		[
			SINGLE,
			"Which action would help a technician to determine if a denial of service attack is being caused by malware on a host?",
			"Log on to the host as a different user.","Disable ActiveX and Silverlight on the host.","Disconnect the host from the network.","Install rogue antivirus software on the host.",3
		],
		[
			DOUBLE,
			"It has been noted that the computers of employees who use removable flash drives are being infected with viruses and other malware. Which two actions can help prevent this problem in the future? (Choose two.)",
			"Repair, delete, or quarantine the infected files.","Disable the autorun feature in the operating system.","Set virus protection software to scan removable media when data is accessed.","Configure the Windows Firewall to block the ports that are used by viruses.","Enable the TPM in the CMOS settings.",2,3
		],
		[
			DOUBLE,
			"What are two potential user benefits of rooting or jailbreaking a mobile device? (Choose two.)",
			"A custom OS may reduce sandboxing features.​","The operating system can be fine-tuned to improve the speed of the device.","The root directory of the device is blocked.","The user interface can be extensively customized.","The operation of the carrier cellular network may be affected.",2,4
		],
		[
			SINGLE,
			"A hard drive used by an administrative assistant in a Federal Reserve Bank is replaced with a new larger capacity drive. The technician brings the old drive into the technical office and is asked for the drive so it can be used in a different computer. How should the technician handle this situation?",
			"Turn the drive over to the second technician with a request to format the drive first as exFAT and then as NTFS.","Deny the request and require a certificate of destruction.","Perform a drive wipe before turning the drive over to the second technician.","Use a degausser before turning the drive over to the second technician.",3
		],
		[
			DOUBLE,
			"What are two benefits of using an ext4 partition instead of ext3? (Choose two.)",
			"an increase in the number of supported devices","decreased load time","improved performance","compatibility with CDFS","compatibility with NTFS","increase in the size of supported files",3,6
		],
		[
			SINGLE,
			"What is the most effective way of securing wireless traffic?",
			"wireless MAC filtering","WEP","WPA2","SSID hiding",3
		],
		[
			DOUBLE,
			"Which two conditions must be met for mobile device security measures such as remote lock and remote wipe to function? (Choose two.)",
			"The device must be powered on.","Sandboxing must be enabled.","The passcode must be disabled.","The device must be connected to a network.","The GPS locator must be enabled.",1,4
		],
		[
			SINGLE,
			"A user has reported SMART messages displayed on the computer screen several times over the past few weeks. Which computer part should the technician check first?",
			"motherboard","CPU","hard drive","RAM","power supply",3
		],
		[
			SINGLE,
			"The corporate security policy states that all remote connections use only secure tunnels for data communications. Which encryption technique secures data traveling across the public Internet as if it were traveling across the corporate LAN?",
			"VPN","WEP","WPA","MD5",1
		],
		[
			SINGLE,
			"A user complains about not being able to modify a shared remote file. The technician investigates the issue and notices that both NTFS and share permissions have been assigned to the shared folder and file. What is the effective permission when this security technique has been applied?",
			"The share and NTFS permissions will be added.","The most restrictive share or NTFS permission will be applied.","All remote access is blocked.","Only the original owner can modify the file either locally or from a remote location.",2
		],
		[
			DOUBLE,
			"Which two security precautions will help protect a workplace against social engineering? (Choose two.)",
			"registering and escorting all visitors to the premises","ensuring that all operating system and antivirus software is up to date","encrypting all sensitive data stored on the servers","performing daily data backups","ensuring that each use of an access card allows access to only one user at the time",1,5
		],
		[
			SINGLE,
			"A PC technician has been asked by a supervisor to recommend a security solution for a machine where the antimalware software cannot remove all of the malware. Which security technique should the technician recommend?",
			"Buy an ASA.","Buy an IPS.","Use Windows Safe Mode.","Use SSL.",3
		],
		[
			SINGLE,
			"Users in a company have complained about network performance. After investigation, the IT staff has determined that the attacker injected false records on the server that translates IP addresses to domain names. What is the type of network attack?",
			"SYN flood","DDoS","DNS poisoning","zero-day",3
		],
		[
			SINGLE,
			"Users in a company have complained about network performance. After investigation, the IT staff has determined that the attacker was using a specific technique that affected the TCP three-way handshake. What is the type of network attack?",
			"zero-day","DNS poisoning","dictionary","SYN flood",4
		],
		[
			SINGLE,
			"A PC technician has been asked by a supervisor to recommend a security solution for preventing tailgating. Which security technique should the technician recommend?",
			"Use a mantrap.","Buy an IPS.","Buy an ASA.","Use encryption.",1
		],
		[
			SINGLE,
			"A PC technician has been asked by a supervisor to recommend a security solution for a company that wants a device to monitor incoming and outgoing traffic and stop any malicious activity. Which security technique should the technician recommend?",
			"Use Windows Safe Mode.","Buy an ASA.","Buy an IPS.","Use SSL.",3
		],
		[
			SINGLE,
			"Users in a company have complained about network performance. After investigation, the IT staff has determined that zombies were used to attack the firewall. What is the type of network attack?",
			"SYN flood","DDoS","DNS poisoning","zero-day",2
		],
		[
			SINGLE,
			"Users in a company have complained about network performance. After investigation, the IT staff has determined that the attacker is using a vulnerability that is known to the software vendor, but not patched yet. What is the type of network attack?",
			"zero-day","SYN flood","DDoS","DNS poisoning",1
		],
		[
			SINGLE,
			"Users in a company have complained about network performance. After investigation, the IT staff has determined that the attacker is using a technique that compares hashed passwords to potential hashes the hacker has. What is the type of network attack?",
			"zero-day","SYN flood","DNS poisoning","rainbow table",4
		],
		[
			SINGLE,
			"A PC technician has been asked by a supervisor to recommend a security solution for protecting a computer used to log in at a dental clinic from someone using a bootable disk containing hacking tools. Which security technique should the technician recommend?",
			"Disable ports.","Use a mantrap.","Use Windows Safe Mode.","Employ ping sweeps.",1
		],
		[
			SINGLE,
			"A PC technician has been asked by a supervisor to recommend a security solution for a manager traveling who needs access to internal corporate resources. Which security technique should the technician recommend?",
			"Use Windows Safe Mode.","Buy an IPS.","Use a VPN.","Run vulnerability scanners.",3
		],
		[
			SINGLE,
			"Users in a company have complained about network performance. After investigation, the IT staff has determined that the DNS server was sent with an enormous amount of false requests, thus overwhelming the server. What is the type of network attack?",
			"zero-day","SYN flood","dictionary","DoS",4
		],
		[
			SINGLE,
			"A PC technician has been asked by a supervisor to recommend a security solution for phishing. Which security technique should the technician recommend?",
			"Use a mantrap.","Use Windows Safe Mode.","Provide security awareness training.","Implement dual authentication.",3
		]
	]
	super()
