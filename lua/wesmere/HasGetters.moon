----
-- lifted from leafo.net
-- @classmod HasGetters

----
-- Classes deriving from HasGetters can be extended to
class HasGetters
    getters: {}
    -- setters: {}


    __inherited: (cls) =>
        old_init = cls.__init
        cls.__init = (...) =>
            old_init @, ...

            mt = getmetatable @
            old_index = mt.__index
            -- old_newindex = mt.__newindex

            mt.__index = (name) =>

                old_index_is_function = type(old_index) == "function"

                if name == "getters" -- prevent endless loop
                    if old_index_is_function
                        return old_index @, "getters"
                    else
                        return old_index.getters

                getters = if old_index_is_function
                    old_index @, "getters"
                    else rawget(old_index, "getters")

                getter_value = switch type(getters)
                    when "function"
                        getters @, name
                    when "table"
                        if getter = getters[name]
                            getter @
                    else nil

                return getter_value unless getter_value == nil

                if old_index_is_function
                    old_index @, name
                else
                    old_index[name]

            -- mt.__newindex = (name) =>

            --     old_index_is_function = type(old_newindex) == "function"

            --     if name == "setters"
            --         if old_index_is_function
