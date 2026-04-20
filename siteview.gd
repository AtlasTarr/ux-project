extends Control
@onready var HomePanel: Panel = $ColorRect/Panel/HomePanel
@onready var info_panel: Panel = $ColorRect/Panel/InfoPanel
@onready var contact_panel: Panel = $ColorRect/Panel/ContactPanel
@onready var create_panel: Panel = $ColorRect/Panel/CreatePanel
@onready var add_game_window: Panel = $ColorRect/Panel/Panel

@export var username: String

const GAME_BUTTON = preload("uid://c3vrnc1p4ty60")

const CUSTOM_PANEL_SCENE = preload("uid://bpv6fd73itoyk")


@onready var panel_2: Panel = $ColorRect/Panel/Panel2
@onready var profile_name: Label = $ColorRect/Panel/HomePanel/ProfileName


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$ColorRect/Panel/HomePanel/ProfileName.text = UserManager.user_name


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func toggle():
	for child in $ColorRect/Panel.get_children():
		if child.is_in_group("Page_group"):
			print(child.name)
			child.visible = false

func _on_button_pressed() -> void:
	add_game_window.visible = true

func _on_info_button_pressed() -> void:
	toggle()
	info_panel.visible = true

func _on_contact_button_pressed() -> void:
	toggle()
	contact_panel.visible = true

func _on_create_button_pressed() -> void:
	create_panel.visible = true

func create_new_page(game: Game_page):
	var new_page = CUSTOM_PANEL_SCENE.instantiate()
	var new_btn = GAME_BUTTON.instantiate()
	new_btn.text = game.game_name
	new_page.game_details = game
	new_page.name = game.game_name 
	$ColorRect/Panel.add_child(new_page)
	$ColorRect/Panel/VBoxContainer2.add_child(new_btn)

func _on_home_button_pressed() -> void:
	toggle()
	HomePanel.visible = true
