#!/bin/bash


# ~ amixer -c 1 controls
# numid=6,iface=CARD,name='Keep Interface'
# numid=3,iface=MIXER,name='PCM Playback Switch'
# numid=4,iface=MIXER,name='PCM Playback Volume'
# numid=5,iface=MIXER,name='Mic Capture Volume'
# numid=1,iface=PCM,name='Capture Channel Map'
# numid=2,iface=PCM,name='Playback Channel Map'
# ~ amixer -c 3 controls
# numid=7,iface=CARD,name='Keep Interface'
# numid=5,iface=MIXER,name='Mic Capture Switch'
# numid=6,iface=MIXER,name='Mic Capture Volume'
# numid=3,iface=MIXER,name='Speaker Playback Switch'
# numid=4,iface=MIXER,name='Speaker Playback Volume'
# numid=2,iface=PCM,name='Capture Channel Map'
# numid=1,iface=PCM,name='Playback Channel Map'

# headset stuff
# to mute playback
amixer -c 1 cset numid=3 0
# to mute headset mic
amixer -c 1 cset numid=5 0
# unmute
amixer -c 1 cset numid=5 20

# power mic stuff
amixer -c 3 cset numid=5 0
