-----------------------------------------------------------------------------------------
--
-- main.lua
--
-- Created by: Sebastian N
-- Created on: February 23
--
-- This program calculates de area of a trapezoid
-----------------------------------------------------------------------------------------

-- Background and tittle
display.setDefault('background', 0.1, 0.5, 0.1)
local myTittle = display.newText('Please enter the data in centimeters', 985, 180, native.SystemFont, 100)

local lengthOfBaseA 
local lengthOfBaseB
local lengthOfHeight
local trapezoidArea 

-- Base A
local lengthATextField = native.newTextField(650, 400, 200, 100)
lengthATextField.id = 'length base A'
local lengthAText = display.newText('Base a: ', 350, 400, native.SystemFont, 100)

-- Base B
local lengthBTextField = native.newTextField(650, 650, 200, 100)
lengthBTextField.id = 'length base b'
local lengthBText = display.newText('Base b: ', 350, 650, native.SystemFont, 100)

-- Height
local lengthHeightTextField = native.newTextField(650, 900, 200, 100)
lengthHeightTextField.id = 'lenght height'
local lengthHeightText = display.newText('Height: ', 350, 900, native.SystemFont, 100)

-- Image
local initiateButton = display.newImageRect('Assets/Sprites/enterButton.png', 406, 157)
initiateButton.x = display.contentCenterX/2
initiateButton.y = display.contentCenterY + 400
initiateButton.id = 'intiation Button'

local function areaOfTrapezoid(event)
	lengthOfBaseA = lengthATextField.text
	lengthOfBaseB = lengthBTextField.text 
	lengthOfHeight = lengthHeightTextField.text
	trapezoidArea = ((lengthOfBaseA + lengthOfBaseB)/2)*lengthOfHeight
	print(trapezoidArea)
	local areaText = display.newText('The area of the\n trapezoid is:\n '.. trapezoidArea .. 'cm^2', 1536, 500, native.SystemFont, 100)

	return true
end

initiateButton: addEventListener('touch', areaOfTrapezoid)


