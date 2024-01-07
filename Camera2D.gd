extends Camera2D

var SPEED = 100
var ROTATION_SPEED = 5
var zoom_depth = 1

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if (Input.is_action_pressed("move_up")):
		move_local_y(-delta * SPEED)
	elif (Input.is_action_pressed("move_down")):
		move_local_y(delta * SPEED)
	elif (Input.is_action_pressed("move_left")):
		move_local_x(-delta * SPEED)
	elif (Input.is_action_pressed("move_right")):
		move_local_x(delta * SPEED)
	elif (Input.is_action_pressed("rotate_clockwise")):
		rotate(ROTATION_SPEED)
	elif (Input.is_action_pressed("rotate_counter_clockwise")):
		rotate(ROTATION_SPEED)
	elif (Input.is_action_just_released('mouse_wheel_up')):
		zoom_depth += 1
		set_zoom(Vector2(zoom_depth,zoom_depth))
	elif (Input.is_action_just_released('mouse_wheel_down')):
		if (zoom_depth - 1 > 1):
			zoom_depth -= 1
		else: 
			zoom_depth = 1
		set_zoom(Vector2(zoom_depth,zoom_depth))
