#!/usr/bin/osascript
# Dependency: This script requires Signal to be installed: https://signal.org

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Signal
# @raycast.mode silent

# Optional parameters:
# @raycast.icon images/messenger.png
# @raycast.packageName Signal
# @raycast.argument1 { "type": "text", "placeholder": "Name" }

# Documentation:
# @raycast.author Odysseas
# @raycast.authorURL https://github.com/odyslam

on run argv
	### Configuration ###
	
	set keystrokeDelay to 2.5
	set conversationKeystrokeDelay to 0.5
	
	### End of configuration ###
	
	if (count of argv) is equal to 0 then
		display dialog "Please enter a name to search for in Signal." buttons {"OK"} default button 1
		return
	end if
	
	set searchTerm to item 1 of argv
	
	if application "Signal" is running then
		tell application "Signal" to activate
	else
		do shell script "open -a Signal"
		delay keystrokeDelay
	end if
	
	tell application "System Events" to tell process "Signal"
		keystroke "f" using {command down} -- Adjust if Signal uses a different shortcut for search.
		delay conversationKeystrokeDelay
		keystroke searchTerm
		delay conversationKeystrokeDelay
		keystroke return -- This should open the first chat with the searched term.
	end tell
	
end run