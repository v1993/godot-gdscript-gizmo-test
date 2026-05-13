@tool
class_name TestGizmoPlugin
extends EditorNode3DGizmoPlugin

func _init() -> void:
	create_material("lines", Color(1.0, 1.0, 1.0, 1.0))

func _get_gizmo_name() -> String:
	return "TestGizmo"

func _create_gizmo(for_node_3d: Node3D) -> EditorNode3DGizmo:
	if for_node_3d is TestNode:
		return TestGizmo.new()
	else:
		return null
