extends Button
class_name recent_button

@export var game: game_button
@export var tool: tool_button

func _ready():
	connect("pressed", game._on_pressed)
	connect("pressed", tool._on_pressed)
