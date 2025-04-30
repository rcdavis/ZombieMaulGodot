extends Area2D

@export var speed = 200

func _ready():
	$AnimatedSprite2D.play("walk")

func _process(delta):
	if Input.is_action_pressed("turn_right"):
		rotation_degrees += 180.0 * delta
	if Input.is_action_pressed("turn_left"):
		rotation_degrees -= 180.0 * delta

	var velocity = Vector2(0.0, -1.0)
	position += velocity.rotated(rotation) * speed * delta
