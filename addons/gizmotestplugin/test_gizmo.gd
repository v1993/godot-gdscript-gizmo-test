@tool
class_name TestGizmo
extends EditorNode3DGizmo

func _redraw() -> void:
	clear()
	print("Redrawing the gizmo!")
	
	var points: Array[Vector3] = [
		Vector3(1.0, 0.0, 0.0),
		Vector3(0.0, 1.0, 0.0),
		Vector3(0.0, 0.0, 1.0),
	]
	
	var test_lines := PackedVector3Array([
		points[0], points[1],
		points[1], points[2],
		points[2], points[0],
	])

	add_lines(test_lines, get_plugin().get_material("lines"))
