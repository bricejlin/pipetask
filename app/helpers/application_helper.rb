module ApplicationHelper
	def approve_text(approvable)
		approvable.approved? ? 'un-approve' : 'approve'
	end
end


