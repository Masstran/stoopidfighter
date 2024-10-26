extends Sprite2D

var base_node
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	base_node = get_parent()
	if base_node.direction == base_node.DIRECTION.LEFT:
		scale.x *= -1

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
