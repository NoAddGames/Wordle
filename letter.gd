extends Node2D

@export var letter = "#"
@export var row = 0
@export var column = 0

var size = 55
var space = 5
var spacing = size + space

# Called when the node enters the scene tree for the first time.
func _ready():
	$Button.text = letter
	$Button.size.x = size
	$Button.size.y = size
	$Button.position.x = float((column * spacing) + ((spacing/2)*row))
	$Button.position.y = float(row * spacing)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass


func _on_button_pressed():
	print(letter, row, column)
