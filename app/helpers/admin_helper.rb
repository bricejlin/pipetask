module AdminHelper
	def pipes_with_sides(sides)
		@pipes.where(sides_shot: sides).count
	end
end
