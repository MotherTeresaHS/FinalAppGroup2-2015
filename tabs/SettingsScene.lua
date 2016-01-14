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
local musicOnButton
local musicOffButton
local soundEffectOnButton
local soundEffectOffButton

function SettingsScene:init()
    
    creditsButton = Button("Dropbox:creditsButton", vec2(WIDTH/2, HEIGHT/2-200))
    homeButton = Button("Dropbox:homeButton", vec2(WIDTH/2-400, HEIGHT/2+325))
    musicOnButton = Button("Dropbox:settingsOnButton", vec2(WIDTH/2+150, HEIGHT/2+150))
    musicOffButton = Button("Dropbox:settingsOffButton", vec2(WIDTH/2+300, HEIGHT/2+150))
    soundEffectOnButton = Button("Dropbox:settingsOnButton", vec2(WIDTH/2+150, HEIGHT/2))
    soundEffectOffButton = Button("Dropbox:settingsOffButton", vec2(WIDTH/2+300, HEIGHT/2))
    
    creditsButton.draggable = false
    homeButton.draggable = false 
    musicOnButton.draggable = false
    musicOffButton.draggable = false
    soundEffectOnButton.draggable = false
    soundEffectOffButton.draggable = false
end

function SettingsScene:draw()

    --background(0, 0, 0, 255)
    sprite("Dropbox:settingsBackground", WIDTH/2, HEIGHT/2)
    
    creditsButton:draw()
    homeButton:draw()
    musicOnButton:draw()
    musicOffButton:draw()
    soundEffectOnButton:draw()
    soundEffectOffButton:draw()
    
    fill(0, 0, 0, 255)
    fontSize(60)
    text("Settings", WIDTH/2, HEIGHT/2+300)
    fontSize(55)
    text("Music", WIDTH/2-300, HEIGHT/2+150)
    text("Sound Effects", WIDTH/2-300, HEIGHT/2)
end

function SettingsScene:touched(touch)
    
    creditsButton:touched(touch)
    homeButton:touched(touch)
    musicOnButton:touched(touch)
    musicOffButton:touched(touch)
    soundEffectOnButton:touched(touch)
    soundEffectOffButton:touched(touch)
    
    if(creditsButton.selected == true) then
        if noSoundEffects then
            return
        else
            sound(SOUND_HIT, 1851, 0.50)
        end
        Scene.Change("credits")
    elseif(homeButton.selected == true) then
        if noSoundEffects then
            return
        else
            sound(SOUND_HIT, 1851, 0.50)
        end
        Scene.Change("mainmenu")
    elseif(musicOnButton.selected == true) then
        if noSoundEffects then
            return
        else
            sound(SOUND_HIT, 1851, 0.50)
        end
        music("Dropbox:Nigel Good - This Is Forever")
        musicOff = false
    elseif(musicOffButton.selected == true) then
        if noSoundEffects then
            return
        else
            sound(SOUND_HIT, 1851, 0.50)
        end
        music.stop()
        musicOff = true
    elseif(soundEffectOnButton.selected == true) then
        noSoundEffects = false
    elseif(soundEffectOffButton.selected == true) then
        noSoundEffects = true
    end
end