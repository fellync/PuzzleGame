extends Area2D
var tilesize
@onready var tileset:TileMapLayer
var map_position = Vector2.ONE
var inputvector

func _ready() -> void:
	await get_tree().physics_frame
	print(position)

func _physics_process(delta: float) -> void:
	inputvector = Input.get_vector("Right","Left","Up","Down")
	

	move()
	if $Timer.is_stopped()&&inputvector!=Vector2.ZERO:
		$RayCast2D.target_position = inputvector*tilesize
		await get_tree().physics_frame
		if $RayCast2D.is_colliding():
			pass
		else:	
			$Timer.start()
			map_position.x+=Input.get_axis("Right","Left")
			map_position.y+=Input.get_axis("Up","Down")
			
		#print(Vector2(Input.get_axis("Right","Left")*tilesize,Input.get_axis("Up","Down")*tilesize))
	
func move():
	var tween = get_tree().create_tween()
	tween.tween_property(self, "position", tileset.map_to_local(map_position), 0.25).set_trans(Tween.TRANS_CUBIC).set_ease(Tween.EASE_OUT)
