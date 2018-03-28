function peco_select_tmux_session
    begin
        if [ $TMUX ]
            echo 'Do not use this command in a tmux session.'
            return 1
        end

        set session (tmux list-sessions | peco | cut -d : -f 1)
        if [ $session ]
            tmux a -t $session
        end
    end
end
