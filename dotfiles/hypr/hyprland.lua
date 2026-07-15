hl.monitor({
    output   = "DP-2",
    mode     = "3440x1440@165",
    position = "0x0",
    scale    = 1,
    vrr      = 2,
})
-- ENVIRONMENT
hl.env("XCURSOR_THEME", "phinger-cursors-dark")
hl.env("XCURSOR_SIZE",  "24")
hl.env("XCURSOR_PATH", "/home/badr/.local/share/icons/")
-- GENERAL / DECORATION / INPUT / MISC
hl.config({
    general = {
        gaps_in          = 8,
        gaps_out         = 16,
        border_size      = 3,
        resize_on_border = true,
        allow_tearing    = true,
        layout           = "master",
        col = {
		active_border   = "rgb(D8B07A)",
		inactive_border = "rgb(44403C)",
        },
  },

  master = {
    mfact                 = 0.5674,
    new_on_top            = false,
    orientation           = "left",
    smart_resizing        = true,
  },

    decoration = {
        rounding         = 5,
        rounding_power   = 2,
        active_opacity   = 1.0,
        inactive_opacity = 1.0,
        shadow = {
            enabled      = true,
            range        = 10,
            render_power = 3,
            color        = "0x55000000",
        },
        blur = {
            enabled  = true,
            size     = 4,
            passes   = 2,
            vibrancy = 0.8,
            new_optimizations = true,
            xray = true,
	    ignore_opacity = true,
        },
    },

    animations = { enabled = true },

    dwindle = {
        preserve_split = true,
        smart_resizing = true,
    	force_split    = 2,
    	smart_split    = false,
    },

    xwayland = {
       force_zero_scaling = true,
    },

    input = {
        kb_layout    = "us,ara",
	kb_variant = ",",
        kb_options   = "grp:alt_shift_toggle",
        kb_model     = "pc101",
        repeat_delay = 300,
        repeat_rate  = 40,
        follow_mouse = 0,
	float_switch_override_focus = 0,
        sensitivity  = 0,
    },

    misc = {
        disable_hyprland_logo   = true,
        force_default_wallpaper = 0,
	disable_splash_rendering = true,
	initial_workspace_tracking = 1
    },

cursor = {
    no_warps = true,
    inactive_timeout = 0,
    hide_on_key_press = false,
    hide_on_touch = false,
    enable_hyprcursor = false,
    no_hardware_cursors = false,
},
render = {
    direct_scanout = true,
},
-- MOUSE
hl.device({
    name          = "logitech-pro-x-2-1",
    accel_profile = "flat",
    sensitivity   = -0.3,
})
--
})
hl.curve("modernStandard", { type = "bezier", points = { {0.23, 1.0}, {0.32, 1.0} } })

hl.animation({ leaf = "global",      enabled = true,  speed = 5.0, bezier = "modernStandard" })
hl.animation({ leaf = "windows",     enabled = true,  speed = 4.0, bezier = "modernStandard", style = "gnomed" })
hl.animation({ leaf = "windowsIn",   enabled = false, speed = 4.0, bezier = "modernStandard", style = "gnomed" })
hl.animation({ leaf = "windowsOut",  enabled = false, speed = 4.0, bezier = "modernStandard", style = "gnomed" })
hl.animation({ leaf = "windowsMove", enabled = true,  speed = 5.5, bezier = "modernStandard", style = "gnomed" })
hl.animation({ leaf = "layers",      enabled = true,  speed = 4.5, bezier = "modernStandard", style = "slide" })
hl.animation({ leaf = "layersIn",    enabled = true,  speed = 4.5, bezier = "modernStandard", style = "slide" })
hl.animation({ leaf = "layersOut",   enabled = true,  speed = 4.5, bezier = "modernStandard", style = "slide" })

hl.animation({ leaf = "fade",          enabled = true, speed = 5.0, bezier = "modernStandard" })
hl.animation({ leaf = "fadeIn",        enabled = true, speed = 5.0, bezier = "modernStandard" })
hl.animation({ leaf = "fadeOut",       enabled = true, speed = 5.0, bezier = "modernStandard" })
hl.animation({ leaf = "fadeSwitch",    enabled = true, speed = 5.0, bezier = "modernStandard" })
hl.animation({ leaf = "fadeShadow",    enabled = true, speed = 5.0, bezier = "modernStandard" })
hl.animation({ leaf = "fadeDim",       enabled = true, speed = 5.0, bezier = "modernStandard" })
hl.animation({ leaf = "fadeLayers",    enabled = true, speed = 5.0, bezier = "modernStandard" })
hl.animation({ leaf = "fadeLayersIn",  enabled = true, speed = 5.0, bezier = "modernStandard" })
hl.animation({ leaf = "fadeLayersOut", enabled = true, speed = 5.0, bezier = "modernStandard" })
hl.animation({ leaf = "fadePopups",    enabled = true, speed = 5.0, bezier = "modernStandard" })
hl.animation({ leaf = "fadePopupsIn",  enabled = true, speed = 5.0, bezier = "modernStandard" })
hl.animation({ leaf = "fadePopupsOut", enabled = true, speed = 5.0, bezier = "modernStandard" })
hl.animation({ leaf = "border",        enabled = true, speed = 5.0, bezier = "modernStandard" })
hl.animation({ leaf = "borderangle",   enabled = true, speed = 5.0, bezier = "modernStandard" })
hl.animation({ leaf = "workspaces",       enabled = true,  speed = 5.5, bezier = "modernStandard", style = "slide" })


hl.on("hyprland.start", function()
    hl.exec_cmd("waybar")
    hl.exec_cmd("sleep 2 && linux-wallpaperengine --assets-dir /mnt/m2/SteamLibrary/steamapps/common/wallpaper_engine/assets --screen-root DP-2 /mnt/m2/SteamLibrary/steamapps/workshop/content/431960/2286810582/")
    hl.exec_cmd("gsettings set org.gnome.desktop.interface gtk-theme 'Adwaita-dark'")
    hl.exec_cmd("gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'")
    hl.exec_cmd("gsettings set org.gnome.desktop.interface cursor-theme 'phinger-cursors-dark'")
    hl.exec_cmd("gsettings set org.gnome.desktop.interface cursor-size 24")
    hl.exec_cmd("gsettings set org.gnome.desktop.interface font-name 'Inter 13'")
end)
-- KEYBINDS
local mod  = "SUPER"
local mods = "SUPER + SHIFT"
--
hl.bind(mod  .. " + Return", hl.dsp.exec_cmd("kitty"))
hl.bind(mod  .. " + d",      hl.dsp.exec_cmd("rofi -show drun"))
hl.bind(mod  .. " + q",      hl.dsp.window.close())
hl.bind(mod  .. " + F12",    hl.dsp.exec_cmd("grim -g \"$(slurp)\""))
hl.bind(mods .. " + C", hl.dsp.exec_cmd("hyprctl reload full-reset"))
hl.bind(mods .. " + E",      hl.dsp.exec_cmd("hyprctl dispatch exit"))
-- focus
hl.bind(mod .. " + H",     hl.dsp.focus({ direction = "left"  }))
hl.bind(mod .. " + J",     hl.dsp.focus({ direction = "down"  }))
hl.bind(mod .. " + K",     hl.dsp.focus({ direction = "up"    }))
hl.bind(mod .. " + L",     hl.dsp.focus({ direction = "right" }))
hl.bind(mod .. " + left",  hl.dsp.focus({ direction = "left"  }))
hl.bind(mod .. " + down",  hl.dsp.focus({ direction = "down"  }))
hl.bind(mod .. " + up",    hl.dsp.focus({ direction = "up"    }))
hl.bind(mod .. " + right", hl.dsp.focus({ direction = "right" }))
-- move
hl.bind(mods .. " + H",     hl.dsp.window.move({ direction = "left"  }))
hl.bind(mods .. " + J",     hl.dsp.window.move({ direction = "down"  }))
hl.bind(mods .. " + K",     hl.dsp.window.move({ direction = "up"    }))
hl.bind(mods .. " + L",     hl.dsp.window.move({ direction = "right" }))
hl.bind(mods .. " + left",  hl.dsp.window.move({ direction = "left"  }))
hl.bind(mods .. " + down",  hl.dsp.window.move({ direction = "down"  }))
hl.bind(mods .. " + up",    hl.dsp.window.move({ direction = "up"    }))
hl.bind(mods .. " + right", hl.dsp.window.move({ direction = "right" }))
-- workspaces
for i = 1, 10 do
    local key = i % 10
    hl.bind(mod  .. " + " .. key, hl.dsp.focus({ workspace = i }))
    hl.bind(mods .. " + " .. key, hl.dsp.window.move({ workspace = i, follow = false }))
end
--
hl.bind(mod .. " + F",     hl.dsp.window.fullscreen())
hl.bind(mod .. " + space", hl.dsp.window.float({ action = "toggle" }))
-- mouse
hl.bind(mod .. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mod .. " + mouse:273", hl.dsp.window.resize(), { mouse = true })
-- WINDOW RULES
hl.window_rule({
    name           = "suppress-maximize",
    match          = { class = ".*" },
    suppress_event = "maximize",
})
--
hl.window_rule({
    name     = "fix-xwayland-drags",
    match    = { class = "^$", title = "^$", xwayland = true, float = true, fullscreen = false, pin = false },
    no_focus = true,
})

hl.window_rule({
    name  = "center-floating",
    match = { float = true },
    center = true,
})

