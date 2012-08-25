# gpp: git pull and push sugar

A simple command for syncing your git repository with a
remote while stashing changes.

Once [installed](#installing) all you have to do is:

``` sh
gpp
```

## What does it do?

 - `git stash` *if unstaged changes are detected*
 - `git pull`
 - anything you want
 - `git push`
 - `git stash pop` *if something was stashed*

If any command executed returns an error status greater than
`0` `gpp` will stop itself and unstash any changes that may
have been stashed.

## What do you mean by "anything you want"?

If a file called `.gpp` exists in your repository then run
`gpp` in that directory then every line will be executed like
an extra command.

This is awesome for unit testing merges after a pull before
pushing back up and annoying your colleagues.

## Installing

Just run:

```sh
curl -s https://raw.github.com/DrPheltRight/gpp/master/install.sh | sh
```

It will install `gpp` in `/usr/local/bin`. As long as that's
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