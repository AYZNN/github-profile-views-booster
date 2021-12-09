io.write('\027[94mEnter your GitHub views counter URL\27[0m: ')
local url = io.read()

local count = 0

while true do
    os.execute('curl --silent --output nul --show-error --fail '..url)
    count = count + 1
    print('\027[1mGitHub views Booster: \027[32m+'..tostring(count)..'\27[0m')
end
