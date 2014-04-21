if [ -d ./bootstrap ]; then
  for i in ./bootstrap/*.sh; do
    if [ -r $i ]; then
      . $i
    fi
  done
  unset i
fi
