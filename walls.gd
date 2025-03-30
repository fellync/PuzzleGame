extends TileMapLayer
var Player

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	ismove(Player.position)


func ismove(pos):
	#print(get_cell_atlas_coords(local_to_map(pos)))
	return get_cell_atlas_coords(local_to_map(pos))
	
