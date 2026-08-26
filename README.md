# CS 276 · Pac-Man, One Build at a Time

The companion repo for **Lecture W1R1: Building Pac-Man**. Each branch is a
checkpoint from class; `main` is the finished state.

| Branch | What works | GDScript you meet there |
| --- | --- | --- |
| `Build1` | Pac-Man moves with the arrow keys | variables & static typing, `Vector2`, functions, if/elif, `delta` |
| `Build2` | Pac-Man faces where he is going | `match`, node references (`$Sprite2D`), sprite flip/rotation |
| `Build3` | A row of pellets you can eat; score in Output | scenes-in-code (`preload` + `instantiate`), `for` loops, a first **signal** |
| `main`   | All of the above plus a wandering ghost | arrays, `pick_random()`, `Timer` |

## Presenting from this repo

```bash
git checkout Build1    # movement done, nothing else
git checkout Build2    # after the facing build
git checkout Build3    # after pellets
git checkout main      # the complete demo
```

Godot notices files changing underneath it: when you switch branches with the
editor open, accept the **Reload from disk** prompt. (Close any script tabs you
edited live first, or your edits will fight the checkout.)

## Try it

```bash
git clone https://github.com/LucasCordova/pacman.git
cd pacman
```

Open `project.godot` in Godot (standard build). Run the project; arrow keys move
Pac-Man. On `main`, watch the ghost wander through the pellet row: it *eats the
pellets*. That is not a bug we fix today, it is Thursday's cliffhanger.
Why does the pellet not care who touched it? Collision layers and masks: next week.

## What is deliberately missing

Walls and real collision (next week), the score on *screen* instead of the Output
panel (signals, week 3), ghost brains (state machines, week 4), the actual maze
(level building, week 10). Pac-Man grows with the course.

## Optional: git inside the Godot editor

Godot can show commits, diffs, and changed files **inside the editor** via the
official [Godot Git Plugin](https://github.com/godotengine/godot-git-plugin).
This is optional - plain `git` in a terminal does everything this course needs -
but if you like the in-editor view:

1. In Godot, open **AssetLib** (top center), search **"Godot Git Plugin"**, and
   install it into this project - or download the latest release from GitHub and
   extract so the folder is `addons/godot-git-plugin/`. GDExtension plugins load
   automatically; there is nothing to enable.
2. **Project → Version Control → Version Control Settings**, choose
   **GitPlugin**, and click **Connect to VCS**. A Commit dock and a Version
   Control panel appear.
3. **macOS note:** if the editor reports it cannot load the plugin, macOS
   quarantined the downloaded library. Allow it under System Settings → Privacy
   & Security, or run
   `xattr -d com.apple.quarantine addons/godot-git-plugin/macos/*.dylib`.

Keep the plugin out of your commits: it is a per-machine tool, not part of the
game (this repo ignores `addons/` locally via `.git/info/exclude`; add the same
line in your own repos, or add `addons/godot-git-plugin/` to `.gitignore`).

## Credits

All art is original coursework (drawn in the course's arcade palette); no Namco
assets are used or included. Void where prohibited.
