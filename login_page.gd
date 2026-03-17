extends Control
var user_logged_in:bool = false

const USER_DICT = preload("res://User_dict.tres")


@onready var _User: LineEdit = $Panel/MarginContainer/VBoxContainer/Panel/VBoxContainer/LineEdit
@onready var _password: LineEdit = $Panel/MarginContainer/VBoxContainer/Panel/VBoxContainer/LineEdit2
@onready var User_indicator: Label = $Panel/VBoxContainer/HBoxContainer/Label2

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("Login Button"):
		_on_button_3_pressed()

func _on_button_3_pressed() -> void:
	var user_exists:bool = false
	var logged_in: bool = false
	var users = USER_DICT.get("User_ref").get("User_resources")
	for _user in users.size():
		if user_exists == false:
			if users[_user].name == _User.text:
				user_exists = true
			if users[_user].password == _password.text:
				logged_in = true
			else:
				pass
	if !user_logged_in:
		if !user_exists:
			User_indicator.text = str("user doesn't exist")
		if user_exists && logged_in:
			user_logged_in = true
			User_indicator.text = str("logged in as: ", _User.text)
		elif user_exists && !logged_in:
			User_indicator.text = str("failed to login")


func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://create user.tscn")
