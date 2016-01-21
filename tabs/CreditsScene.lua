-- CreditsScene
-- FinalAppGroup2-2015

-- Created by: Zacharias Octavious 
-- Created on: Nov - 2015
-- Created for: ICS2O
-- This is the credits scene 

CreditsScene = class()

--global to this file
local homeButton
local facebookButton
local soundcloudButton
local twitterButton

function CreditsScene:init()
    
    homeButton = Button("Dropbox:homeButton", vec2(WIDTH/2-400, HEIGHT/2+325))
    facebookButton = Button("Dropbox:creditsNigelGoodFacebookButton", vec2(WIDTH/2-200, HEIGHT/2-190))
    soundcloudButton = Button("Dropbox:creditsNigelGoodSoundcloudButton", vec2(WIDTH/2, HEIGHT/2-190))
    twitterButton = Button("Dropbox:creditsNigelGoodTwitterButton", vec2(WIDTH/2+200, HEIGHT/2-190))
    
    homeButton.draggable = false
    facebookButton.draggable = false
    soundcloudButton.draggable = false
    twitterButton.draggable = false
    
    linkToNigelsSocialMedia = nil
end

function CreditsScene:draw()
    
    --background(0, 0, 0, 255)
    sprite("Dropbox:creditsBackground", WIDTH/2, HEIGHT/2, 1024, 768)
    
    homeButton:draw()
    facebookButton:draw()
    soundcloudButton:draw()
    twitterButton:draw()
    
    fill(0, 0, 0, 255)
    font("Arial-BoldMT")
    fontSize(60)
    text("Credits", WIDTH/2, HEIGHT/2+300) 

    fontSize(35)
    text("Programmer #1 ... Zacharias Octavious", WIDTH/2, HEIGHT/2+200)
    text("Programmer #2 ... Luke Vandenberghe", WIDTH/2, HEIGHT/2+150)
    text("Artwork ... Thomas Farkas", WIDTH/2, HEIGHT/2+75)
    text("Artwork ... Indi, Jerianne, Rico", WIDTH/2, HEIGHT/2+35.5)
    text("Program Concept ... Indi, Jerianne, Rico", WIDTH/2, HEIGHT/2-50)
    text("Music ... Nigel Good - Discover", WIDTH/2, HEIGHT/2-120)
    text("Special Thanks to Mr. Coxall!", WIDTH/2, HEIGHT/2-275)
end

function CreditsScene:touched(touch)
    
    homeButton:touched(touch)
    facebookButton:touched(touch)
    soundcloudButton:touched(touch)
    twitterButton:touched(touch)
    
    if(homeButton.selected == true) then
        if noSoundEffects then
            Scene.Change("settings")
        else
            sound(SOUND_HIT, 1851, 0.50)
            Scene.Change("settings")
        end
    elseif(facebookButton.selected == true) then
        if noSoundEffects then
            linkToNigelsSocialMedia = "https://facebook.com/nigelgoodmusic"
            openURL(linkToNigelsSocialMedia)
        else
            sound(SOUND_HIT, 1851, 0.50)
            linkToNigelsSocialMedia = "https://facebook.com/nigelgoodmusic"
            openURL(linkToNigelsSocialMedia)
        end
    elseif(soundcloudButton.selected == true) then
        if noSoundEffects then
            linkToNigelsSocialMedia = "https://soundcloud.com/nigelgood"
            openURL(linkToNigelsSocialMedia)
        else
            sound(SOUND_HIT, 1851, 0.50)
            linkToNigelsSocialMedia = "https://soundcloud.com/nigelgood"
            openURL(linkToNigelsSocialMedia)
        end
    elseif(twitterButton.selected == true) then
        if noSoundEffects then
            linkToNigelsSocialMedia = "https://twitter.com/nigelgood"
            openURL(linkToNigelsSocialMedia)
        else
            sound(SOUND_HIT, 1851, 0.50)
            linkToNigelsSocialMedia = "https://twitter.com/nigelgood"
            openURL(linkToNigelsSocialMedia)
        end
    end
end