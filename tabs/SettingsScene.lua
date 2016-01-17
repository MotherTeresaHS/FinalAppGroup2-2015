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
local languageEnglishButton
local languageFrenchButton

function SettingsScene:init()
    
    creditsButton = Button("Dropbox:creditsButton", vec2(WIDTH/2, HEIGHT/2-300))
    homeButton = Button("Dropbox:homeButton", vec2(WIDTH/2-400, HEIGHT/2+325))
    musicOnButton = Button("Dropbox:settingsOnButton", vec2(WIDTH/2+175, HEIGHT/2+200))
    musicOffButton = Button("Dropbox:settingsOffButton", vec2(WIDTH/2+325, HEIGHT/2+200))
    soundEffectOnButton = Button("Dropbox:settingsOnButton", vec2(WIDTH/2+175, HEIGHT/2+50))
    soundEffectOffButton = Button("Dropbox:settingsOffButton", vec2(WIDTH/2+325, HEIGHT/2+50))
    voiceOverOnButton = Button("Dropbox:settingsOnButton", vec2(WIDTH/2+175, HEIGHT/2-100))
    voiceOverOffButton = Button("Dropbox:settingsOffButton", vec2(WIDTH/2+325, HEIGHT/2-100))
    languageEnglishButton = Button("Dropbox:settingsLanguageEnglish", vec2(WIDTH/2+175, HEIGHT/2-225))
    languageFrenchButton = Button("Dropbox:settingsLanguageFrench", vec2(WIDTH/2+325, HEIGHT/2-225))
    
    creditsButton.draggable = false
    homeButton.draggable = false 
    musicOnButton.draggable = false
    musicOffButton.draggable = false
    soundEffectOnButton.draggable = false
    soundEffectOffButton.draggable = false
    voiceOverOnButton.draggable = false
    voiceOverOffButton.draggable = false
    languageEnglishButton.draggable = false
    languageFrenchButton.draggable = false
    
    noWelcomeMessage = true
end

function SettingsScene:draw()

    --background(0, 0, 0, 255)
    sprite("Dropbox:settingsBackground", WIDTH/2, HEIGHT/2, 1024, 768)
    
    creditsButton:draw()
    homeButton:draw()
    musicOnButton:draw()
    musicOffButton:draw()
    soundEffectOnButton:draw()
    soundEffectOffButton:draw()
    voiceOverOnButton:draw()
    voiceOverOffButton:draw()
    languageEnglishButton:draw()
    languageFrenchButton:draw()
    
    fill(0, 0, 0, 255)
    fontSize(60)
    text("Settings", WIDTH/2, HEIGHT/2+300)
    fontSize(55)
    text("Music", WIDTH/2-300, HEIGHT/2+200)
    text("Sound Effects", WIDTH/2-300, HEIGHT/2+50)
    text("Voice Over", WIDTH/2-300, HEIGHT/2-100)
    text("Language", WIDTH/2-300, HEIGHT/2-225)
end

function SettingsScene:touched(touch)
    
    creditsButton:touched(touch)
    homeButton:touched(touch)
    musicOnButton:touched(touch)
    musicOffButton:touched(touch)
    soundEffectOnButton:touched(touch)
    soundEffectOffButton:touched(touch)
    voiceOverOnButton:touched(touch)
    voiceOverOffButton:touched(touch)
    languageEnglishButton:touched(touch)
    languageFrenchButton:touched(touch)
    
    if(creditsButton.selected == true) then
        if noSoundEffects then
            Scene.Change("credits")
        else
            sound(SOUND_HIT, 1851, 0.50)
            Scene.Change("credits")
        end
    elseif(homeButton.selected == true) then
        if noSoundEffects then
            Scene.Change("mainmenu")
        else
            sound(SOUND_HIT, 1851, 0.50)
            Scene.Change("mainmenu")
        end
    elseif(musicOnButton.selected == true) then
        if noSoundEffects then
            music("Dropbox:Nigel Good - Discover", true, 0.20)
            musicOff = false
        else
            sound(SOUND_HIT, 1851, 0.50)
            music("Dropbox:Nigel Good - Discover", true, 0.20)
            musicOff = false
        end
    elseif(musicOffButton.selected == true) then
        if noSoundEffects then
            music.stop()
            musicOff = true
        else
            sound(SOUND_HIT, 1851, 0.50)
            music.stop()
            musicOff = true
        end
    elseif(soundEffectOnButton.selected == true) then
         if noSoundEffects then
            noSoundEffects = false
        else
            sound(SOUND_HIT, 1851, 0.50)
            noSoundEffects = false
        end
    elseif(soundEffectOffButton.selected == true) then
        if noSoundEffects then
            noSoundEffects = true
        else
            sound(SOUND_HIT, 1851, 0.50)
            noSoundEffects = true
        end
    elseif(voiceOverOnButton.selected == true) then
        if noSoundEffects then
            noVoiceOver = false
        else
            sound(SOUND_HIT, 1851, 0.50)
            noVoiceOver = false
        end
    elseif(voiceOverOffButton.selected == true) then
        if noSoundEffects then
            noVoiceOver = true
        else
            sound(SOUND_HIT, 1851, 0.50)
            noVoiceOver = true
        end
    elseif(languageEnglishButton.selected == true) then
        languageForVoiceOver = 1
        saveLocalData("language", languageForVoiceOver)
    elseif(languageFrenchButton.selected == true) then
        languageForVoiceOver = 2
        saveLocalData("language", languageForVoiceOver)
    end
end