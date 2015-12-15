-- StoreScene
-- FinalAppGroup2-2015

-- Created by: Zacharias Octavious 
-- Created on: Nov - 2015
-- Created for: ICS2O
-- This is the store scene 

StoreScene = class()

local homeButton 

function StoreScene:init()
    -- you can accept and set parameters here
    homeButton = Button("Dropbox:homeButton", vec2(WIDTH/2-400, HEIGHT/2+325))
    homeButton.draggable = false 
end

function StoreScene:draw()
    -- Codea does not automatically call this method
    background(0, 0, 0, 255)
    homeButton:draw()
    
    fill(255, 255, 255, 255)
    fontSize(60)
    text("Store", WIDTH/2, HEIGHT/2+300) 
    text("W.I.P", WIDTH/2, HEIGHT/2)
end

function StoreScene:touched(touch)
    -- Codea does not automatically call this method
    homeButton:touched(touch)
    
    if(homeButton.selected == true) then
        Scene.Change("mainmenu")
    end
end