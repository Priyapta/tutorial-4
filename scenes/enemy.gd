extends RigidBody2D


@export var texture: Texture2D

func _ready():
	$Sprite2D.texture = texture


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name == "Player":
		
		get_tree().reload_current_scene() # Replace with function body.
