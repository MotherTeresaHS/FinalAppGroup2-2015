-- LeaderboardsScene
-- FinalAppGroup2-2015

-- Created by: Zacharias Octavious 
-- Created on: Nov - 2015
-- Created for: ICS2O
-- This is the leaderboards scene 

LeaderboardsScene = class()

local homeButton

function LeaderboardsScene:init()
    -- you can accept and set parameters here
    homeButton = Button("Dropbox:Blue Back Rectangle Button", vec2(WIDTH/2-400, HEIGHT/2+325))
    homeButton.draggable = false 
end

function LeaderboardsScene:draw()
    -- Codea does not automatically call this method
    background(0, 0, 0, 255)
    homeButton:draw()
    
    fill(255, 255, 255, 255)
    fontSize(60)
    text("Leaderboards", WIDTH/2, HEIGHT/2+300) 
end

function LeaderboardsScene:touched(touch)
    -- Codea does not automatically call this method
    homeButton:touched(touch)
    
    if(homeButton.selected == true) then
        Scene.Change("mainmenu")
    end
end
