module ApplicationHelper
	def approve_text(approvable)
		approvable.approved? ? 'approved' : 'approve'
	end
end


