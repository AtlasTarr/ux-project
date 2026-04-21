extends Panel

@export var tool_source: tool_resource
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$MarginContainer/VBoxContainer/Label.text = tool_source.tool_name
