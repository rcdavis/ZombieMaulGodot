extends RigidBody2D

@export var speed = 150

func _ready():
	$AnimatedSprite2D.play("walk")

func _process(delta):
	var velocity = Vector2(0.0, -1.0)
	position += velocity.rotated(rotation) * speed * delta
