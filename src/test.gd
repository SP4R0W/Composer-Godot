extends Node2D

func _ready():
	print("I, "+ name +" have been created and my parent is " + get_parent().name)

func _exit_tree():
	print("I, "+ name +"have been removed and my parent was " + get_parent().name)
