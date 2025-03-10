extends Control

var QuestionNumber = 0
var GivenAnswer:Array = []
enum{
	ZERO,
	SINGLE,
	TWO,
	THREE,
	MATCH,
}

@export var Questions: Array[Array] = [
	[
		1,
		"A user tries to install an application on a Windows 10 Pro PC but it fails. The user tries to uninstall the application but it fails to uninstall. What option can be used to address this issue without loss of data or applications?",
		"Use Advanced Start-up.", "Use Restore Point", "Uninstall and reinstall the device using device manager.", "Restart the Windows Update services.", 2
	],
	[
		1,
		"A user is troubleshooting a connectivity issue from the PC to a web server and wants to see a list of the traffic stops between the PC and the web server. What is the best Windows command to select to do the job?",
		"bootrec", "diskpart", "recover", "tracert", "tasklist", 4
	],
	[
		3,
		"Which three levels of RAID are supported by Windows 10 Pro? (Choose three.)",
		"5", "0", "4", "3", "1", 1, 2, 5
	],
	[
		1,
		"A user calls the help desk and reports that the workstation, when powering up, displays error messages about an invalid system disk or invalid boot disk. When a technician comes to the office, the user mentions that the workstation was working well the day before. The technician checks the workstation and makes sure that the cable is firmly connected between the hard drive and the motherboard. What is another likely cause of the problem?",
		"A recently installed device driver is incompatible with the boot.", "The boot service fails to start.", "Some of the operating system files may be corrupted.", "The MBR/GPT is corrupted.", 4
	],
	[
		1,
		"A technician is attempting to diagnose and rectify a common boot problem on a Windows 10 installation. Which Windows 10 advanced recovery option should the technician use?",
		"Startup Repair", "Reset", "System Image Recovery", "System Restore", 1
	],
	[
		1,
		"A user of a Windows 10 PC wants to automatically sync the user profile across various Windows 10 devices that the user owns. How can the user accomplish this?",
		"Have the user sign into all devices with the Microsoft account of the user.", "Use gpupdate to propagate the group policy to other devices.", "Ensure that the user is in the proper group so that the group policy will be applied.", "Make sure that OneDrive file sync is disabled.", 1
	],
	[
		1,
		"Which question is an open ended question that could be used when helping a customer troubleshoot a Windows problem?",
		"What programs have you installed recently?", "Have you changed your password recently?", "Can you boot the operating system?", "Do you get a login prompt when the computer boots?", 1
	],
	[
		1,
		"A user is reporting that a file has been shared specifically with another user on the network, but the other user opens the file and is unable to save it once edited. What is the probable cause?",
		"The file has the Archive attribute enabled.", "The user forgot to share the parent folder.", "The user shared the document with Read permissions.", "The file has been deleted.", 3
	],
	[
		1,
		"Which statement is true regarding libraries in Windows 10?",
		"Libraries allow Windows 10 to index files faster.", "Libraries allow Windows 10 to support file names longer than 20 characters.", "Libraries allow Windows 10 to link mutiple different directories.", "Libraries allow Windows 10 to enforce the EFS file system.", 3
	],
	[
		1,
		"A user notes that the username and password are automatically populated in the Microsoft Edge browser when logging into a secure site. When the user tries to log into the same site using Google Chrome, the username and password do not save automatically. Why is this occurring?",
		"Google Chrome does not support that secure site.", "The certificate for that site has not been authenticated.", "The Google Chrome browser is corrupt.", "Google Chrome does not automatically save web credentials.", 4
	],
	[
		1,
		"A user wishes to view an ISO disk image file on a Windows 10 Pro PC. How can this be done?",
		"Use the built-in Unzip utility to open the ISO file and extract the contents into a directory.", "Convert a Dynamic disk to a Basic disk and open the ISO image.", "Use File Explorer to locate the ISO file and mount the file using the Disk Image tools.", "Copy the ISO image to a Dynamic disk and double click it.", 3
	],
	[
		1,
		"Which feature is included with both macOS and Apple iOS to establish a Wi-Fi direct connection between devices to simplify file transfer?",
		"Nearby sharing", "Workgroup", "AirDrop", "Homegroup", 3
	],
	[
		1,
		"A technician notices that a program that is listed in the registry of a Windows computer is not found on that computer. What is a possible solution to the problem?",
		"Run fdisk /mbr from the command prompt.", "Restore the ntdetect.com file from the installation media.", "Reinstall the application. Then, run the uninstall program.", "Restore the boot.ini file from the installation media.", 3
	],
	[
		1,
		"A computer technician is attempting to modify settings in the Network Adapter > Properties > Advanced tab > Speed and Duplex. What is a possible effect (or impact) if this option is configured incorrectly?",
		"The NIC loses VLAN support.", "The NIC cannot be set to shutdown while the computer is idle.", "The network connection may experience issues.", "The NIC cannot be set to wake up with network activity.", 3
	],
	[
		1,
		"A technician has successfully removed malware from a PC and finds that when the system is rebooted error messages are displayed about missing and corrupt system files. What utility can the technician use to replace or fix any corrupted system files?",
		"ASR", "Fixmbr", "SFC", "Regedit", "Fixboot", 3
	],
	[
		1,
		"What is the purpose of Windows 10 ReadyBoost?",
		"It enables Windows to treat an external flash device, such as a USB drive, as a hard drive cache.", "It enables the quadruple channels on a 64-bit processor.", "It enables the UEFI bios to boot faster.", "It speeds up the Windows 10 start time.", 1
	],
	[
		1,
		"Where are 32-bit program files located in a 64-bit version of Windows 10 Pro?",
		"c:\\Windows\\system32", "c:\\users", "c:\\Program files", "c:\\Program files (x86)", 4
	],
	[
		1,
		"A technician is troubleshooting a PC. The display shows an “Invalid Boot Disk” error after the POST. What is a probable cause?",
		"The PC does not have a floppy drive or the floppy drive is broken.", "The date and time have been changed in the BIOS and do not reflect the correct time and date.", "A process is using most of the CPU resources.", "The MBR is corrupted.", "The PC has a BIOS password.", 4
	],
	[
		1,
		"A technician is troubleshooting a Windows 10 PC with a frozen Internet Explorer window. Which command can the technician run, as an administrator at a command prompt, to terminate the Internet Explorer process that has hung?",
		"taskkill /pid iexplorer.exe", "taskkill /f /im explorer.exe", "taskkill /fi iexplorer.exe", "taskkill /f /im iexplorer.exe", 4
	],
	[
		1,
		"A user reports that a PC is losing files, not opening some files, and is performing slowly. The technician suspects problems with the hard drive. What should be done to protect the data that is on the PC and to determine the source of the problem, without risking total drive failure?",
		"Run the format command, then replace the hard drive.", "Back up all important files, then run chkdsk.", "Run chkdsk, then run format.", "Back up all important files, then replace the hard drive.", "Run chkdsk, then back up all important files.", 2
	],
	[
		1,
		"A technician has been asked to reinstall the OS on a computer that has a corrupted operating system. The technician inserts the installation media in the optical drive. What would be the most likely action the technician should perform next?",
		"Change the BIOS password.", "Flash the BIOS for a firmware upgrade.", "Change clock speeds in the BIOS.", "Change the boot sequence in the BIOS.", 4
	],
	[
		1,
		"A technician is troubleshooting a Windows 7 laptop that takes significantly longer than expected when performing a file search. What is the possible cause?",
		"The file system is corrupt.", "The disk type is basic.", "The disk type is dynamic.", "The file permissions are not set.", "The index service is not running.", 5
	],
	[
		1,
		"A user is looking for a file but can not find it in the Document folder. The user wants to move to the Download directory to check there. What is the best Windows command to select to do the job?",
		"bootrec", "ipconfig", "diskpart", "cd", "help", 4
	],
	[
		1,
		"A user needs to display a list of current processes running on a local or a remote computer. What is the best Windows command to select to do the job?",
		"diskpart", "bootrec", "format", "tasklist", "path", 4
	],
	[
		1,
		"A Windows 8 computer locks up with a stop error during startup and then automatically reboots. The automatic restart setting is making it difficult to see any error messages. What can be done so that the error messages can be viewed?",
		"Access the Advanced Startup options menu before the OS loads to disable the auto restart function.", "Use the System Recovery options to restart the operating system.", "Use the Command Prompt option to research the stop error messages.", "View the error messages and recover the system using the System Image Recovery tool.", 1
	],
	[
		1,
		"A technician is working on a Windows 10 PC that keeps freezing occasionally after a driver update. System restore has been turned off. What option can be used to address this issue without loss of data or applications?",
		"Uninstall and reinstall the device using device manager.", "Restore using Sysprep.", "Reset this PC.", "Restart the Windows Update services.", 3
	],
	[
		1,
		"A company has recently deployed Active Directory and now a workstation cannot connect to a network resource. A technician takes corrective action by modifying group policy settings. Which command should the technician use to make the workstation synchronize with the new settings?",
		"runas", "gpupdate", "rstrui", "tasklist", "gpresult", 2
	],
	[
		1,
		"A technician wishes to create a dynamic volume on a Windows 10 PC that has two physical hard drives. The technician wants to achieve maximum write performance with data fault tolerance. What type of dynamic volume should be created to achieve this?",
		"RAID 5 volume", "RAID 2 volume", "RAID 6 volume", "RAID 1 volume", 4
	],
	[
		1,
		"Which file sharing mechanism is included with Microsoft Windows 10 to provide simple file sharing via Wi-Fi and Bluetooth?",
		"Nearby Sharing", "AirDrop", "Homegroup", "NFC", "Workgroup", 1
	],
	[
		2,
		"A company is implementing a wireless network and using wireless devices as part of the corporate environment. Which two server-based authentication methods should the company consider in the wireless network design? (Choose two.)",
		"AES", "RADIUS", "TKIP", "TACACS", "WPA2-PSK", 2, 4
	],
	[
		1,
		"A Windows 10 computer suddenly started experiencing network connectivity issues after the latest Windows updates completed a week ago. What option can be used to address this issue without loss of data or applications?",
		"Restore using Sysprep.", "Restart the Windows Update services.", "Reset this PC.", "Uninstall and reinstall the device using device manager.", 3
	],
	[
		1,
		"A client installed a new driver for a device three weeks ago; however, this driver is causing the system to freeze occasionally and the client wishes to revert back to the old driver. What option can be used to address this issue without loss of data or applications?",
		"Restart the Windows Update services.", "Restore using Sysprep.", "Uninstall and reinstall the device using device manager.", "Reset this PC.", 4
	],
	[
		1,
		"A technician is troubleshooting a Windows 10 PC that will not do any windows updates automatically or manually. What option can be used to address this issue without loss of data or applications?",
		"Use Advanced Start-up", "Go back to the initial Windows build.", "Delete all the files in C:\\Windows\\SoftwareDistribution folder and restart the PC.", "Perform a repair of Windows using Installation media.", 3
	],
	[
		1,
		"A user is trying to create a new Windows directory for storing files related to a new project. What is the best Windows command to select to do the job?",
		"md", "ping", "tracert", "nslookup", "help", 1
	],
	[
		1,
		"A user has to shutdown several remote computers one at a time. What is the best Windows command to select to do the job?",
		"nslookup", "ping", "shutdown", "netstat", "recover", 3
	],
	[
		1,
		"A user has just installed a new hard drive into the PC and needs to prepare it to store Windows files. What is the best Windows command to select to do the job?",
		"bootrec", "ipconfig", "diskpart", "net user", "format", 5
	],
	[
		1,
		"A technician is troubleshooting a Windows 10 PC that will not do any windows updates automatically or manually. What option can be used to address this issue without loss of data or applications?",
		"Restore using Sysprep.", "Uninstall and reinstall the device using device manager.", "Restart the Windows Update services.", "Delete all the files in C:\\Windows\\SoftwareDistribution folder and restart the PC.", 4
	],
	[
		1,
		"A user is experiencing issues with system startup and with failing to open some files. The user wants to determine the source of any hard drive issues. What is the best Windows command to select to do the job?",
		"bootrec", "ipconfig", "chkdsk", "diskpart", "cls", 3
	],
	[
		1,
		"A user suspects someone has hacked into the PC and wants to verify activity on the PC by displaying all active TCP connections to the PC. What is the best Windows command to select to do the job?",
		"diskpart", "bootrec", "netstat", "format", "regsrv32", 3
	],
	[
		1,
		"A user has an important file that is used in many projects and needs to move that file to a different Windows directory while maintaining it in the current location. What is the best Windows command to select to do the job?",
		"bootrec", "ipconfig", "diskpart", "history", "copy", 5
	],
	[
		1,
		"A user is reorganizing files within different directories to accommodate new projects and needs to relocate a file from one Windows directory to another one. What is the best Windows command to select to do the job?",
		"tasklist", "DISM", "move", "sfc", "history", 3
	],
	[
		MATCH,
		"Match the Windows 10 Registry key with its description. (Not all options are used.)",
		["HKKEY_LOCAL_MACHINE", "HKEY_CURRENT_USER", "HKEY_CLASSES_ROOT", "HKEY_USERS", "HKEY_CURRENT_CONFIG"],
		["all of the configuration settings for the hardware and software configured on the computer for all users", 
		"settings about the file system, file associations, shortcuts used when you ask Windows to run a file, or view a directory",
		"data about the preferences of the currently logged on user, including personlization settings, default devices, and procramt, etc",
		"information about the current hardware profile of the machine"],
		[4, 3, 2, 5]
	],
	[
		MATCH,
		"Match the categories in the Windows 10 Control Panel to the function",
		["Network and Internet", "Program", "Ease of Access", "System and Security", "Hardware and Sound", "User Accounts"],
		["provides access to administrative tools for configuring security and a wide range of system functions",
		"allows configuration of networking, file sharing, the default Microsoft browser, and infrared file exchange settings",
		"provides access to configuration of devices such as printers, media devices, power, and mobility",
		"provides access to allow activation of deactivation of a wide range of Windows features",
		"enables administration of Windows user accounts and management of Web and Windows Credentials including the file encryption certificates",
		"provides access for configuration of speech recognition and text to speech services"],
		[4, 1, 5, 2, 6, 3]
	],
	[
		MATCH,
		"Match the folder in a 64-bit Windows 10 PC to their description. (Not all options are used.)",
		["Program Files (x86)", "System Folder", "Program Files", "Temporary Files"],
		["It contains files created by the OS and programs that are needed for a short period of time and are usually automatically deleted when the application of the OS is finished using them",
		"It is used by application installation programs to install software. All 32-bit programs are installed in this folder.",
		"It contains most of the files that are used to run the computer."],
		[4, 1, 2]
	],
	[
		MATCH,
		"Match the folders in a 32-bit Windows 10 PC to their description. (Not alll options are used.)",
		["Program Files (x86)", "System Folder", "Program Files", "Temporary Files"],
		["It contains files created by the OS and programs that are needed for a short period of time and are usually automatically deleted when the application of the OS is finished using them",
		"It is used by application installation programs to install software. All 32-bit programs are installed in this folder.",
		"It contains most of the files that are used to run the computer."],
		[4, 1, 2]
	],
	[
		MATCH,
		"Match the message types in the Windows 10 Event Viewer with their description. (Not all options are used.)",
		["Information", "Warning", "Error", "Critical", "Success Audit", "Failure Audit"],
		["A successful event is logged",
		"Immediate action is required.",
		"A security event has been successful",
		"A problem exists, but no immediate action is required",
		"There is an indication of a potential problem with a software component that is not functioning ideally"],
		[1, 4, 5, 3, 2]
	],
	[
		MATCH,
		"Match the Internet Options to the descriptions used ot configure Microsoft Internet Explorer. (Not all options are used.)",
		["General", "Security", "Connections", "Programs", "Content", "Advanced"],
		["allows for Dial-up, VPN, and Proxy Server settings to be configured",
		"allows IE to be set as the default web browser, enables browser add-ons, allows for the HTML editor to be set for IE, and allows for the selection of programs used for internet services",
		"allows for IE settings to be reset to their default state",
		"allows for adjustment of AutoComplete settings, and configuration of the feeds and web slices that can be viewed in IE",
		"allows for selecting the default home page, viewing and deleting browsing history, adjusting search settings, and customizing the browser appearance"],
		[3, 4, 6, 5, 1]
	]
]

var CorrectAnswers: Array[int]
var IncorrectAnswers: Array[int]
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print(Questions.size())
	#Answers.resize(Questions.size())
	Questions.shuffle()
	if Questions[0][0] == MATCH:
		PrepareMatchQuestion(0)
	else:
		MakeAnswerButtons(Questions[0])
	$QuestionNumber.text = "1/" + str(Questions.size())


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func MakeAnswerButtons(Question:Array):
	$Answers.visible = true
	$MatchContainer.visible = false
	for button in $Answers.get_children():
		if button.name == "Label":
			continue
		button.queue_free()
	$Answers/Label.text = Question[1]
	var NumAnswers = Question.size() - 2 - Question[0]
	
	for num in NumAnswers:
		var AnswerButton = Button.new()
		AnswerButton.toggle_mode = true
		AnswerButton.text = Question[num+2]
		$Answers.add_child(AnswerButton)

func PrepareMatchQuestion(Num:int):
	$Answers.visible = false
	$MatchContainer.visible = true
	for child in $MatchContainer/HBoxContainer/Options.get_children():
		child.queue_free()
	for child in $MatchContainer/HBoxContainer/Categories.get_children():
		child.queue_free()
	$MatchContainer/Question.text = Questions[Num][1]
	var width:int
	for Option in Questions[Num][2]:
		var Option_Button = Button.new()
		Option_Button.text = Option
		Option_Button.toggle_mode = true
		$MatchContainer/HBoxContainer/Options.add_child(Option_Button)
		width = Option_Button.size.x
		
	for Category in Questions[Num][3]:
		var CategoryVBox = VBoxContainer.new()
		
		var CategoryLabel = RichTextLabel.new()
		CategoryLabel.fit_content = true
		CategoryLabel.custom_minimum_size.x = 1280 - width
		
		var CategoryButton = Button.new()
		CategoryButton.custom_minimum_size.y = 30
		CategoryButton.pressed.connect(OnCategoryButtonPressed.bind(CategoryButton))
		
		$MatchContainer/HBoxContainer/Categories.add_child(CategoryVBox)
		CategoryLabel.text = Category
		CategoryVBox.add_child(CategoryLabel)
		CategoryVBox.add_child(CategoryButton)

func CheckMultipleChoiceAnswers(Question:Array):
	var AnswersGiven:Array = []
	var CorrectAnswers:Array = []
	
	var iterator = 1
	for button in $Answers.get_children():
		if button.name == "Label":
			continue
		if button.button_pressed:
			AnswersGiven.append(iterator)
		iterator += 1
	
	for num in range(-Question[0], 0):
		CorrectAnswers.append(Question[num])
		
	if AnswersGiven == CorrectAnswers:
		#CorrectAnswers.append(QuestionNumber)
		return true
	else:
		#IncorrectAnswers.append(QuestionNumber)
		return false
	
func CheckMatchAnswer(Num:int):
	if GivenAnswer == Questions[Num][-1]:
		return true
	else:
		return false

func _on_next_question_pressed() -> void:
	var correct:bool
	if Questions[QuestionNumber][0] == MATCH:
		correct = CheckMatchAnswer(QuestionNumber)
	else:
		correct = CheckMultipleChoiceAnswers(Questions[QuestionNumber])
	
	if correct:
		$Score.text = ""
		if QuestionNumber < Questions.size() - 1:
			QuestionNumber+=1
			if Questions[QuestionNumber][0] == MATCH:
				PrepareMatchQuestion(QuestionNumber)
			else:
				MakeAnswerButtons(Questions[QuestionNumber+1])
			
			$QuestionNumber.text = str(QuestionNumber+1) + "/" + str(Questions.size())
		else:
			$Score.text = "Done!"
	else:
		$Score.text = "Incorrect"


func _on_prev_question_pressed() -> void:
	if QuestionNumber > 0:
		MakeAnswerButtons(Questions[QuestionNumber-1])
		QuestionNumber-=1
		$QuestionNumber.text = str(QuestionNumber+1) + "/" + str(Questions.size())

func OnCategoryButtonPressed(ClickedButton:Button):
	var iterator = 1
	for Option in $MatchContainer/HBoxContainer/Options.get_children():
		if Option.button_pressed:
			GivenAnswer.append(iterator)
			ClickedButton.text = Option.text
			Option.button_pressed = false
			break
		iterator += 1
