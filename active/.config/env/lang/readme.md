# Language Installations

## Node.js

> SEE: http://nodejs.org/dist
> SEE: http://nodejs.org/dist/latest

## Install a new version

```sh
source ~/.config/env/lang/node
mkdir -p $NODE_PATH
curl -L# http://nodejs.org/dist/$NODE_VERSION/$NODE_BASE-$NODE_VERSION-darwin-x64.tar.gz | tar xvz --strip 1 --exclude=CHANGELOG.md --exclude=LICENSE --exclude=README.md -C $NODE_PATH 2>/dev/null
exec $SHELL -l
```

## Switch to a different default version (applies to all new shells)

```sh
ls $NODE_HOME/versions
$EDITOR ~/.config/env/lang/node # change value of NODE_VERSION
exec $SHELL -l
```
