--
-- module wesmere

wesmere = {}
submodules = {"actions","units","misc","interface","wesmods","sides","scenario"}

for module_name in *submodules

    module = require module_name

    for k,thing in pairs(module)
        wesmere[k] = thing


return wesmere
