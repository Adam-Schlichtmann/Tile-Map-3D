extends TileMap

class_name Blocks

@export var atlas_x = 0
@export var atlas_y = 0

var MAX_Y = 64
var MAX_X = 17
var MAX_LAYER = 2

func _process(_delta):
	if (Input.is_action_just_pressed("atlas_y_up")):
		atlas_y += 1 if atlas_y < MAX_Y else 0
	elif (Input.is_action_just_pressed("atlas_y_down")):
		atlas_y -= 1 if atlas_y > 0 else 0
	elif (Input.is_action_just_pressed("atlas_x_up")):
		atlas_x += 1 if atlas_x < MAX_X else 0
	elif (Input.is_action_just_pressed("atlas_x_down")):
		atlas_x -= 1 if atlas_x > 0 else 0
	else:
		var tile = local_to_map(get_local_mouse_position())
		if (Input.is_action_pressed("add_block")):
			set_cell(0, tile, 0, Vector2(atlas_x, atlas_y), 0) 	
		elif (Input.is_action_pressed("remove_block")):
			erase_cell(0, tile) 
