extends Button

func _on_pressed() -> void:
	get_parent().get_parent().get_parent().get_parent().toggle()
	for child in get_parent().get_parent().get_children():
		if child.name == self.text:
			child.visible = true
