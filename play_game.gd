extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var mov = Input.get_vector("left", "right", "up", "down")
	$Player.position.x += mov.x
	$Player.position.y += mov.y


func _entered(area):
	MusicController.switch_track("HypnoticChill.mp3")
	get_tree().change_scene_to_file("res://start.tscn")
