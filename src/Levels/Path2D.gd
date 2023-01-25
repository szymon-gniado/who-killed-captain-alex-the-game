extends Path2D


onready var follow = get_node("PathFollowEnemy")

func _ready():
	set_process(true)
	

func _physics_process(delta):
	follow.set_offset(follow.get_offset() + 350 * delta)
