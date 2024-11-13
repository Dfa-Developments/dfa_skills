# Skills for RedM Converted & Redesigned by [DFA-Developments](https://dfadevelopments.tebex.io)
## For RSG (Goat) Framework

Just a basic Skill UI with some exports to add skills and skill checks to your resources. Skills are updated when the player logs off and when they are dropped from the server.

# Preview
![Preview](https://i.ibb.co/J7fzXzq/image.png)

# Orignal Release - [QW_SKILLS](https://github.com/qw-scripts/qw_skills) (FiveM)

## Dependencies

- ox_lib
- oxmysql
- RSGCore

## Installation

- DOWNLOAD THE DAMN RELEASE PLEASE!!!!!!!!
- unzip and drag the RELEASE into your resources and make sure to `ensure` it in your `server.cfg`
- run the provided `skills.sql` file and ensure it has updated your `players` table in the database
- setup the skills you want in the config file
- use the damn thing



## Exports

```lua
exports['dfa_skills']:UpdateSkill(skill, progress)

-- skill: Skill name you have created in the config
-- progress: Amount of XP to add to that skill

-- USAGE:

local randomXPChance = math.random(1, 100)

if randomXPChance <= 100 then
    local randomXP = math.random(1, 10)

    exports['dfa_skills']:UpdateSkill('searching', randomXP)
end
```

```lua
exports['dfa_skills']:GetCurrentSkill(skillToCheck)

-- skillToCheck: Skill you want to check the data for, anyone you created in the config

-- USAGE:

local skill = exports['dfa_skills']:GetCurrentSkill('searching')

if skill and skill.level == 2 then
    print('searching is level 2')
else
    print('searching is not level 2')
end
```

## Events

```lua
-- On the Server
TriggerClientEvent('dfa_skills:client:openMenu', src)

-- On the Client
TriggerEvent('dfa_skills:client:openMenu')

-- Can be used to trigger the skill menu if you don't want to use the command
```

### Check Out Our Tebex Store
Looking for more scripts to enhance your RedM experience? Visit our Tebex store to explore our full collection of scripts!

### 🔗 [Visit Our Tebex Store](https://dfadevelopments.tebex.io)
