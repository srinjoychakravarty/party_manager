module ApplicationHelper
	
	def title
		base_title = "Party Manager"
			if @title.nil?
			base_title
			else
			"#{base_title} | #{@title}"
		end
	end
	
	def gravatar_for email, options = {}
    options = {:alt => 'avatar', :class => 'avatar', :size => 80}.merge! options
    id = Digest::MD5::hexdigest email.strip.downcase
    url = 'http://www.gravatar.com/avatar/' + id + '.jpg?s=' + options[:size].to_s
    options.delete :size
    image_tag url, options
	end

end
