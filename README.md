# Water Simulation System

A visually impressive and physically accurate water simulation system for ROBLOX with realistic reflections, wave dynamics, and interactive physics.

## Features

- 🌊 **Realistic Wave Physics** - Simulates water waves with height displacement and propagation
- 💧 **Dynamic Reflections** - Real-time reflections with customizable surface properties
- ✨ **Visual Effects** - Particle systems, foam generation, and spray effects
- 🎮 **Interactive** - Water responds to objects and forces in real-time
- ⚡ **Optimized** - Efficient rendering and physics calculations
- 🎨 **Customizable** - Adjust colors, transparency, wave speed, and more

## Installation

1. Clone or download this repository
2. Copy the water simulation scripts to your ROBLOX game
3. Add a Part to your workspace where you want the water
4. Attach the WaterSimulation script to that Part

## Usage

```lua
local WaterSimulation = require(game.ServerScriptService.WaterSimulation)

local waterPart = game.Workspace.Water
local water = WaterSimulation.new(waterPart, {
    resolution = 32,
    waveSpeed = 0.5,
    waveAmplitude = 0.3,
    color = Color3.fromRGB(0, 150, 255),
    transparency = 0.3
})

water:Start()
```

## Scripts Included

- `WaterSimulation.lua` - Core water engine
- `WavePhysics.lua` - Wave calculation and propagation
- `VisualEffects.lua` - Particle systems and rendering
- `Example.lua` - Complete example implementation

## Configuration

Customize water properties:
- `resolution` - Water mesh resolution (higher = more detailed)
- `waveSpeed` - How fast waves propagate
- `waveAmplitude` - Wave height intensity
- `color` - Water color (RGB)
- `transparency` - Water opacity (0-1)
- `friction` - Wave dampening

## Performance

- Optimized for 60 FPS gameplay
- Adjustable resolution for performance tuning
- Efficient update cycles

## Author

Created by @Arnsgaming8

---

**Make your ROBLOX games shine with realistic water!** 💧✨