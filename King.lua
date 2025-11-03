-- Script para obtener todo gratis en Brookhaven (Delta)

-- Cargar la biblioteca de Delta
local delta = require(game:GetService("ReplicatedStorage").Delta)

-- Función para obtener todo gratis
local function obtenerTodoGratis()
    -- Obtener todos los objetos del juego
    local objetos = game:GetService("ReplicatedStorage").Objetos:GetChildren()
    
    -- Iterar sobre los objetos
    for _, objeto in pairs(objetos) do
        -- Obtener el precio del objeto
        local precio = objeto:FindFirstChild("Precio")
        
        -- Si el objeto tiene un precio, establecerlo en 0
        if precio then
            precio.Value = 0
        end
    end
end

-- Llamar a la función
obtenerTodoGratis()
