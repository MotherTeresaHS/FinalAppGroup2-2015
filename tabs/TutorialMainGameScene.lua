-- TutorialMainGameScene
-- FinalAppGroup2-2015

-- Created by: Zacharias Octavious 
-- Created on: Dec - 2015
-- Created for: ICS2O
-- This is the main game scene with the tutorial

TutorialMainGameScene = class()

local equationToDrag
local greenCircle
local redCircle
local smallGreenCircle
local smallRedCircle
local backgroundTextBoxFirstTime
local backgroundTextBoxSecondTime

function TutorialMainGameScene:init()
    
    equationToDrag = SpriteObject("Dropbox:tutorialEquation", vec2(WIDTH/2, HEIGHT/2+275))
    greenCircle = SpriteObject("Dropbox:tutorialGreenCircle", vec2(WIDTH/2+350, HEIGHT/2-200))
    redCircle = SpriteObject("Dropbox:tutorialRedCircle", vec2(WIDTH/2-350, HEIGHT/2-200))
    smallGreenCircle = SpriteObject("Dropbox:tutorialSmallGreenCircle", vec2(WIDTH/2+350, HEIGHT/2-200))
    smallRedCircle = SpriteObject("Dropbox:tutorialSmallRedCircle", vec2(WIDTH/2-350, HEIGHT/2-200))
    backgroundTextBoxFirstTime = SpriteObject("Dropbox:tutorialBackgroundRectangleForTextMainGameFirstTime", vec2(WIDTH/2, HEIGHT/2))
    backgroundTextBoxSecondTime = SpriteObject("Dropbox:tutorialBackgroundRectangleForTextMainGameSecondTime", vec2(WIDTH/2, HEIGHT/2))
    --sprite("Dropbox:tutorialBackgroundRectangleForTextMainGameFirstTime")
    greenCircle.draggable = false
    redCircle.draggable = false 
    smallGreenCircle.draggable = false
    smallRedCircle.draggable = false
    backgroundTextBoxFirstTime.draggable = false
    backgroundTextBoxSecondTime.draggable = false
end

function TutorialMainGameScene:draw()
    
    sprite("Dropbox:chocolateScene", WIDTH/2, HEIGHT/2)

    greenCircle:draw()
    redCircle:draw()
    equationToDrag:draw()
    
    fill(0, 0, 0, 255)
    fontSize(30)
    
    if tutorialSecondTime then
        backgroundTextBoxSecondTime:draw()
        if(languageForVoiceOver == 1) then
            text("Now drag the equation to the red circle", WIDTH/2, HEIGHT/2)
        elseif(languageForVoiceOver == 2) then
            fontSize(20)
            text("Maintenant faites glisser l'équation dans le cercle rouge", WIDTH/2, HEIGHT/2)
        end
    else
        backgroundTextBoxFirstTime:draw()
        if(languageForVoiceOver == 1) then
            text("Drag the equation to the green circle", WIDTH/2, HEIGHT/2)
        elseif(languageForVoiceOver == 2) then
            fontSize(25)
            text("Faites glisser l'équation dans le cercle vert", WIDTH/2, HEIGHT/2)
        end
    end
end

function TutorialMainGameScene:touched(touch)
    
    equationToDrag:touched(touch)
    greenCircle:touched(touch)
    redCircle:touched(touch)
    smallGreenCircle:touched(touch)
    smallRedCircle:touched(touch)
    
    if tutorialSecondTime then
        if(equationToDrag:isTouching(smallRedCircle)) then
            Scene.Change("tutorialwrong")
        end
    else
        if(equationToDrag:isTouching(smallGreenCircle) == true) then
            Scene.Change("tutorialright")
        end
    end 
end