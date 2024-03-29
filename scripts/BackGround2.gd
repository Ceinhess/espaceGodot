extends Sprite2D



# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func zoom():
	texture.noise.frequency /= 2
	scale /= 2
	
func dezoom():
	texture.noise.frequency *= 2
	scale *= 2
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	var zoomvalue = 4/scale.x
	
	texture.noise.offset = Vector3(get_parent().position.x * zoomvalue, get_parent().position.y * zoomvalue,0) 
	
	rotation = -get_parent().rotation
