extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	MusicController.load_tracks()
	MusicController.switch_track("HypnoticChill.mp3")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_start_pressed():
	MusicController.switch_track("song18.ogg")
	get_tree().change_scene_to_file("res://play_game.tscn")


func _on_credits_pressed():
	get_tree().change_scene_to_file("res://credits.tscn")


func _on_exit_pressed():
	get_tree().quit()
