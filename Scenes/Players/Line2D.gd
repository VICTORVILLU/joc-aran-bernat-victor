extends Line2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	add_point(get_parent().global_position)
	if points.size() > 15:
		remove_point(0)
