# capture_screenshots.sh

```
./capture_screenshots.sh EACH_SECONDS [FULL_PATH]
```

Will capture screenshots every `EACH_SECONDS` in `FULL_PATH`, default path is `$HOME/Pictures/screenshots`

## Requirements

- Bash/KSH (probably works with others too)
- [scrot](http://scrot.sourcearchive.com/) to capture screenshots, but you can configure other command

## Configuration

### Environment variables

- `CAPTURE_SCREENSHOTS_COMMAND` defaults to `scrot`: Set command to capture screenshots
- `CAPTURE_SCREENSHOTS_FILENAME` defaults to `%s.png` (supported by scrot!): Set screenshot filename

## Installation

It's a good idea to copy it in a place in your `$PATH`, like `/usr/local/bin`.

## Wishlist
- Don't use SECONDS variable, as is not POSIX
