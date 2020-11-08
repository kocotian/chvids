# chvids
POSIX sh script for listing, watching and downloading YouTube channels videos from terminal

## installation
```sh
$ git clone https://git.kocotian.pl/chvids
# make install
```

## usage
There are 2 scripts - **chvids**, main script used to get channel videos and list them or play/download selected and second script, **channels** that is frontend to **chvids**, script gets urls from newsboat config file and parses them.

**channels** usage:
simply write
```
$ channels
```
and you will get interactive prompt where you can type:
- `l` to list all channels
- `s` to select channel, if you type `s`, you will get next prompt, where you must write selected channel number or `l`/`h`/`q`
- `h` to get help
- `q` to quit

If you select channel, you will get next interactive prompt, now from **chvids** script. There are similar usage:
- `l` to list all videos
- `p` to play video
- `d` to download video
- `h` to help
- `q` to quit

`p` and `d` in **chvids** is similar to `s` in **channels**.

## configuration
**channels** script is strictly based on newsboat config file. Script gets all YouTube links from file and parses them.
If you want add or remove channels, open this file. File path is `~/.config/newsboat/urls`.
Remember that file must be in this format:
```
https://www.youtube.com/feeds/videos.xml?channel_id=<CHANNEL ID> <Tab> "~<Channel name>"
```
for example:
```
https://www.youtube.com/feeds/videos.xml?channel_id=UC2eYFnH61tmytImy1mTYvhA	"~Luke Smith"
```
of course, **channels** is only frontend for main **chvids** scripts. You can write own scripts that will get an YouTube channel ID and give it as an argument to **chvids** script. **chvids** is less configurable, only thing that you would edit is **OpenTube** instance, but in time where i write this README, probably there are only one instance (maybe because code is only on my server for now, cause it's still in alpha, but i hope that in the nearest future code will be published for other peoples).
