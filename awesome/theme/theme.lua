--[[
 ______     ______     ______     __  __     ______   __     ______   __  __     __        
/\  == \   /\  ___\   /\  __ \   /\ \/\ \   /\__  _\ /\ \   /\  ___\ /\ \/\ \   /\ \       
\ \  __<   \ \  __\   \ \  __ \  \ \ \_\ \  \/_/\ \/ \ \ \  \ \  __\ \ \ \_\ \  \ \ \____  
 \ \_____\  \ \_____\  \ \_\ \_\  \ \_____\    \ \_\  \ \_\  \ \_\    \ \_____\  \ \_____\ 
  \/_____/   \/_____/   \/_/\/_/   \/_____/     \/_/   \/_/   \/_/     \/_____/   \/_____/ 
                                                                                          
  --]]

-- Requirement
local xresources = require "beautiful.xresources"
local rnotification = require "ruled.notification"
local dpi = xresources.apply_dpi
local gears = require "gears"
local gfs = require "gears.filesystem" 

-- Var
local themes_path = gfs.get_configuration_dir() .. "theme/"
local walls_path = "~/.local/pictures/Walls/"
local home = os.getenv 'HOME'

local theme = {}

----- User Preferences -----

theme.wallpaper =  home .. "/Downloads/girlfarm.jpg"

theme.pfp = themes_path .. "assets/pfp.jpg"
theme.user = string.gsub(os.getenv('USER'), '^%l', string.upper)
theme.hostname = "@Neptune"

----- Font -----

theme.font = "Roboto Medium 14"
theme.font_name = "Roboto"
theme.font_size = " Medium 14"

----- General/default Settings -----

theme.bg_normal     = "#101419"
theme.bg_focus      = "#101419"
theme.bg_urgent     = "#101419"
theme.bg_minimize   = "#101419"
theme.bg_systray    = "#101419"

theme.fg_normal     = "#C5C8C6"
theme.fg_focus      = theme.fg_normal
theme.fg_urgent     = theme.fg_normal
theme.fg_minimize   = theme.fg_normal

theme.useless_gap         = dpi(10)
theme.border_width        = dpi(0)

-- Colors

theme.black = "#242931"
theme.white = "#b6beca"
theme.blue = "#70a5eb"
theme.yellow = "#e2a478"
theme.green = "#b4be82"
theme.red = "#e05f65"
theme.magenta = "#c68aee"
theme.pink = "#E8B2C0"
theme.transparent = "#00000000"

theme.fg = "#C5C8C6"

theme.bg = "#101419"
theme.bg_alt = "#15191e"

-- Menu

theme.menu_height = dpi(35)
theme.menu_width  = dpi(200)
theme.menu_fg_focus = theme.fg_normal
theme.menu_fg_normal = theme.taglist_fg_empty
theme.menu_bg_focus = theme.bar_alt
theme.menu_bg_normal = theme.bar
theme.submenu = "î¶…"
theme.menu_font = theme.font_name .. " 12"

-- titlebar's buttons
theme.titlebar_close_button_normal = gears.color.recolor_image(themes_path .. "assets/titlebar/close_1.png", theme.black)
theme.titlebar_close_button_focus  = gears.color.recolor_image(themes_path .. "assets/titlebar/close_2.png", theme.red)

theme.titlebar_minimize_button_normal = gears.color.recolor_image(themes_path .. "assets/titlebar/minimize_1.png", theme.black)
theme.titlebar_minimize_button_focus  = gears.color.recolor_image(themes_path .. "assets/titlebar/minimize_2.png", theme.green)

theme.titlebar_maximized_button_normal_inactive = gears.color.recolor_image(themes_path .. "assets/titlebar/close_1.png", theme.black)
theme.titlebar_maximized_button_focus_inactive  = gears.color.recolor_image(themes_path .. "assets/titlebar/close_1.png", theme.yellow)
theme.titlebar_maximized_button_normal_active = gears.color.recolor_image(themes_path .. "assets/titlebar/close_1.png", theme.black)
theme.titlebar_maximized_button_focus_active  = gears.color.recolor_image(themes_path .. "assets/titlebar/close_1.png", theme.yellow)

-- You can use your own layout icons like this:
theme.layout_fairh = themes_path.."layouts/fairhw.png"
theme.layout_fairv = themes_path.."layouts/fairvw.png"
theme.layout_floating  = themes_path.."layouts/floatingw.png"
theme.layout_magnifier = themes_path.."layouts/magnifierw.png"
theme.layout_max = themes_path.."layouts/maxw.png"
theme.layout_fullscreen = themes_path.."layouts/fullscreenw.png"
theme.layout_tilebottom = themes_path.."layouts/tilebottomw.png"
theme.layout_tileleft   = themes_path.."layouts/tileleftw.png"
theme.layout_tile = themes_path.."layouts/tilew.png"
theme.layout_tiletop = themes_path.."layouts/tiletopw.png"
theme.layout_spiral  = themes_path.."default/layouts/spiralw.png"
theme.layout_dwindle = themes_path.."default/layouts/dwindlew.png"
theme.layout_cornernw = themes_path.."default/layouts/cornernww.png"
theme.layout_cornerne = themes_path.."default/layouts/cornernew.png"
theme.layout_cornersw = themes_path.."default/layouts/cornersww.png"
theme.layout_cornerse = themes_path.."default/layouts/cornersew.png"

theme.icon_theme = nil

rnotification.connect_signal('request::rules', function()
   rnotification.append_rule {
        rule       = { urgency = 'critical' },
        properties = { bg = '#ff0000', fg = '#ffffff' }
    }
end)

return theme 
