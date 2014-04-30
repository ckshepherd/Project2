

oldState = "none"
currentState = "none"

function stateDrawCurrentState()
	if currentState == "Game" then
		GameDraw()
	elseif currentState == "Menu" then
		MenuDraw()
	end
end

function stateGetCurrentStateInput()
	if currentState == "Game" then
		GameDoInput()
	elseif currentState == "Menu" then
		MenuDoInput()
	end
end

function switchState(state)
	if currentState ~= state then
		oldState = currentState

		if oldState == "Game" then
			GameShutdown()

		elseif oldState == "Menu" then
			MenuShutdown()
		end

		currentState = state

--		if currentState == "Game" then
--			GameSetup()
--		elseif currentState == "Menu" then
--			MenuSetup()
--		end
	end
end




