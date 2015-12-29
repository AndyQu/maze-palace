
local MainScene = class("MainScene", cc.load("mvc").ViewBase)

function MainScene:onCreate()
    -- add background image
    --[[display.newSprite("HelloWorld.png")
        :move(display.center)
        :addTo(self)
]]
    -- add HelloWorld label
    cc.Label:createWithSystemFont("Maze Palace", "Arial", 40)
        :move(display.cx, display.cy + 200)
        :addTo(self)

    --添加菜单项
    --迷宫DIY
    local Button_MazeDIY=cc.MenuItemFont:create("迷宫DIY")
    :onClicked(function()
               self:getApp():enterScene("MazeDIYScene");
               end
               )
    cc.Menu:create(Button_MazeDIY)
        :move(display.cx,display.cy+100)
        :addTo(self)
        
    --我的迷宫
    local Button_MyMaze=cc.MenuItemFont:create("我的迷宫")
        :onClicked(function()
                   self:getApp():enterScene("MyMazeScene");
                   end
                   )
    cc.Menu:create(Button_MyMaze)
    :move(display.cx,display.cy)
    :addTo(self)
    --走迷宫
    local Button_MazeStart=cc.MenuItemFont:create("走迷宫")
        :onClicked(function()
                   self:getApp():enterScene("MazeStartScene");
                   end
                   )
    cc.Menu:create(Button_MazeStart)
    :move(display.cx,display.cy-100)
    :addTo(self)
    
    --走过的迷宫
    local Button_MazeHistory=cc.MenuItemFont:create("走过的迷宫")
    :onClicked(function()
    self:getApp():enterScene("MazeHistoryScene");
               end
               )
    cc.Menu:create(Button_MazeHistory)
    :move(display.cx,display.cy-200)
    :addTo(self)

end

return MainScene
