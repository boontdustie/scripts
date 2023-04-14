# Available Custom Commands

* `cmd` - Shows this README, with all custom commands

## Git

* `gistit` - Creates private gist of what is currently on pasteboard.

    example usage: `git diff master | pbcopy | gistit`

* `ggd` - Calls script `gistgitdiff` for most common usage:

    `git diff $1 | pbcopy | gistit $2`

    $1: Pass the branch to diff against
    $2: Name of diff file

* `log` - Improved git log, useful with `rebase`

* `rebase` - Rebases up to a specific SHA.

    `rebase 9fa9jka3`

* `clean-branches` - Delete local branches already merged into master.

## Mailcatcher

* `mc_count` - Count of the email currently in mailcatcher

* `mc_delete` - Deletes all the email currently in mailcatcher

## Stackoverflow

* `r2` - Use how2 stackoverflow cmd to find answers about ruby questions

  `r2 <some ruby question>`

  If you want to ask a question in a different lang, use:

  `how2 -l <lang> <query>`

## Web

 `serve` - Run simple python server for current dir

## Misc

* `her` - Kicks off mplayer stream for Hollow Earth Radio
* `weather` - Show the current weather in your location
