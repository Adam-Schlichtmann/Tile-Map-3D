extends Label


@onready var blocks = $Blocks
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	blocks.atlas_x
