extends Panel

@export var game_details: Game_page

const TOOL_PANEL = preload("uid://cgcqbsrui3u0")
const TOOL_BUTTON = preload("uid://i4vicnhp5seb")

@onready var tool_container: MarginContainer = $MarginContainer/MarginContainer
@onready var home_tool_buttons: VBoxContainer = $MarginContainer/MarginContainer/Home/MarginContainer/HBoxContainer/VBoxContainer/VBoxContainer


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$MarginContainer/VBoxContainer/HBoxContainer/GameLabel.text = game_details.game_name
	for tool in game_details.tools:
		var new_tool_page = TOOL_PANEL.instantiate()
		new_tool_page.tool_source = tool
		new_tool_page.name = tool.tool_name
		var new_tool_button = TOOL_BUTTON.instantiate()
		new_tool_button.text = tool.tool_name
		home_tool_buttons.add_child(new_tool_button)
		tool_container.add_child(new_tool_page)

func toggle():
	for tool in $MarginContainer/MarginContainer.get_children():
		if tool.is_in_group("Tool_group"):
			tool.visible = false
