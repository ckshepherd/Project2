
require "conf"
require "introstate"
require "menustate"
require "gamestate"
require "statesystems"
require "menubuttons"

require "gamestate"
require "menustate"
require "statesystems"
require "introstate"
require "menubuttons"

function love.load()

	switchState("Intro")

	title = love.graphics.newImage ("images/hologram18.jpg")
	logo = love.graphics.newImage ("images/Shepherd001.jpg")

	love.graphics.setBackgroundColor(0,0,0)

	if currentState == "Menu" then
	button_spawn(375, 175, "Start", "start")
	button_spawn(375, 475, "Quit", "quit")
	end

	small = love.graphics.newFont(25)
	medium = love.graphics.newFont(50)
	large = love.graphics.newFont(80)

	TitleScreen.start()
--  if arg[#arg] == "-debug" then require("mobdebug").start() end

end

function love.update(dt)

	mousex = love.mouse.getX()
	mousey = love.mouse.getY()

	if currentState == "Intro" then
		TitleScreen.update(dt)
	end

	if currentState == "Menu" then
		button_check()
	end


--		stateDrawCurrentState()
--		stateGetCurrentStateInput()

end

function love.draw()

	if currentState == "Intro" then
		TitleScreen.draw()
	end

	if currentState == "Menu" then
		button_draw()
	end

	if currentState == "Game" then
		love.graphics.setFont(small)
		love.graphics.print("Temp Game State", 325, 275)
	end
end

function love.mousepressed(x,y,button)

	if currentState == "Menu" then
		button_click(x,y)
	end
end

