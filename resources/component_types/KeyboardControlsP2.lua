KeyboardControlsP2 = {
	speed = 5,
	jump_power = 400,
	OnStart = function(self)
		self.rb = self.actor:GetComponent("Rigidbody")
		self.current_vertical = 0
		self.sprite_renderer = self.actor:GetComponent("SpriteRenderer")
		self.lerp_factor = 0.1
	end,
	OnUpdate = function(self)
		-- Horizontal
		local horizontal_input = 0
		-- Debug.Log(self.controller_id)
		if Input.GetKey("d") then
			horizontal_input = self.speed
			self.sprite_renderer.scale_x = 1
		elseif Input.GetKey("a") then
			horizontal_input = -1 * self.speed
			self.sprite_renderer.scale_x = -1
		end
		local vertical_input = 0
		if Input.GetKeyDown("w") and self.current_vertical > -.2 then
			vertical_input = -1* self.jump_power
		end
		self.current_vertical = self.current_vertical * (1 - self.lerp_factor) + vertical_input * self.lerp_factor
	
		self.rb:SetRotation(0)
		self.rb:AddForce(Vector2(0, vertical_input))
		self.rb:SetVelocity(Vector2(horizontal_input, self.rb:GetVelocity().y))
	end
}


