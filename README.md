[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-22041afd0340ce965d47ae6ef1cefeee28c7c493a6346c4f15d667ab976d596c.svg)](https://classroom.github.com/a/19cMSIh9)
# NeXTCS Final Project
### Name 0: Ryan Gao
---

### Project Description
This project aims to recreate the basic concept of the game, "Idle Breakout", involving a ball that bounces off 'bricks'. When the ball makes contact with a brick, one can then use the money gained from 'damaging' a brick (with a 1:1 damage to money ratio) to purchase more balls. The player can additionally directly support the brick breaking game by using the mouse to click on the bricks, producing the same damage effect. Refer to https://idle-breakout.neocities.org/ as an example. 

### Skill Usage
Skills used:
- Classes:
  - Balls, Bricks
- Data Structures:
  -  2d Array: Brick Layout(s)
  -  1d Array: Damage levels? (doable with instance variables...)

### Controls
How will your program be controlled? List all keyboard commands and mouse interactions.

Keyboard Commands:
- Keys 1-3:
    - Purchases a ball without needing to click.
- E: (TBD)
    - Opens up upgrade screen?

Mouse Control:
- Mouse movement: N/A
- Mouse pressed:
  - On brick: deals click damage
  - On purchase box: subtracts labeled purchase cost from total money, increases by some factor, makes new instance of the corresponding ball in center. 


### Classes
What classes will you be creating for this project? Include the instance variables and methods that you believe you will need. You will be required to create at least 2 different classes. If you are going to use classes similar to those we've made for previous assignments, you will have to add new features to them.
- Ball Class:
  - Variables:
      - Speed
      - Size
      - Type (also determines color)
- BrickGrid (TBD)
  - Contains different layouts of bricks
- Brick Subclass (required)
    - Health
    - Color (TBD)
