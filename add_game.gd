extends Panel

func _on_button_3_pressed() -> void:
	if FileAccess.file_exists(str($MarginContainer/VBoxContainer/Panel/VBoxContainer/LineEdit.text,".tres")):
		var res = load(str($MarginContainer/VBoxContainer/Panel/VBoxContainer/LineEdit.text,".tres"))
		if res is Game_page:
			owner.create_new_page(res)
			self.visible = false
		else:
			$VBoxContainer/HBoxContainer/Label2.text = str($MarginContainer/VBoxContainer/Panel/VBoxContainer/LineEdit.text, " page does not exist.")
	else:
		$VBoxContainer/HBoxContainer/Label2.text = str($MarginContainer/VBoxContainer/Panel/VBoxContainer/LineEdit.text, " page does not exist.")


func _on_button_4_pressed() -> void:
	self.visible = false
