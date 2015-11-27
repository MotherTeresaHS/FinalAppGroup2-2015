-- AchievementsScene
-- FinalAppGroup2-2015

-- Created by: Zacharias Octavious 
-- Created on: Nov - 2015
-- Created for: ICS2O
-- This is the achievements scene 

AchievementsScene = class()

local homeButton

function AchievementsScene:init()
    -- you can accept and set parameters here
    homeButton = Button("Dropbox:Blue Back Rectangle Button", vec2(WIDTH/2-400, HEIGHT/2+325))
    homeButton.draggable = false 
end

function AchievementsScene:draw()
    -- Codea does not automatically call this method
    background(0, 0, 0, 255)
    homeButton:draw()
    
    fill(255, 255, 255, 255)
    fontSize(60)
    text("Achievements", WIDTH/2, HEIGHT/2+300) 
end

function AchievementsScene:touched(touch)
    -- Codea does not automatically call this method
    
    homeButton:touched(touch)
    
    if(homeButton.selected == true) then
        Scene.Change("mainmenu")
    end
end
