# Env variables
# system
set -gx COLORTERM truecolor
set -gx EDITOR nvim
set -gx VISUAL nvim
set -gx BROWSER qutebrowser
set -gx VIRTUAL_ENV_DISABLE_PROMPT true
set -gx FZF_DEFAULT_OPTS_FILE $HOME/.config/fzf_config.ini

set -gx WTTR_MYDIR /home/fox/sources/GeoLite2-City_20250516
set -gx WTTR_GEOLITE /home/fox/sources/GeoLite2-City_20250516/GeoLite2-City.mmdb
set -gx WTTR_WEGO /usr/bin/wego
set -gx WTTR_LISTEN_HOST 0.0.0.0
set -gx WTTR_LISTEN_PORT 8002
set -gx GRADLE_OPTS '--enable-native-access=ALL-UNNAMED'
