module ApplicationHelper

# Return a tittle on per page basis
def title
	base_title="Ruby on rails sample application"
	if @title.nil?
		base_title
	else
		"#{base_title} | #{@title}"
	end
	
end

end
