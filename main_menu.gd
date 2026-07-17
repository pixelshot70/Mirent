extends Control

func _ready():
	# Биндим твои кнопки на переключение сцен
	$Play.pressed.connect(func(): get_tree().change_scene_to_file("res://server_menu.tscn"))
	$Settings.pressed.connect(func(): get_tree().change_scene_to_file("res://settings.tscn"))
	$Quit.pressed.connect(func(): get_tree().quit())
