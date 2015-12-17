
wsl_action

    id: "set_variable"
    description: [[The [set_variable] tag is used to create and manipulate WML variables. The VARIABLE macro is a quick syntactic shortcut for simple variable creation and the VARIABLE_OP macro is a quick syntactic shortcut for performing simple mathematical operations on variables.]]

    scheme:
        name:
            description: "the name of the variable to manipulate"
            type: "string"
        value:
            description: "set the variable to the given value (can be numeric or string). Use literal for no substitution. (see VariablesWML)"
        literal:
            description: "set the variable to the given value (can be numeric or string). This does not interpret any dollar signs."
        to_variable:
            description: "set the variable to the value of the given variable, e.g. 'to_variable=temp' would be equivalent to 'value=$temp'."
        add:
            description: "add the given amount to the variable."
        sub:
            description: "subtract the given amount from the variable."
        multiply:
            description: "multiply the variable by the given number. The result is a float.
To negate a number, multiply by -1. If you negate 0, the result is a floating-point negative zero -0. To display -0 as 0, use a second tag with add=0; it will flip -0 to 0 but not affect other numbers."
        divide:
            description: "divide the variable by the given number. The result is a float. Wesnoth 1.9 and later no longer uses integer division. Use a second tag with round=floor if you relied on this."
        modulo:
            description: "returns the remainder of a division."
        rand:
            description: [[the variable will be randomly set.
You may provide a comma separated list of possibilities, e.g. 'rand=Bob,Bill,Bella'.
You may provide a range of numbers (integers), e.g. 'rand=3..5'.
You may combine these, e.g. 'rand=100,1..9', in which case there would be 1/10th chance of getting 100, just like for each of 1 to 9. If a number or item is repeated, it is sampled more frequently as appropriate. See MultiplayerContent for more info on the MP case.
Using rand= will automatically result in the current action being non undoable. Ignoring possible [allow_undo].
time=stamp: Retrieves a timestamp in milliseconds since wesnoth was started, can be used as timing aid. Don't try to use this as random value in MP since it will cause an OOS.
string_length: Retrieves the length in characters of the string passed as this attribute's value; such string is parsed and variable substitution applied automatically (see VariablesWML for details).]]

        join:
            description: "joins an array of strings to create a textual list"

            scheme:
                variable: "name of the array"
                key: "the key of each array element(array[$i].foo) in which the strings are stored"
                separator: "separator to connect the elements"
                remove_empty: "whether to ignore empty elements"
                ipart: "Assigns the integer part (the part to the left of the decimal point) of the referenced variable."
                fpart: "Assigns the decimal part (the part to the right of the decimal point) of the referenced variable."
                round: "Rounds the variable to the specified number of digits of precision. Negative precision works as expected (rounding 19517 to -2 = 19500). Special values:
round=ceil: Rounds upward to the nearest integer.
round=floor: Rounds down to the nearest integer."
