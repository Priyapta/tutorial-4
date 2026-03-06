extends Area2D

@export var scene_name: String = "level_2"


func _on_body_entered(body: Node2D) -> void:
	if body.get_name() == "Player":
		print("test")
		var scene_path := "res://scenes/%s.tscn" % scene_name
		get_tree().change_scene_to_file(scene_path)
