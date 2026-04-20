extends Panel

@export var game_details: Game_page
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$MarginContainer/VBoxContainer/GameLabel.text = game_details.game_name
	$MarginContainer/VBoxContainer/Label.text = game_details.game_description
