module AdminHelper
	def receivable(sides)
		if sides == 3
			number_to_currency(3 * sides_pipe_count(sides, 'approved'))
		elsif sides = 9
			number_to_currency(4 * sides_pipe_count(sides, 'approved'))
		end
	end

	def sides_pipe_count(sides, status='all')
		if status == 'approved'
			@pipes.where(sides_shot: sides, approved: true).count
		elsif status == 'unapproved'
			@pipes.where(sides_shot: sides, approved: false).count
		else
			@pipes.where(sides_shot: sides).count
		end
	end
end
