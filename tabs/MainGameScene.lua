-- MainGameScene
-- FinalAppGroup2-2015

-- Created by: 
-- Created on: Dec - 2015
-- Created for: ICS2O
-- This is the main game scene 

MainGameScene = class()

function MainGameScene:init()
    -- you can accept and set parameters here
    
    --test to see if the worldSelected and levelDifficultySelected variables work for these if statements in the main game
    
    --addition world
    if( (worldSelected == "ADDITION") and
        (levelDifficultySelected == "EASY") )then
        print("Add & Easy")
    elseif( (worldSelected == "ADDITION") and
            (levelDifficultySelected == "MEDIUM") )then
            print("Add & Medium")
    elseif( (worldSelected == "ADDITION") and
            (levelDifficultySelected == "HARD") )then
            print("Add & Hard")
        
    --subtraction world
    elseif( (worldSelected == "SUBTRACTION") and
            (levelDifficultySelected == "EASY") )then
        print("Sub & Easy")
    elseif( (worldSelected == "SUBTRACTION") and
            (levelDifficultySelected == "MEDIUM") )then
            print("Sub & Medium")
    elseif( (worldSelected == "SUBTRACTION") and
            (levelDifficultySelected == "HARD") )then
            print("Sub & Hard")
        
    --multiplication world
    elseif( (worldSelected == "MULTIPLICATION") and
            (levelDifficultySelected == "EASY") )then
        print("Multi & Easy")
    elseif( (worldSelected == "MULTIPLICATION") and
            (levelDifficultySelected == "MEDIUM") )then
            print("Multi & Medium")
    elseif( (worldSelected == "MULTIPLICATION") and
            (levelDifficultySelected == "HARD") )then
            print("Multi & Hard")
        
    --division world
    elseif( (worldSelected == "DIVISION") and
            (levelDifficultySelected == "EASY") )then
        print("Div & Easy")
    elseif( (worldSelected == "DIVISION") and
            (levelDifficultySelected == "MEDIUM") )then
            print("Div & Medium")
    elseif( (worldSelected == "DIVISION") and
            (levelDifficultySelected == "HARD") )then
            print("Div & Hard")
        
    --sugar mountain world
    elseif( (worldSelected == "SUGAR MOUNTAIN") and
            (levelDifficultySelected == "EASY") )then
        print("Sugar & Easy")
    elseif( (worldSelected == "SUGAR MOUNTAIN") and
            (levelDifficultySelected == "MEDIUM") )then
            print("Sugar & Medium")
    elseif( (worldSelected == "SUGAR MOUNTAIN") and
            (levelDifficultySelected == "HARD") )then
            print("Sugar & Hard")
    end
end

function MainGameScene:draw()
    -- Codea does not automatically call this method
    background(0, 0, 0, 255)
    
    --same test as above but in the draw function using text() rather than print(). *The equations will be done in here*
    fill(255, 255, 255, 255)
    fontSize(60)
    if( (worldSelected == "ADDITION") and
        (levelDifficultySelected == "EASY") )then
        text("Add & Easy", WIDTH/2, HEIGHT/2)
    elseif( (worldSelected == "ADDITION") and
            (levelDifficultySelected == "MEDIUM") )then
            text("Add & Medium", WIDTH/2, HEIGHT/2)
    elseif( (worldSelected == "ADDITION") and
            (levelDifficultySelected == "HARD") )then
            text("Add & Hard", WIDTH/2, HEIGHT/2)
    --subtraction world
    elseif( (worldSelected == "SUBTRACTION") and
            (levelDifficultySelected == "EASY") )then
        text("Sub & Easy", WIDTH/2, HEIGHT/2)
    elseif( (worldSelected == "SUBTRACTION") and
            (levelDifficultySelected == "MEDIUM") )then
            text("Sub & Medium", WIDTH/2, HEIGHT/2)
    elseif( (worldSelected == "SUBTRACTION") and
            (levelDifficultySelected == "HARD") )then
            text("Sub & Hard", WIDTH/2, HEIGHT/2)
        
    --multiplication world
    elseif( (worldSelected == "MULTIPLICATION") and
            (levelDifficultySelected == "EASY") )then
        text("Multi & Easy", WIDTH/2, HEIGHT/2)
    elseif( (worldSelected == "MULTIPLICATION") and
            (levelDifficultySelected == "MEDIUM") )then
            text("Multi & Medium", WIDTH/2, HEIGHT/2)
    elseif( (worldSelected == "MULTIPLICATION") and
            (levelDifficultySelected == "HARD") )then
            text("Multi & Hard", WIDTH/2, HEIGHT/2)
        
    --division world
    elseif( (worldSelected == "DIVISION") and
            (levelDifficultySelected == "EASY") )then
        text("Div & Easy", WIDTH/2, HEIGHT/2)
    elseif( (worldSelected == "DIVISION") and
            (levelDifficultySelected == "MEDIUM") )then
            text("Div & Medium", WIDTH/2, HEIGHT/2)
    elseif( (worldSelected == "DIVISION") and
            (levelDifficultySelected == "HARD") )then
            text("Div & Hard", WIDTH/2, HEIGHT/2)
        
    --sugar mountain world
    elseif( (worldSelected == "SUGAR MOUNTAIN") and
            (levelDifficultySelected == "EASY") )then
        text("Sugar & Easy", WIDTH/2, HEIGHT/2)
    elseif( (worldSelected == "SUGAR MOUNTAIN") and
            (levelDifficultySelected == "MEDIUM") )then
            text("Sugar & Medium", WIDTH/2, HEIGHT/2)
    elseif( (worldSelected == "SUGAR MOUNTAIN") and
            (levelDifficultySelected == "HARD") )then
            text("Sugar & Hard", WIDTH/2, HEIGHT/2)
    end
end

function MainGameScene:touched(touch)
    -- Codea does not automatically call this method
end