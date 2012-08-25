# Super git pull and push

So what does it do?

 - `git stash` *if unstaged changes are detected*
 - `git pull`
 - anything you want
 - `git push`
 - `git stash pop` *if something was stashed*

If any command executed fails, gpp will stop itself and
unstage any changes that may have been hidden.

## What do you mean by "anything you want"?

Basically if you create a file called `.gpp` in your
repository then run `gpp` in that directory then every line
will be executed like an extra command.

This is awesome for unit testing merges (after a pull) before
pushing back up and annoying your colleagues.

## Get me some of that

Just run:

```sh
curl -s https://raw.github.com/DrPheltRight/gpp/master/install.sh | sh
```

It will install `gpp` in `/usr/local/bin` so as long as that's
in your `$PATH` you should be able to run it immediately.

Since the install script puts the binary in `/usr/local/bin`
it assumes you require sudo priviledges and will prompt you
for your password. Check the script for yourself, it's safe
enough. If you have any suggestions for improvements send a
pull request.

## Author

Luke Morton

## License

MIT