local MazeStartScene=class("MazeStartScene",cc.load("mvc").ViewBase)

function MazeStartScene:onCreate()

    -- add HelloWorld label
    cc.Label:createWithSystemFont("MazeStartScene", "Arial", 40)
    :move(display.cx, display.cy + 200)
    :addTo(self)

--添加菜单项
    local Button_Back=cc.MenuItemFont:create("返回")
    :onClicked(function()
           self:getApp():enterScene("MainScene");
           end
           )
           
    cc.Menu:create(Button_Back)
    :move(60,40)
    :addTo(self)
end

return MazeStartScene