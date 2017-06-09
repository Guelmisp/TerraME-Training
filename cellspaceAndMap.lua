space = CellularSpace{
    xdim = 10
}

print(#space) -- 100 Cells
print(type(space:sample())) -- "Cell"

cell = Cell{
    state = Random{min=1, max=3},
    value = function (self)
    	return self.x * self.state
	end
}

space2 = CellularSpace{
    instance = cell,
    xdim = 60
}

map = Map{
    target = space2,
    select = "value",
    min = 0,
    max = 90,
    slices = 5,
    color = "BrBG"
}

amazonia = CellularSpace {
	file = filePath("amazonia.shp", "base"),
	xy = {"col", "row"},
	as = {defor = "defor_1"}
}

Map {
	target = amazonia,
	select = "defor",
	min = 0,
	max = 1,
	slices = 8,
	color = "RdYlGn",
	invert = true 
}

