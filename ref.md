# Sane Vim Primer

## Verbs
Verbs are actions taken in vim on segments of text.
`d` - delete
`c` - change
`y` - yank (copy)
`v` - visually select (`V` for lines vs. characters)

## Modifiers
Users before text to describe your "verb"
`i` - inside
`a` - around
`NUM` - number
`t` - searches for something and stops before it
`f` - searches for a thing and lands on it
`/` - find a string (literal or regex)

## Nouns
Text you can do things to
`w` - word
`s` OR `)` - sentence 
`p` OR `}` - paragraph
`t` - tag (HTML/XML)
`b` - block

## Examples
Delete two words - `d2w`
Change inside sentence - `cis`
Yank inside paragraph - `yip`
Change to open bracke - `ct<`

## Working with Files
`vi <file` - open file in vim
`:w` - write changes to the file
`:q!` - get out of vim without saving
`wq` - write changes and quit
`:saveas ~/some/path/` - save to the path
`ZZ` - same as `wq`

## Navigating Text
`/<text>` - searches for string in <text>
`n` - navigates to the next instance
`N` - navigates to previous instance

