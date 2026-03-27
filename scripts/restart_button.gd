extends LinkButton





func _on_pressed() -> void:
	print(Global.last_level)
	get_tree().change_scene_to_file("res://scenes/" + Global.last_level + ".tscn")
