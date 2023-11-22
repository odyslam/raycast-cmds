#!/usr/bin/osascript

# Dependency: This script requires Telegram to be installed: https://telegram.org

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Telegram
# @raycast.mode silent

# Optional parameters:
# @raycast.icon images/messenger.png
# @raycast.packageName Telegram
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
		display dialog "Please enter a name to search for in Telegram." buttons {"OK"} default button 1
		return
	end if
	
	set searchTerm to item 1 of argv
	
	if application "Telegram" is running then
		tell application "Telegram" to activate
	else
		do shell script "open -a Telegram"
		delay keystrokeDelay
	end if
	
	tell application "System Events" to tell process "Telegram"
		tell application "System Events"
			key code 53
		end tell
		delay conversationKeystrokeDelay
		keystroke searchTerm
		delay conversationKeystrokeDelay
		keystroke return
	end tell
	
end run