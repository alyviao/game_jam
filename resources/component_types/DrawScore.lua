DrawScore = {

		font_name = "NotoSans-Regular",
		str_content = "hi",
		x = 100,
		y = 100,
		g = 0,
		r = 0, 
		g = 0,
		b = 0, 
		a = 0,
		font_size = 40,
		score = 0,

	OnUpdate = function(self)
		self.str_content = "Score: " .. self.score
		Text.Draw(self.str_content, self.x, self.y, self.font_name, self.font_size, self.r, self.g, self.b, self.a)
	
	end
}