-- MainMenuScene
-- FinalAppGroup2-2015

-- Created by: Zacharias Octavious 
-- Created on: Nov - 2015
-- Created for: ICS2O
-- This is the third scene with all the buttons to game, settings/credits, store, achievements and leaderboards

MainMenuScene = class()

--global to this file
local settingsButton
local mainGameButton
local storeButton
local achievementsButton
local leaderboardsButton
    
function MainMenuScene:init()
    --sprite()
    settingsButton = Button("Dropbox:Blue Settings Button", vec2(WIDTH/2-390, HEIGHT/2+315))
    mainGameButton = Button("Dropbox:Blue Move Scene Forward Button", vec2(WIDTH/2, HEIGHT/2))
    storeButton = Button("Dropbox:Blue Cancel Button", vec2(WIDTH/2, HEIGHT/2-200))
    achievementsButton = Button("Dropbox:Blue Level Menu Button", vec2(WIDTH/2+200, HEIGHT/2-200))
    leaderboardsButton = Button("Dropbox:Blue Redo Button", vec2(WIDTH/2-200, HEIGHT/2-200))
    
    settingsButton.draggable = false
    mainGameButton.draggable = false 
    storeButton.draggable = false
    achievementsButton.draggable = false
    leaderboardsButton.draggable = false

    music("A Hero's Quest:Battle", true, 0.50) 
    
    if musicOff then
        music.stop()
    else
        music("A Hero's Quest:Battle", true, 0.50)
    end
end

function MainMenuScene:draw()
    -- Codea does not automatically call this method
    
    background(0, 0, 0, 255)
    settingsButton:draw()
    mainGameButton:draw()
    storeButton:draw()
    achievementsButton:draw()
    leaderboardsButton:draw()
    
    fill(255, 255, 255, 255)
    fontSize(72)
    text("Play", WIDTH/2, HEIGHT/2+100) 
    
    fontSize(48)
    text("Store", WIDTH/2, HEIGHT/2-100)
    text("Achievements", WIDTH/2+200, HEIGHT/2-100)
    text("Leaderboards", WIDTH/2-200, HEIGHT/2-100)
end

function MainMenuScene:touched(touch)
    -- Codea does not automatically call this method
    settingsButton:touched(touch)
    mainGameButton:touched(touch)
    storeButton:touched(touch)
    achievementsButton:touched(touch)
    leaderboardsButton:touched(touch)
    
    if(settingsButton.selected == true) then
        Scene.Change("settings")
    elseif(mainGameButton.selected == true) then
        Scene.Change("maingame")
    elseif(storeButton.selected == true) then
        Scene.Change("store")
    elseif(achievementsButton.selected == true) then
        Scene.Change("achievements")
    elseif(leaderboardsButton.selected == true) then
        Scene.Change("leaderboards")
    end
end