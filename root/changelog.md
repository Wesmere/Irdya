0.0.0 differences to the wml (wesnoth) api
* WSL API
  * general syntax changes
    * constants
      * all strings need to be quoted
      * multiline strings need this quoting: [[multiline \n string here]]
    * variables
      * $number -> number
    * wml toplevel tags -> lua/moonscript function call
      * [scenario] -> scenario
      * [unit_type] -> unit_type
      * no more closing: [/my_tag] <-- remove this line
      * optional: arguements to the function can be put in "()": scenario( scenari_table )
    * wml tags -> moonscript tables
      * [my_tag] -> my_table:
      * my_attribute= -> my_key:
      * no whitespace between key identifier and ":" allowed ( my_key : <- syntax error)
      * in most situations optional: tables can be put into "{}"
    * "yes" -> true (open for discussion)
    * "no" -> false (open for discussion)
    * "Elvish Fighter, Elvish Archer" -> {"Elvish Fighter","Elvish Archer"} (open for discussion)
  * [unit] -> unit: (in side table context) | unit() (in function context)
    * canrecruit= -> can_recruit:
    * [advancefrom] -> advance_from:
      * [attack] -> attack:
        * name=bow -> id:"bow"
        * description= _"bow" -> name: _"bow"
        * description: is now meant to hold a longer description of the weapon
  * [side] -> side: | side()
    * side=1 -> side: number:1 (open for discussion)

0.0.1
* "root" toplevel wesmod
  * wsl_handler definitions
  * ActionWSL functions (the counterpart to ActionWML)
  * CommandWSL functions ()
* "test" a wesmod meant for testing purposes
* "wesmere" - a wesmod with the wesnoth game content
  * port of the AOI campaign
  * description for all of Wesnoth's mainline units
  * all wesnoth terrain
