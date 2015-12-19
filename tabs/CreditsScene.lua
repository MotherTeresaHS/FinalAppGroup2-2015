-- CreditsScene
-- FinalAppGroup2-2015

-- Created by: Zacharias Octavious 
-- Created on: Nov - 2015
-- Created for: ICS2O
-- This is the credits scene 

CreditsScene = class()

--global to this file
local homeButton

function CreditsScene:init()
    -- you can accept and set parameters here
    homeButton = Button("Dropbox:homeButton", vec2(WIDTH/2-400, HEIGHT/2+325))
    homeButton.draggable = false 
end

function CreditsScene:draw()
    -- Codea does not automatically call this method
    background(0, 0, 0, 255)
    homeButton:draw()
    
    fill(255, 255, 255, 255)
    fontSize(60)
    text("Credits", WIDTH/2, HEIGHT/2+300) 
    
    --temp place-holders
    fontSize(40)
    text("Programmer #1 ... Zacharias Octavious", WIDTH/2, HEIGHT/2+150)
    text("Programmer #2 ... Luke Vandenberghe", WIDTH/2, HEIGHT/2+100)
    text("Artwork ... Thomas Farkas", WIDTH/2, HEIGHT/2)
    text("Artwork ... Indi, Jerianne, Rico", WIDTH/2, HEIGHT/2-50)
    text("Music ... Nigel Good - This Is Forever", WIDTH/2, HEIGHT/2-150)
end

function CreditsScene:touched(touch)
    -- Codea does not automatically call this method
    homeButton:touched(touch)
    
    if(homeButton.selected == true) then
        sound(SOUND_HIT, 1851, 0.50)
        Scene.Change("settings")
    end
end