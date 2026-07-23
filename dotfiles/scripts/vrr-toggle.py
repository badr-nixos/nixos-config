#!/usr/bin/env python3
import subprocess
import i3ipc

TARGET_OUTPUT = "DP-2"
SWAYMSG = "/run/current-system/sw/bin/swaymsg"

def set_vrr(state):
    subprocess.run([SWAYMSG, f"output {TARGET_OUTPUT} adaptive_sync {state}"], stdout=subprocess.DEVNULL)

def check_fullscreen(ipc):
    tree = ipc.get_tree()
    focused = tree.find_focused()
    is_fullscreen = focused is not None and focused.fullscreen_mode == 1
    set_vrr("on" if is_fullscreen else "off")

def on_window_event(ipc, event):
    if event.change in ("fullscreen_mode", "focus", "close", "new"):
        check_fullscreen(ipc)

def main():
    ipc = i3ipc.Connection()
    check_fullscreen(ipc)
    ipc.on("window", on_window_event)
    ipc.main()

if __name__ == "__main__":
    main()
