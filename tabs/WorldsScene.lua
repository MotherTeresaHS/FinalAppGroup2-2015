-- WorldsScene
-- FinalAppGroup2-2015

-- Created by: Zacharias Octavious 
-- Created on: Dec - 2015
-- Created for: ICS2O
-- This is the worlds selector scene 

WorldsScene = class()

local homeButton
local additionWorldButton
local subtractionWorldButton
local multiplicationWorldButton
local divisionWorldButton
local sugarMountainWorldButton

function WorldsScene:init()
    -- you can accept and set parameters here
  
    homeButton = Button("Dropbox:Blue Back Rectangle Button", vec2(WIDTH/2-400, HEIGHT/2+325))
    additionWorldButton = Button("Dropbox:Teal Forward Circle Button", vec2(WIDTH/2-150, HEIGHT/2+100))
    subtractionWorldButton = Button("Dropbox:Green Forward Circle Button", vec2(WIDTH/2+150, HEIGHT/2+100))
    multiplicationWorldButton = Button("Dropbox:Purple Forward Circle Button", vec2(WIDTH/2-150, HEIGHT/2-100))
    divisionWorldButton = Button("Dropbox:Red Forward Circle Button", vec2(WIDTH/2+150, HEIGHT/2-100))
    sugarMountainWorldButton = Button("Dropbox:Yellow Forward Circle Button", vec2(WIDTH/2, HEIGHT/2))
    
    homeButton.draggable = false
    additionWorldButton.draggable = false
    subtractionWorldButton.draggable = false
    multiplicationWorldButton.draggable = false 
    divisionWorldButton.draggable = false 
    sugarMountainWorldButton.draggable = false
end

function WorldsScene:draw()
    -- Codea does not automatically call this method
    background(0, 0, 0, 255)
    
    homeButton:draw()
    additionWorldButton:draw()
    subtractionWorldButton:draw()
    multiplicationWorldButton:draw()
    divisionWorldButton:draw()
    sugarMountainWorldButton:draw()
    
    fill(255, 255, 255, 255)
    fontSize(60)
    text("Worlds", WIDTH/2, HEIGHT/2+300) 
    text("+", WIDTH/2-150, HEIGHT/2+180) 
    text("-", WIDTH/2+150, HEIGHT/2+180)
    text("x", WIDTH/2-150, HEIGHT/2-180)
    text("/", WIDTH/2+150, HEIGHT/2-180)
    fontSize(40)
    text("+ - x /", WIDTH/2, HEIGHT/2+70)
end

function WorldsScene:touched(touch)
    -- Codea does not automatically call this method
    
    homeButton:touched(touch)
    additionWorldButton:touched(touch)
    subtractionWorldButton:touched(touch)
    multiplicationWorldButton:touched(touch)
    divisionWorldButton:touched(touch)
    sugarMountainWorldButton:touched(touch)
    
    if(homeButton.selected == true) then
        Scene.Change("mainmenu")
    end

    if(additionWorldButton.selected == true) then
        worldSelected = "ADDITION"
        Scene.Change("levels")
    elseif(subtractionWorldButton.selected == true) then
        worldSelected = "SUBTRACTION"
        Scene.Change("levels")
    elseif(multiplicationWorldButton.selected == true) then
        worldSelected = "MULTIPLICATION"
        Scene.Change("levels")
    elseif(divisionWorldButton.selected == true) then
        worldSelected = "DIVISION"
        Scene.Change("levels")
    elseif(sugarMountainWorldButton.selected == true) then
        worldSelected = "SUGAR MOUNTAIN" 
        Scene.Change("levels")
    end
end