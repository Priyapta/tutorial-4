extends AnimationPlayer

func _ready() -> void:
	play("RESET")  # langsung main saat scene masuk

func _on_animation_finished(anim_name: String) -> void:
	if anim_name == "zoom_in":
		get_tree().change_scene_to_file("res://scenes/Level 1.tscn")
