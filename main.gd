extends Node

var speed = 400

func _process(delta):
	var pos_x = $Player.position.x - 400
	var pos_y = $Player.position.y - 300
	$Camera2D.position = Vector2(pos_x, pos_y)
