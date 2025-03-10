extends Control

var QuestionNumber = 0
enum{
	ZERO,
	SINGLE,
	TWO,
	THREE,
	FOUR,
	FIVE,
	SIX
}

@export var Questions: Array[Array] = [
	[
		1,
		"A user needs to display a list of current processes running on a local or a remote computer. What is the best Windows command to select to do the job?",
		"path","shutdown","tasklist","DISM","sfc",3
	],
	[
		1,
		"A technician is troubleshooting a computer that has two monitors attached. The technician wants to disable one of them to see if that changes the symptoms exhibited. Which Windows tool would the technician use to disable the monitor?",
		"BIOS","Task Manager","Device Manager","Resource Monitor",3
	],
	[
		2,
		"A user in a corporate environment is reporting that a Windows computer used by part-time employees is running slowly after a Windows update. Which two actions should a technician take to help in this situation? (Choose two.)",
		"Repartition the hard drive into smaller partitions.","Disable unneeded processes.","Run Disk Cleanup.","Use the mstsc command.","Use the System File Checker tool.",2,3
	],
	[
		1,
		"A technician wishes to view all the processes that are running for the active user on a Windows 10 PC. What option must be selected on the Windows Task Manager in order to do this?",
		"Show processes under the User tab.","Select the Performance tab.","Select the Startup tab.","Select the Services tab.",1
	],
	[
		1,
		"A technician changes the length of the local user password to five characters using the Local Security Policy snap-in. The technician tries to create a password of “dave” for the local user account of “dave” but it fails because of the Windows 10 password complexity requirements. Which password would meet the requirements?",
		"dave$","Dave$","D@ve4","Dave4",3
	],
	[
		1,
		"A user is trying to install a new application on a Windows 10 PC but the application fails to install fully. The user tries to uninstall the application but fails to uninstall it. What can the user do to remove the application from the PC without affecting existing applications and data?",
		"Restore from a Windows image file.","Use the Reset this PC option.","Roll back the last driver installed.","Restore using a System Restore point.",4
	],
	[
		1,
		"The IT department has just purchased 15 wireless access points in order to provide full wireless coverage for all 100 employees within the company and is looking to deploy the most secure and scalable wireless implementation. Which open source authentication method would perform authentication on behalf of all 15 wireless network devices?",
		"WPA2-PSK","TKIP","RADIUS","TACACS+",3
	],
	[
		1,
		"A user is trying to share a printer attached to a Windows 10 PC but is unable to do so. What account should be used to do that?",
		"system","network service","local service","administrator",4
	],
	[
		1,
		"A technician uses Microsoft Deployment Image Servicing and Management (DISM) tool to create a Windows image file on one of the workstations running Windows 10. When the technician tries to clone another workstation with the image file, the workstation exhibits network connectivity issues on completion. What could cause this?",
		"The Sysprep utility should have been turned off prior to the creation of the image file.","The network drivers were not added to the image file.","The technician used the wrong tool to create the image file.","The SID of the original PC is not cleared when creating the image with DISM.",4
	],
	[
		1,
		"A technician is troubleshooting a Windows 10 PC with a frozen Internet Explorer window. Which command can the technician run, as an administrator at a command prompt, to terminate the Internet Explorer process that has hung?",
		"taskkill /f /im iexplorer.exe","taskkill /f /im explorer.exe","taskkill /fi iexplorer.exe","taskkill /pid iexplorer.exe",1
	],
	[
		1,
		"A technician is troubleshooting a Windows 10 PC that is taking a long time to start up. The technician needs to identify which user applications are causing the greatest delay in the startup of the PC. Which tool should the technician use?",
		"Task Manager","Resource Monitor","System Configuration","Performance Monitor",1
	],
	[
		1,
		"A technician calls the help desk with the following situation. “I am trying to save a file to my RAID drive but my system cannot find it.” What advice should the help desk agent give to the caller?",
		"Use Task Manager to release system resources from the unresponsive application.","Check the RAID controller, because it may need to be replaced.","Use Device Manager to look for any driver issues or problems.","Check the IP address configuration on the new PC, because the default gateway may be incorrect.",2
	],
	[
		2,
		"A user wishes to upgrade a PC to Windows 10 from a PC that is running a 32-bit version of Windows 7. Which two editions of Windows 10 will support this upgrade? (Choose two).",
		"32-bit Windows Home","32-bit version of Windows 10 Pro","64-bit version of Windows Home","64-bit version of Windows 10 Pro","64-bit version of Windows 10 Enterprise",1,2
	],
	[
		1,
		"A manager calls the help desk with the following situation. “What can be done to improve the printing performance of the departmental laser printer?” What advice should the help desk agent give to the caller?",
		"Use Task Manager to release system resources from the unresponsive application.","Use Device Manager to look for any driver issues or problems.","Check the RAID controller, because it may need to be replaced.","Upgrade the RAM in the printer.",4
	],
	[
		1,
		"A technician wishes to prepare the computers in the network for disaster recovery. The network consists of a variety of desktops and laptops from different vendors. All the computers are running either a 32-bit version of Windows 10 Pro or a 64-bit version of Windows 10 Pro. How would the technician prepare the recovery media?",
		"Prepare one 64-bit recovery disc for all the computers.","Prepare one 32-bit recovery disc for all the computers.","Prepare individual recovery discs for all the computers.","Prepare one image restore for all the computers.",3
	],
	[
		1,
		"A user wants to copy a group of files from one Windows directory to another. What is the best Windows command to select to do the job?",
		"md","rd","del","robocopy","net use",4
	],
	[
		1,
		"An administrator calls the help desk with the following situation. “I need to make changes to a file. I can open it but I am unable to make changes.” What advice should the help desk agent give to the caller?",
		"Set the file permissions to read and execute.","Create a virtual machine with an OS that supports the application.","If using Windows, set the idle timeout and screen lock.","Check the permissions for this file.",4
	],
	[
		1,
		"A manager calls the help desk with the following situation. “I need to be able to view and download files but not delete them.” What advice should the help desk agent give to the caller?",
		"Set the file permissions to read and execute.","Create a virtual machine with an OS that supports the application.","Check the permissions for this file.","If using Windows, set the idle timeout and screen lock.",1
	],
	[
		1,
		"A user has been told by the systems administrator that the group policy settings for user workstations are modified. The user has been asked to synchronize the workstation with the new settings. What is the best Windows command to select to do the job?",
		"rd","del","gpupdate","move","cls",3
	],
	[
		1,
		"A manager calls the help desk with the following situation. “Many employees leave their desks for extended periods of time with their PCs still logged in and unlocked.” What advice should the help desk agent give to the caller?",
		"Create a virtual machine with an OS that supports the application.","Check the permissions for this file.","If using Windows, set the idle timeout and screen lock.","Set the file permissions to read and execute.",3
	],
	[
		1,
		"A user of a Windows 10 PC wants to automatically sync the user profile across various Windows 10 devices that the user owns. How can the user accomplish this?",
		"Have the user sign into all devices with the Microsoft account of the user.","Ensure that the user is in the proper group so that the group policy will be applied.","Use gpupdate to propagate the group policy to other devices.","Make sure that OneDrive file sync is disabled.",1
	],
	[
		1,
		"An IT support person calls the help desk with the following situation. “I need to add a new printer but I can’t see it on the list of available printers.” What advice should the help desk agent give to the caller?",
		"Use Task Manager to release system resources from the unresponsive application.","Use Device Manager to look for any driver issues or problems.","Check the RAID controller, because it may need to be replaced.","Enter the IP address or browse for it on the network.",4
	],
	[
		1,
		"A user wants to end one or more processes on a PC based on process ID or image name. What is the best Windows command to select to do the job?",
		"md","rd","del","taskkill","exit",4
	],
	[
		1,
		"An IT support person calls the help desk with the following situation. “I added a new PC to my LAN. I can ping other devices on my LAN but not any remote devices.” What advice should the help desk agent give to the caller?",
		"Use Task Manager to release system resources from the unresponsive application.","Use Device Manager to look for any driver issues or problems.","Check the IP address configuration on the new PC, because the default gateway may be incorrect.","Check the RAID controller, because it may need to be replaced.",3
	],
	[
		1,
		"A user sees an unfamiliar IP address in the web server log file and wants to verify the organization that owns the IP address. What is the best Windows command to select to do the job?",
		"DISM","sfc","tasklist","regsrv32","nslookup",5
	],
	[
		1,
		"A user notices errors for some Windows operations and suspects that some system files might be corrupted. The user wants to scan and verify the integrity of all system files and replace corrupted files with correct versions. What is the best Windows command to select to do the job?",
		"DISM","shutdown","sfc","tasklist","path",3
	],
	[
		1,
		"A user needs to manage the drives, disks, partitions, volumes, and virtual drives of a PC. What is the best Windows command to select to do the job?",
		"md","rd","del","diskpart","net user",4
	],
	[
		1,
		"A manager/administrator calls the help desk with the following situation. “I need to use an application that is not supported by Windows on my PC.” What advice should the help desk agent give to the caller?",
		"Create a virtual machine with an OS that supports the application.","Set the file permissions to read and execute.","Check the permissions for this file.","If using Windows, set the idle timeout and screen lock.",1
	],
	[
		1,
		"A user is trying to create a new Windows directory for storing files related to a new project. What is the best Windows command to select to do the job?",
		"md","rd","del","move","help",1
	],
	[
		1,
		"A user has deleted all the files from a directory and wants to remove the empty directory. What is the best Windows command to select to do the job?",
		"DISM","rd","sfc","tasklist","history",2
	],
	[
		1,
		"An IT support person calls the help desk with the following situation. “What can be done to improve the printing performance of the departmental laser printer?” What advice should the help desk agent give to the caller?",
		"Upgrade the RAM in the printer.","Use Task Manager to release system resources from the unresponsive application.","Use Device Manager to look for any driver issues or problems.","Check the RAID controller, because it may need to be replaced.",1
	]
]

var CorrectAnswers: Array[int]
var IncorrectAnswers: Array[int]
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print(Questions.size())
	#Answers.resize(Questions.size())
	#Questions.shuffle()
	MakeAnswerButtons(Questions[0])
	$QuestionNumber.text = "1/" + str(Questions.size())


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func MakeAnswerButtons(Question:Array):
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

func CheckAnswers(Question:Array):
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
	


func _on_next_question_pressed() -> void:
	
	if CheckAnswers(Questions[QuestionNumber]):
		$Score.text = ""
		if QuestionNumber < Questions.size() - 1:
			MakeAnswerButtons(Questions[QuestionNumber+1])
			QuestionNumber+=1
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
