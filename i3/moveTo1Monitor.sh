cp -f /home/wabri/.config/i3/config1monitor /home/wabri/.config/i3/config; ./.config/i3/arandrConfigMONO.sh; i3-msg 'workspace 1;move workspace to primary'; i3-msg 'workspace 3;move workspace to primary'; i3-msg 'workspace 5;move workspace to primary'; i3-msg 'workspace 7;move workspace to primary'; i3-msg 'workspace 9;move workspace to primary' ; i3-msg 'workspace 1'; i3-msg restart ;