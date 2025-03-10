extends Control

@onready var QuestionLabel = $VBoxContainer/Question
@onready var OptionsBox = $VBoxContainer/HBoxContainer/Options
@onready var CategoriesBox = $VBoxContainer/HBoxContainer/Categories

var QuestionNumber:int = 0

var Questions: Array[Array] = [
	[
		"Match the Windows 10 Registry key with its description. (Not all options are used.)",
		["HKKEY_LOCAL_MACHINE", "HKEY_CURRENT_USER", "HKEY_CLASSES_ROOT", "HKEY_USERS", "HKEY_CURRENT_CONFIG"],
		["all of the configuration settings for the hardware and software configured on the computer for all users", 
		"settings about the file system, file associations, shortcuts used when you ask Windows to run a file, or view a directory",
		"data about the preferences of the currently logged on user, including personlization settings, default devices, and procramt, etc",
		"information about the current hardware profile of the machine"],
		[4, 3, 2, 5]
	],
	[
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
		"Match the folder in a 64-bit Windows 10 PC to their description. (Not all options are used.)",
		["Program Files (x86)", "System Folder", "Program Files", "Temporary Files"],
		["It contains files created by the OS and programs that are needed for a short period of time and are usually automatically deleted when the application of the OS is finished using them",
		"It is used by application installation programs to install software. All 32-bit programs are installed in this folder.",
		"It contains most of the files that are used to run the computer."],
		[4, 1, 2]
	],
	[
		"Match the folders in a 32-bit Windows 10 PC to their description. (Not alll options are used.)",
		["Program Files (x86)", "System Folder", "Program Files", "Temporary Files"],
		["It contains files created by the OS and programs that are needed for a short period of time and are usually automatically deleted when the application of the OS is finished using them",
		"It is used by application installation programs to install software. All 32-bit programs are installed in this folder.",
		"It contains most of the files that are used to run the computer."],
		[4, 1, 2]
	],
	[
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

var GivenAnswer: Array = []

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Questions.shuffle()
	PrepareQuestion(0)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func PrepareQuestion(Num:int):
	for child in OptionsBox.get_children():
		child.queue_free()
	for child in CategoriesBox.get_children():
		child.queue_free()
	QuestionLabel.text = Questions[Num][0]
	var width:int
	for Option in Questions[Num][1]:
		var Option_Button = Button.new()
		Option_Button.text = Option
		Option_Button.toggle_mode = true
		OptionsBox.add_child(Option_Button)
		width = Option_Button.size.x
		
	for Category in Questions[Num][2]:
		var CategoryVBox = VBoxContainer.new()
		
		var CategoryLabel = RichTextLabel.new()
		CategoryLabel.fit_content = true
		CategoryLabel.custom_minimum_size.x = 1280 - width
		
		var CategoryButton = Button.new()
		CategoryButton.custom_minimum_size.y = 30
		CategoryButton.pressed.connect(OnCategoryButtonPressed.bind(CategoryButton))
		
		CategoriesBox.add_child(CategoryVBox)
		CategoryLabel.text = Category
		CategoryVBox.add_child(CategoryLabel)
		CategoryVBox.add_child(CategoryButton)


func OnCategoryButtonPressed(ClickedButton:Button):
	var iterator = 1
	for Option in OptionsBox.get_children():
		if Option.button_pressed:
			GivenAnswer.append(iterator)
			ClickedButton.text = Option.text
			Option.button_pressed = false
			break
		iterator += 1


func CheckAnswer(Num:int):
	if GivenAnswer == Questions[Num][-1]:
		return true
	else:
		return false


func _on_next_question_pressed() -> void:
	if CheckAnswer(QuestionNumber):
		$Score.text = ""
		if QuestionNumber < Questions.size() - 1:
			PrepareQuestion(QuestionNumber+1)
			QuestionNumber+=1
			$QuestionNumber.text = str(QuestionNumber+1) + "/" + str(Questions.size())
		else:
			$Score.text = "Done!"
	else:
		$Score.text = "Incorrect"
	GivenAnswer = []
