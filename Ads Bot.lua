--Ads-Bot v1.1
--by EmEx
--Link to Original thread: http://ankulua.boards.net/thread/152/update-v1-view-ads-bot

setImmersiveMode(true)

clicks = {}

dialogInit()
addTextView(" ")
newRow()
addTextView("How many click location?")
newRow()
addEditNumber("clicknum", 5 )
addTextView("click location")
newRow()
addTextView(" ")
newRow()
addTextView("After which click the ADS appears?")
newRow()
addEditNumber("adsnum", 1 )
addTextView("click")
dialogShow("Ads Bot")



dialogInit()
clicknum=tonumber(clicknum)
for i = 1, clicknum do
	addTextView("Click#"..i.."    ")
	addTextView("X:")
	addEditNumber("xcord"..i,0)
	addTextView("Y:")
	addEditNumber("ycord"..i,0)
	addTextView("Wait:")
	addEditNumber("wait"..i,0)
newRow()

if i == adsnum then
addTextView("               Ads appear here.")
newRow()
end
end

dialogShow("Click settings")

for i=1,clicknum do
	clicks[i] = {location =Location (_G["xcord"..i], _G["ycord"..i]), wait=_G["wait"..i]}
end


while true do
	for i=1,#clicks do
  loc = clicks[i].location
		if i==adsnum then
    click(loc)
    
repeat

	local regClose = Region(1190, 0, 250, 2560)
	local regClose2 = Region(0, 0, 250, 2560)

        Settings:set("MinSimilarity", 0.65)
	local i1=regClose:existsClick("X1.png", 0)
	local i2=regClose:existsClick("X2.png", 0)
	local i3=regClose:existsClick("X3.png", 0)
	local i4=regClose2:existsClick("X1.png", 0)
	local i5=regClose2:existsClick("X2.png", 0)
	local i6=regClose2:existsClick("X3.png", 0)

     until i1 or i2 or i3 or i4 or i5 or i6 == true

		else
		 
click(loc)
		end
		wait(clicks[i].wait)
	end
end
