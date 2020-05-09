#!/usr/bin/env python3


import i3ipc
i3 = i3ipc.Connection()
tree = i3.get_tree()
focused = tree.find_focused()

print('Focused window %s is on workspace %s' %
      (focused.name, focused.workspace().name))

def on_window_focus(i3, e):
    workspace = i3.get_tree().find_focused().workspace().num
    i3.command("resize set 1400 1080")
    i3.command('move container to "%s"' % workspace)



# subscribe to an event
i3.on("window::focus", on_window_focus)



i3.main()
