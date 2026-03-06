extends Node2D

@export var obstacle : PackedScene
@export var last_obstacle : PackedScene


var spawn_time := 10.0
var spawning := true
func _ready():
	repeat()

func spawn_obstacle():
	var spawned = obstacle.instantiate()
	var markers = [$Marker2D, $Marker2D2]
	var marker = markers.pick_random()

	spawned.global_position = marker.global_position
	get_parent().add_child.call_deferred(spawned)


func spawn_last():
	var spawned = last_obstacle.instantiate()
	spawned.global_position = $Marker2D2.global_position
	get_parent().add_child(spawned)


func repeat():
	while spawning:
		
		spawn_obstacle()
		await get_tree().create_timer(0.6).timeout
	
	print("test")
	# setelah 10 detik spawn object terakhir
	


func _on_timer_timeout() -> void:
	spawning = false
	await get_tree().create_timer(2).timeout
	spawn_last()
