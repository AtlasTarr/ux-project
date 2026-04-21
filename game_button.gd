extends Button
class_name game_button

func _on_pressed() -> void:
	get_parent().get_parent().get_parent().get_parent().toggle()
	for child in get_parent().get_parent().get_children():
		if child.name == self.text:
			child.visible = true
	print("pressed: ", self.text)
