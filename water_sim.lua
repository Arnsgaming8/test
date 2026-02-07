-- water_sim.lua
-- A simple interactive water simulation in Lua using Love2D

local particles = {}

function love.load()
    love.window.setTitle("Water Simulation")
    love.window.setMode(800, 600)
end

function love.update(dt)
    for i, p in ipairs(particles) do
        p.y = p.y + p.velocity * dt
        p.velocity = p.velocity + 0.1 * dt  -- gravity effect
        if p.y > love.graphics.getHeight() then
            p.y = love.graphics.getHeight()
            p.velocity = 0
        end
    end
end

function love.mousepressed(x, y, button, istouch, presses)
    if button == 1 then
        table.insert(particles, {x = x, y = y, velocity = 0})
    end
end

function love.draw()
    love.graphics.clear(0.5, 0.7, 0.9)  -- Clear with sky color
    love.graphics.setColor(0, 0, 1)  -- Set color for water
    for i, p in ipairs(particles) do
        love.graphics.circle("fill", p.x, p.y, 5)
    end
end
