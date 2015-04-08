-----------------------------------------------------------------------------------------
--
-- main.lua
-- 本範例示範如何使用Widget中的newButton API
-- Author: Zack Lin
-- Time:2015/4/8
-----------------------------------------------------------------------------------------

--=======================================================================================
--引入各種函式庫
--=======================================================================================
display.setStatusBar( display.HiddenStatusBar )

local widget = require("widget")
--=======================================================================================
--宣告各種變數
--=======================================================================================
_SCREEN = {
	WIDTH = display.viewableContentWidth,
	HEIGHT = display.viewableContentHeight
}
_SCREEN.CENTER = {
	X = display.contentCenterX,
	Y = display.contentCenterY
}

local label
local btn1
local btn2

local initial
local handleButtonEvent
--=======================================================================================
--宣告與定義main()函式
--=======================================================================================
local main = function (  )
	initial()
end

--=======================================================================================
--定義其他函式
--=======================================================================================
initial = function (  )
	label = display.newText( "別亂按", 0,  0, system.nativeFont, 40 )
	label.x = _SCREEN.CENTER.X
	label.y = _SCREEN.CENTER.Y - 150

	btn1 = widget.newButton{
		id = "btn1",
		width = 220,
	    height = 100,
	    defaultFile = "images/btn_normal.png",
	    overFile = "images/btn_over.png",
	    label = "請按我",
	    fontSize = 30,
	    onEvent = handleButtonEvent
	}
	btn1.x = _SCREEN.CENTER.X
	btn1.y = _SCREEN.CENTER.Y + 100

	btn2 = widget.newButton{
		id = "btn2",
		width = 80,
		height = 80,
		defaultFile = "images/Button1.png",
		overFile = "images/Button1Pressed.png",
		onEvent = handleButtonEvent
	}
	btn2.x = _SCREEN.CENTER.X
	btn2.y = _SCREEN.CENTER.Y + 300
end

handleButtonEvent = function ( event )
	if ("btn1" == event.target.id) then
		label.text = "你按了btn1"
	elseif ("btn2" == event.target.id) then
		label.text = "你按了btn2"
	end
end
--=======================================================================================
--呼叫主函式
--=======================================================================================
main()