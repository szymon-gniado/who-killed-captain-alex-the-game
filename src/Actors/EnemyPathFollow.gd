extends Actor


onready var follow: PathFollow2D = get_parent()


func _ready():
	set_process(true)


func _physics_process(delta):
	follow.set_offset(follow.get_offset() + speed.x * delta)
