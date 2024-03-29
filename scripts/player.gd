extends CharacterBody2D


var rotation_velocity = 0 # - = left, + = right
var speed
# Called when the node enters the scene tree for the first time.
func _ready():
	speed = 0
	
	pass # Replace with function body.

func dezoom():
	$Camera2D.zoom /= 2

func zoom():
	$Camera2D.zoom *= 2

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	
	if Input.is_action_pressed("player_back"):
		speed -= 1
		
	if Input.is_action_pressed("player_forward"):
		speed += 1
		print(speed)
		
	if Input.is_action_pressed("player_left"):
		rotation_velocity -= 0.01
		
	if Input.is_action_pressed("player_right"):
		rotation_velocity += 0.01
		
	if Input.is_action_pressed("brake"):
		speed *= 0.9
	
	
	rotation_velocity *= 0.8
	rotation += rotation_velocity
	
	set_velocity(Vector2(1,0).rotated(rotation) * speed)
	

	
	move_and_slide()
	
	pass
