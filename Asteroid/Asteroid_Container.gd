extends Node2D

onready var Asteroid = load("res://Asteroid/Asteroid.tscn")
var positions = [Vector2(1000,300), Vector2(800,100), Vector2(900,1000), Vector2(2000,900), Vector2(50,100), Vector2(500,600), Vector2(950,1200)]

func _physics_process(_delta):
	if get_child_count() < 8:
		var asteroid = Asteroid.instance()
		asteroid.position = positions[randi() % positions.size()] 
		add_child(asteroid) 
