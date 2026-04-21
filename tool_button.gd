extends Button
class_name tool_button

# Called when the node enters the scene tree for the first time.


func _on_pressed() -> void:
	get_parent().get_parent().get_parent().get_parent().get_parent().get_parent().get_parent().get_parent().toggle()
	for child in get_parent().get_parent().get_parent().get_parent().get_parent().get_parent().get_children():
		if child.name == self.text:
			child.visible = true
	var _recent_button = recent_button.new()
	var game_name = get_parent().get_parent().get_parent().get_parent().get_parent().get_parent().get_parent().get_parent().name
	var game_node = get_parent().get_parent().get_parent().get_parent().get_parent().get_parent().get_parent().get_parent()
	for game in UserManager.game_path.get_children():
		if game.text == game_name:
			print("chose game: ", game)
			_recent_button.game = game
	_recent_button.tool = self
	_recent_button.text = str(game_name,": ",self.text)
	UserManager.recent_path.add_child(_recent_button)
