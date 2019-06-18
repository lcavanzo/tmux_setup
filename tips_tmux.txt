<c-b>t :: show a clock
<c-b>d :: detach a session

## attach and detach sessions
tmux ls :: list all active sessions
tmux new -s {session-name} -d :: create a new session but doesn't attach automatically
tmux attach -t {session-name} :: attaches a session

## killing sessions
tmux kill-session -t {session-name} :: kill a session

## move around windows
<c-b>n :: move next window
<c-b>p :: move previous window
<c-b>c :: create a new window
<c-b>0-n :: move to the n window
<c-b>w :: display a visual menu of the windows
<c-b>f :: Find a window that contains a string of text.
<c-b>& :: Displays a confirmation message in the status bar before killing off the window

## move around panes
<c-b>" ::  split new pane in half horizontally
<c-b>% ::  split new pane in half vertically
<c-b>o :: cycle through the panes
<c-b><SPACE> :: change the split's template
<c-b>x :: close a pane

##command Line
<c-b>: :: enter command mode
<c-b>: new-window -n processes “top” :: launch a new window that starts the top program

## In copy mode
<c-b>[ :: get in copy mode
c-b :: move one page down
c-f :: move one page up
g :: go to the first line
G :: go to the last line
? :: search a pattern upward
/ :: search a pattern downward

<c-b><space> :: start to copy and ENTER end the copy
<c-b>] :: paste the content 

#pop out a pane into its own window.
<c-b>!

## join a pane into a window
join-pane -s {session-name}:{window-number}

<c-b>z :: zoom a pane, press it again, exit

## move between sessions
<c-b>( :: move to the next session
<c-b>) :: move to the previuos session
<c-b>s :: show the active sessions

<c-b>. {session-name} :: move a window to a session

<c-b>I :: install plugins

# resurrect session
<c-b><c-s> :: save a session
<c-b>r :: restore a saved session
