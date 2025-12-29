for c in $(ls /usr/share/icons/default/cursors); do
  echo "testing $c"
  XCURSOR_THEME=default xsetroot -cursor_name "$c" 2>/dev/null
  sleep 1
done
