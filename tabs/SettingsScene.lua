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
local voiceOverOnButton
local voiceOverOffButton
-- French --
local creditsFrenchButton
local musicOnFrenchButton
local musicOffFrenchButton
local soundEffectOnFrenchButton
local soundEffectOffFrenchButton
local voiceOverOnFrenchButton
local voiceOverOffFrenchButton

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
    
    -- French --
    creditsFrenchButton = Button("Dropbox:creditsButtonFrench", vec2(WIDTH/2, HEIGHT/2-300))
    musicOnFrenchButton = Button("Dropbox:settingsOnButtonFrench", vec2(WIDTH/2+175, HEIGHT/2+200))
    musicOffFrenchButton = Button("Dropbox:settingsOffButtonFrench", vec2(WIDTH/2+325, HEIGHT/2+200))
    soundEffectOnFrenchButton = Button("Dropbox:settingsOnButtonFrench", vec2(WIDTH/2+175, HEIGHT/2+50))
    soundEffectOffFrenchButton = Button("Dropbox:settingsOffButtonFrench", vec2(WIDTH/2+325, HEIGHT/2+50))
    voiceOverOnFrenchButton = Button("Dropbox:settingsOnButtonFrench", vec2(WIDTH/2+175, HEIGHT/2-100))
    voiceOverOffFrenchButton = Button("Dropbox:settingsOffButtonFrench", vec2(WIDTH/2+325, HEIGHT/2-100))
    
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
    -- French --
    creditsFrenchButton.draggable = false
    musicOnFrenchButton.draggable = false
    musicOffFrenchButton.draggable = false
    soundEffectOnFrenchButton.draggable = false
    soundEffectOffFrenchButton.draggable = false
    voiceOverOnFrenchButton.draggable = false
    voiceOverOffFrenchButton.draggable = false
    
    noWelcomeMessage = true
end

function SettingsScene:draw()

    --background(0, 0, 0, 255)
    sprite("Dropbox:settingsBackground", WIDTH/2, HEIGHT/2, 1024, 768)
    
    homeButton:draw()
    languageEnglishButton:draw()
    languageFrenchButton:draw()
    
    if(languageForVoiceOver == 1) then
        creditsButton:draw()
        musicOnButton:draw()
        musicOffButton:draw()
        soundEffectOnButton:draw()
        soundEffectOffButton:draw()
        voiceOverOnButton:draw()
        voiceOverOffButton:draw()
    elseif(languageForVoiceOver == 2) then
        creditsFrenchButton:draw()
        musicOnFrenchButton:draw()
        musicOffFrenchButton:draw()
        soundEffectOnFrenchButton:draw()
        soundEffectOffFrenchButton:draw()
        voiceOverOnFrenchButton:draw()
        voiceOverOffFrenchButton:draw()
    end
    
    fill(0, 0, 0, 255)

    if(languageForVoiceOver == 1) then 
        fontSize(60)
        text("Settings", WIDTH/2, HEIGHT/2+300)
        fontSize(55)
        text("Music", WIDTH/2-300, HEIGHT/2+200)
        text("Sound Effects", WIDTH/2-300, HEIGHT/2+50)
        text("Voice Over", WIDTH/2-300, HEIGHT/2-100)
        text("Language", WIDTH/2-300, HEIGHT/2-225)
    elseif(languageForVoiceOver == 2) then
        fontSize(60)
        text("Paramètres", WIDTH/2, HEIGHT/2+300)
        fontSize(55)
        text("Musique", WIDTH/2-300, HEIGHT/2+200)
        text("Effect Sonore", WIDTH/2-300, HEIGHT/2+50)
        text("Commentaire", WIDTH/2-300, HEIGHT/2-100)
        text("Langue", WIDTH/2-300, HEIGHT/2-225)
    end
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
    -- French --
    creditsFrenchButton:touched(touch)
    musicOnFrenchButton:touched(touch)
    musicOffFrenchButton:touched(touch)
    soundEffectOnFrenchButton:touched(touch)
    soundEffectOffFrenchButton:touched(touch)
    voiceOverOnFrenchButton:touched(touch)
    voiceOverOffFrenchButton:touched(touch)
    
    if(creditsButton.selected == true) or (creditsFrenchButton.selected == true) then
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
    elseif(musicOnButton.selected == true) or (musicOffFrenchButton.selected == true) then
        if noSoundEffects then
            music("Dropbox:Nigel Good - Discover", true, 0.20)
            musicOff = false
        else
            sound(SOUND_HIT, 1851, 0.50)
            music("Dropbox:Nigel Good - Discover", true, 0.20)
            musicOff = false
        end
    elseif(musicOffButton.selected == true) or (musicOffFrenchButton.selected == true) then
        if noSoundEffects then
            music.stop()
            musicOff = true
        else
            sound(SOUND_HIT, 1851, 0.50)
            music.stop()
            musicOff = true
        end
    elseif(soundEffectOnButton.selected == true) or (soundEffectOnFrenchButton.selected == true) then
         if noSoundEffects then
            noSoundEffects = false
        else
            sound(SOUND_HIT, 1851, 0.50)
            noSoundEffects = false
        end
    elseif(soundEffectOffButton.selected == true) or (soundEffectOffFrenchButton.selected == true) then
        if noSoundEffects then
            noSoundEffects = true
        else
            sound(SOUND_HIT, 1851, 0.50)
            noSoundEffects = true
        end
    elseif(voiceOverOnButton.selected == true) or (voiceOverOnFrenchButton.selected == true) then
        if noSoundEffects then
            noVoiceOver = false
        else
            sound(SOUND_HIT, 1851, 0.50)
            noVoiceOver = false
        end
    elseif(voiceOverOffButton.selected == true) or (voiceOverOffFrenchButton.selected == true) then
        if noSoundEffects then
            noVoiceOver = true
        else
            sound(SOUND_HIT, 1851, 0.50)
            noVoiceOver = true
        end
    elseif(languageEnglishButton.selected == true) then
        if noSoundEffects then
            languageForVoiceOver = 1
            saveLocalData("language", languageForVoiceOver)
            Scene.Change("settings")
        else
            sound(SOUND_HIT, 1851, 0.50)
            languageForVoiceOver = 1
            saveLocalData("language", languageForVoiceOver)
            Scene.Change("settings")
        end
    elseif(languageFrenchButton.selected == true) then
        if noSoundEffects then
            languageForVoiceOver = 2
            saveLocalData("language", languageForVoiceOver)
            Scene.Change("settings")
        else
            sound(SOUND_HIT, 1851, 0.50)
            languageForVoiceOver = 2
            saveLocalData("language", languageForVoiceOver)
            Scene.Change("settings")
        end
    end
end