extends Actor


func _ready():
	_velocity.y = 0


func _on_StompDetector_body_entered(body):
	if body.global_position.y > get_node("StompDetector").global_position.y:
		return
	get_node("CollisionShape2D1").disabled = true
	queue_free()


func _physics_process(delta):
	_velocity.y += gravity * delta
	if is_on_floor():
		_velocity.y = -speed.y
	_velocity.y = move_and_slide(_velocity, FLOOR_NORMAL).y
