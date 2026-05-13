@tool
extends EditorPlugin

var test_gizmo_plugin: TestGizmoPlugin = null

func _enter_tree() -> void:
	test_gizmo_plugin = TestGizmoPlugin.new()
	add_node_3d_gizmo_plugin(test_gizmo_plugin)

func _exit_tree() -> void:
	remove_node_3d_gizmo_plugin(test_gizmo_plugin)
