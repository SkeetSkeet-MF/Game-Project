extends Spatial

var mesh_instance
var noise
var x
var z
var chunk_size

func _init(noise, x, z, chunk_size):
	
	self.noise = noise
	self.x = x
	self.z = z
	self.chunk_size = chunk_size
	
func _ready():
	generate_chunk()
	
func generate_chunk():

	var plane_mesh = PlaneMesh.new()
	plane_mesh.size = Vector2(chunk_size, chunk_size)
	plane_mesh.subdivide_depth = chunk_size * 0.5
	plane_mesh.subdivide_width = chunk_size * 0.5
	
	# TODO give a material
	
	var surface_tool = SurfaceTool.new()

