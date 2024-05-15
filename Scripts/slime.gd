extends Node2D
@onready var ray_cast_right = $RayCastRight
@onready var ray_cast_left = $RayCastLeft
@onready var animated_sprite = $AnimatedSprite2D

const SPEED = 60

var direction = 1
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	if ray_cast_left.is_colliding(): _flip()
	if ray_cast_right.is_colliding(): _flip()
		
	position.x += direction * delta * SPEED
	
func _flip():
	direction = -direction
	animated_sprite.flip_h = !animated_sprite.flip_h
