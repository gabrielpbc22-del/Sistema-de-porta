local Botao = script.Parent -- auto explicativo
local Porta = script.Parent.Parent.Parent.Door -- Porta q o script ira afetar
local Som = game.SoundService["Button Sound"] -- Som para o botão

local Aberto = false
local Debounce = false

Botao.MouseClick:Connect(function()
	if Debounce then return end
	Debounce = true

	Som:Play()

	if Aberto == false then
		for i = 1, 50 do
			Porta.CFrame = Porta.CFrame + Porta.CFrame.YVector * 0.15	
			task.wait()
		end
		Aberto = true
	else
		for i = 1, 50 do
			Porta.CFrame = Porta.CFrame - Porta.CFrame.YVector * 0.15
			task.wait()
		end
		Aberto = false
	end

	task.wait(0.5) -- Sistema para evitar spam (tive que usar AI para essa função)
	Debounce = false
end)

--ID usando para o som de botao: 137780443147214
-- para alterar a altura de onde a porta ira, basta mudar o valor da linha 16,22
