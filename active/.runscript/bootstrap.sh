# shell scripts
if [ -d ./bootstrap ]; then
  for i in ./bootstrap/*.sh; do
    if [ -r $i ]; then
      . $i
    fi
  done
  unset i
fi

# apple scripts
if [ -d ./bootstrap ]; then
  for i in ./bootstrap/*.scpt; do
    if [ -r $i ]; then
      osascript $i
    fi
  done
  unset i
fi
