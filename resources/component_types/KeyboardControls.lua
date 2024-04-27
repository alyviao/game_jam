KeyboardControls = {
	speed = 5,
	jump_power = 150,
	OnStart = function(self)
		self.rb = self.actor:GetComponent("Rigidbody")
	end,
	OnUpdate = function(self)
		-- Horizontal
		local horizontal_input = 0
		Debug.Log(self.controller_id)
		if Input.GetKey("right") then
			horizontal_input = self.speed
		elseif Input.GetKey("left") then
			horizontal_input = -1 * self.speed
		end
		local vertical_input = 0
		if Input.GetKeyDown("up") or Input.GetKeyDown("space") then
			vertical_input = -1* self.jump_power
		end
		self.rb:SetVelocity(Vector2(horizontal_input, vertical_input))
	end
}

