

button = {}

function button_spawn(x,y,text,id)

	table.insert(button, {x = x, y = y, text = text, id = id, mouseover = false})
end

function button_draw()
-- Table hint. i = index, v = value. Use v like a pointer.
	for i,v in ipairs(button) do
	
		if v.mouseover == false then
			love.graphics.setColor(255,255,255)
		end
		if v.mouseover == true then
			love.graphics.setColor(0, 255, 255)
		end
		
		love.graphics.setFont(medium)
		love.graphics.print(v.text,v.x,v.y)
	end
end

function button_click(x,y)
	
	for i,v in ipairs(button) do
		
		if x > v.x and 
		x < v.x + medium:getWidth(v.text) and
		y > v.y and
		y < v.y + medium:getHeight() then
			
			if v.id == "quit" then
				love.event.quit()
			end
			
			if v.id == "start" then
				love.graphics.clear()
				currentState = "Game"
			end
		end
	end
end	

function button_check()
	
	for i,v in ipairs(button) do	
		
		if mousex > v.x and
		mousex < v.x + medium:getWidth(v.text) and 
		mousey > v.y and
		mousey < v.y + medium:getHeight() then
			v.mouseover = true
		else
			v.mouseover = false
		end
	end
end