GameManager = {

	-- TILE CODES --
	-- 0 : nothing
	-- 1 : Static box
	-- 2 : player
	-- 3 : strawberry
	-- 4 : player2

	stage1 = {
		{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1}, -- 20x19
		{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1},
		{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1},
		{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1},
		{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1},
		{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1},
		{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1},
		{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1},
		{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1},
		{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1},
		{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1},
		{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1},
		{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1},
		{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1},
		{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 3, 3, 0, 0, 0, 0, 0, 1},
		{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1},
		{0, 0, 0, 0, 3, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1},
		{0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1},
		{0, 2, 4, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1},
		{1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
	},
	OnStart = function(self)
		local controller = 0

		-- Spawn stage
		for y=1,20 do 
			for x = 1,20 do
				local tile_code = self.stage1[y][x]
				local tile_pos = Vector2(x, y)

				if tile_code == 1 then 
					local new_tile = Actor.Instantiate("Ground_Tile")
					local new_tile_rb = new_tile:GetComponent("Rigidbody")
					if x ~= 10 then
						new_tile_rb.has_collider = false
					else 
						Debug.Log("setting width")
						new_tile_rb.width = 19
					end
		

					new_tile_rb.x = tile_pos.x
					new_tile_rb.y = tile_pos.y
				elseif tile_code == 2 then
					Debug.Log("instantiating player")

					local new_player = Actor.Instantiate("player")
					local new_player_rb = new_player:GetComponent("Rigidbody")
					-- CONTROLLER API
					-- local new_player_controls = new_player:GetComponent("ControllerControls")
					-- new_player_controls.controller_id = controller
					-- controller = controller+1

					new_player_rb.x = tile_pos.x
					new_player_rb.y = tile_pos.y
				elseif tile_code == 3 then
					local new_strawberry = Actor.Instantiate("Strawberry")
					local new_strawberry_rb = new_strawberry:GetComponent("Rigidbody")
					new_strawberry_rb.x = tile_pos.x
					new_strawberry_rb.y = tile_pos.y
				elseif tile_code == 4 then
					Debug.Log("instantiating player 2")
					local new_player2 = Actor.Instantiate("player2")
					local new_player2_rb = new_player2:GetComponent("Rigidbody")
					new_player2_rb.x = tile_pos.x
					new_player2_rb.y = tile_pos.y

				elseif tile_code == 5 then
					local new_tile = Actor.Instantiate("Stem")
					local new_tile = new_tile:GetComponent("Rigidbody")
					new_tile.x = tile_pos.x
					new_tile.y = tile_pos.y

				end
		
			end
		end
	end,

	OnUpdate = function(self)
		
	end
}

