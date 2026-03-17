extends Control
@onready var HomePanel: Panel = $ColorRect/Panel/Panel
@onready var panel_2: Panel = $ColorRect/Panel/Panel2


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_button_pressed() -> void:
	HomePanel.visible = true
