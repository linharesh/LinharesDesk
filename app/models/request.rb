class Request < ActiveRecord::Base
	validates_presence_of :title, message: 'Deve possuir um título'
	
end
