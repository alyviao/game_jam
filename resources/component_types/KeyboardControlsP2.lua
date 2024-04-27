KeyboardControlsP2 = {
	speed = 5,
	jump_power = 150,
	OnStart = function(self)
		self.rb = self.actor:GetComponent("Rigidbody")
		self.current_vertical = 0
		self.lerp_factor = 0.1
	end,
	OnUpdate = function(self)
		-- Horizontal
		local horizontal_input = 0
		Debug.Log(self.controller_id)
		if Input.GetKey("d") then
			horizontal_input = self.speed
		elseif Input.GetKey("a") then
			horizontal_input = -1 * self.speed
		end
		local vertical_input = 0
		if Input.GetKeyDown("w") and self.current_vertical > -.2 then
			vertical_input = -1* self.jump_power
		end
		self.current_vertical = self.current_vertical * (1 - self.lerp_factor) + vertical_input * self.lerp_factor
		Debug.Log(self.current_vertical)
		self.rb:SetRotation(0)
		self.rb:SetVelocity(Vector2(horizontal_input, self.current_vertical))
	end
}


