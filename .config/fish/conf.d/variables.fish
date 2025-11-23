# Hide welcome message
set -U fish_greeting

# disable the default virtualenv prompt change (managed by starship)
set -x VIRTUAL_ENV_DISABLE_PROMPT "1"

# python breakpoint debugger
set -x PYTHONBREAKPOINT "ipdb.set_trace"

set -x PYENV_ROOT $HOME/.pyenv

# override manpage $PAGER variable
# https://github.com/sharkdp/bat/issues/652
set -x MANROFFOPT "-c" 
set -x MANPAGER "sh -c 'col -bx | bat -plman'"

# Set settings for https://github.com/franciscolourenco/done
set -U __done_min_cmd_duration 10000
set -U __done_notification_urgency_level low
