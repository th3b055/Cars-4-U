class Quiz
	attr_accessor :score

	def initialize
		@score = 0
	end

	def add_point
		@score += 10
	end
end