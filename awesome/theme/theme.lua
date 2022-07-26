---------------------------
-- Default awesome theme --
---------------------------

local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local rnotification = require("ruled.notification")
local dpi = xresources.apply_dpi
local gears = require "gears"
local gfs = require("gears.filesystem")
local themes_path = gfs.get_configuration_dir() .. "theme/"
local walls_path = "~/.local/pictures/Walls/"
local home = os.getenv('HOME')

local theme = {}

----- User Preferences -----
theme.wallpaper =  home .. "/Downloads/girlfarm.jpg"

theme.pfp = themes_path .. "assets/pfp.jpg"
theme.user = "Neko"
theme.hostname = "@Neptune"

----- Font -----

theme.font = "Roboto Medium 14"
theme.font_name = "Roboto"
theme.font_size = " Medium 14"

----- General/default Settings -----

theme.bg_normal     = "#151515"
theme.bg_focus      = "#151515"
theme.bg_urgent     = "#151515"
theme.bg_minimize   = "#151515"
theme.bg_systray    = theme.bg_normal

theme.fg_normal     = "#C5C8C6"
theme.fg_focus      = theme.fg_normal
theme.fg_urgent     = theme.fg_normal
theme.fg_minimize   = theme.fg_normal

theme.useless_gap         = dpi(10)
theme.border_width        = dpi(0)

----- Colors -----

theme.black = "#242931"
theme.white = "#b6beca"
theme.blue = "#70a5eb"
theme.yellow = "#e2a478"
theme.green = "#b4be82"
theme.red = "#e05f65"
theme.magenta = "#c68aee"
theme.pink = "#E8B2C0"
theme.transparent = "#00000000"

theme.gradient = {
    [1] = "#0f2e55",
    [2] = "#005982",
    [3] = "#008798",
}

theme.empty = "#404B66"


----- Bar -----

theme.bar = "#101419"
theme.bar_alt = "#15191e"

theme.taglist_fg_focus = theme.yellow
theme.taglist_fg_occupied = theme.fg_normal
theme.taglist_fg_empty = "#404B66"
theme.taglist_bg_focus = theme.blue

theme.tasklist_plain_task_name = true

theme.titlebar_bg_normal = theme.bar
theme.titlebar_bg_focus = theme.bar_alt

theme.notif = themes_path .. "notif.png"
theme.screenshot = themes_path .. "screenshot.png"

----- Menu -----

theme.menu_height = dpi(35)
theme.menu_width  = dpi(200)
theme.menu_fg_focus = theme.fg_normal
theme.menu_fg_normal = theme.taglist_fg_empty
theme.menu_bg_focus = theme.bar_alt
theme.menu_bg_normal = theme.bar
theme.submenu = ""
theme.menu_font = theme.font_name .. " 12"

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.bg_widget = "#cc0000"

-- Define the image to load
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

-- Generate Awesome icon:
theme.awesome_icon = theme_assets.awesome_icon(
    theme.menu_height, theme.bg_focus, theme.fg_focus
)

-- Define the icon theme for application icons. If not set then the icons
-- from /usr/share/icons and /usr/share/icons/hicolor will be used.
theme.icon_theme = nil

-- Set different colors for urgent notifications.
rnotification.connect_signal('request::rules', function()
   rnotification.append_rule {
        rule       = { urgency = 'critical' },
        properties = { bg = '#ff0000', fg = '#ffffff' }
    }
end)

return theme 
