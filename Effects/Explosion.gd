extends AnimatedSprite


func _ready():
	play("defualt") 


func _on_Explosion_animation_finished():
	queue_free()
