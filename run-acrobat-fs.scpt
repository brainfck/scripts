tell application "Adobe Acrobat Reader DC"
    activate
    delay 3
    tell application "System Events"
        keystroke "f" using {control down, command down}
    end tell
    delay 1
end tell
