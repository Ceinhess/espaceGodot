extends Sprite2D



# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	texture.noise.offset = Vector3(get_parent().position.x/3,get_parent().position.y/3,0) 
	
	rotation = -get_parent().rotation
