SceneChangeOnSpace = { 
	OnUpdate = function(self)
		if Input.GetKeyDown("space") then
			Debug.Log("Click")
			Scene.Load("basic")
		end
		
		
	end
}