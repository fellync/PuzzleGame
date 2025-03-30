extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$ActualPlayer.tilesize=$Walls.tile_set.tile_size.x
	$Walls.Player=$ActualPlayer
	$ActualPlayer.tileset = $Walls


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
