
TitleScreen = {}

function TitleScreen.start()
  self.objects = {}
  self.co = coroutine.wrap(function()
    wait(1)
    self.objects[1] = CompanyLogo:new()
    wait(2)
    self.objects[1] = nil
    wait(1)
    self.objects[1] = GameLogo:new()
--    wait(0.5)
--    self.objects[2] = GameSubtitle.new()
    wait(10)
    switchState("Menu")
	end)
end

function TitleScreen.update(dt)
  self.co(dt)
end

function TitleScreen.draw()
  for i = 1, #self.objects do
    self.objects[i].draw()
  end
end

function wait(seconds)
  while seconds > 0 do
    seconds = seconds - coroutine.yield(true)
  end
end  