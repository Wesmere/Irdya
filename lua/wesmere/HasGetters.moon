----
-- lifted from leafo.net
class HasGetters
    getters: {}
    __inherited: (cls) =>
        old_init = cls.__init
        cls.__init = (...) =>
            old_init @, ...

            mt = getmetatable @
            old_index = mt.__index

            mt.__index = (name) =>
                if type(old_index) == "function"
                    old_index @, name
                elseif getter = old_index.getters[name]
                    getter @
                else
                    old_index[name]

return HasGetters
