if status is-interactive
# Commands to run in interactive sessions can go here
end
set -gx PATH $HOME/.cargo/bin/ $HOME/.bun/bin/ $HOME/.rbenv/versions/3.2.2/bin/ $HOME/.local/share/Steam/steamapps/common/Aseprite $PATH
set -U fish_greeting

fish_vi_key_bindings
set fish_cursor_insert block
set fish_color_command green

bind tab accept-autosuggestion
bind -M insert tab accept-autosuggestion

bind -M insert alt-p 'prevd > /dev/null; commandline -f repaint'
bind alt-p 'prevd > /dev/null; commandline -f repaint'
bind -M insert alt-n 'nextd > /dev/null; commandline -f repaint'
bind alt-n 'nextd > /dev/null; commandline -f repaint'

bind ctrl-p up-or-search
bind ctrl-n down-or-search
bind -M insert ctrl-p up-or-search
bind -M insert ctrl-n down-or-search

abbr -a lock 'swaylock -f -c 000000'
abbr -a savepk 'pacman -Qttenq > ~/.config/packages.txt'
abbr -a cp 'cp -v'
abbr -a fd 'fd -H'             # note: using 'fd' as the alias keeps original name
abbr -a ls 'lsd'
abbr -a ps 'procs'
abbr -a mv 'mv -v'
abbr -a hd 'hexdump'
abbr -a grep 'grep --color=always'
abbr -a adapter_mode 'sudo usb_modeswitch -K -v 0bda -p 1a2b'
abbr -a hist 'history | fzf'

function cdf
    set dir (fd -H -t d | fzf)
    if test -n "$dir"
        cd $dir
    end
end

# ---- gif: convert mp4 to gif ----
function gif
    if test (count $argv) -ne 2
        echo "Usage: gif input.mp4 output.gif"
        return 1
    end
    ffmpeg -i "$argv[1]" -vf "fps=10,scale=640:-1:flags=lanczos" -y "$argv[2]"
end

# ---- record: record selection with wf-recorder and slurp ----
function record
    if test (count $argv) -ne 1
        echo "Usage: record output_file.mp4"
        return 1
    end
    wf-recorder -g (slurp) -f "$argv[1]"
end

# ---- Editor and keybindings ----
set -gx EDITOR nvim
