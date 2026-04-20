extends Control

const USER_DICT = preload("res://User_dict.tres")


@onready var _User: LineEdit = $Panel/MarginContainer/VBoxContainer/Panel/VBoxContainer/LineEdit
@onready var _password: LineEdit = $Panel/MarginContainer/VBoxContainer/Panel/VBoxContainer/LineEdit2
@onready var User_indicator: Label = $Panel/VBoxContainer/HBoxContainer/Label2

func _process(delta: float) -> void:
	if Input.is_action_just_pressed("Login Button"):
		_on_button_3_pressed()

func _on_button_3_pressed() -> void:
	save_user()



func save_user():
	var user_exists:int = -1
	var users = USER_DICT.get("User_ref").get("User_resources")
	user_exists = users.find(_User.text)
	if user_exists < 0:
		var new_user = user.new()
		new_user.name = _User.text
		new_user.password = _password.text
		ResourceSaver.save(new_user,str("res://",_User.text,".tres"))
		var new_users_dict = USER_DICT.duplicate()
		var dict = new_users_dict.get("User_ref").get("User_resources")
		var new_user_reference = ResourceLoader.load(str("res://",_User.text,".tres"))
		var new_user_object = Object.new()
		new_user_object = new_user_reference
		dict.append(new_user_object)
		ResourceSaver.save(new_users_dict, "res://User_dict.tres")
		get_tree().change_scene_to_file("res://control.tscn")
	else:
		print("user_exists")
