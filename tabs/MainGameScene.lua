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
end

function MainGameScene:touched(touch)
    -- Codea does not automatically call this method
end