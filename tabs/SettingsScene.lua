-- SettingsScene
-- FinalAppGroup2-2015

-- Created by: Zacharias Octavious 
-- Created on: Nov - 2015
-- Created for: ICS2O
-- This is the settings scene 

SettingsScene = class()

--global to this file
local creditsButton
local homeButton

function SettingsScene:init()
    -- you can accept and set parameters here
    
    creditsButton = Button("Dropbox:Blue Info Button", vec2(WIDTH/2, HEIGHT/2-200))
    homeButton = Button("Dropbox:Blue Back Rectangle Button", vec2(WIDTH/2-400, HEIGHT/2+325))
    musicOnButton = Button("Dropbox:Star Gold", vec2(WIDTH/2+150, HEIGHT/2+150))
    musicOffButton = Button("Dropbox:Star Black", vec2(WIDTH/2+300, HEIGHT/2+150))
    creditsButton.draggable = false
    homeButton.draggable = false 
    musicOnButton.draggable = false
    musicOffButton.draggable = false
end

function SettingsScene:draw()
    -- Codea does not automatically call this method
    
    background(163, 157, 157, 255)
    creditsButton:draw()
    homeButton:draw()
    musicOnButton:draw()
    musicOffButton:draw()
    
    fill(255, 255, 255, 255)
    fontSize(55)
    text("Credits", WIDTH/2, HEIGHT/2-100) 
    text("Music", WIDTH/2-300, HEIGHT/2+150)
end

function SettingsScene:touched(touch)
    -- Codea does not automatically call this method
    creditsButton:touched(touch)
    homeButton:touched(touch)
    musicOnButton:touched(touch)
    musicOffButton:touched(touch)
    
    if(creditsButton.selected == true) then
        Scene.Change("credits")
    elseif(homeButton.selected == true) then
        Scene.Change("mainmenu")
    elseif(musicOnButton.selected == true) then
        music("A Hero's Quest:Battle")
        musicOff = false
    elseif(musicOffButton.selected == true) then
        music.stop()
        musicOff = true
    end
end
