#!/usr/bin/env osascript

on run argv
	set desktopImage1 to item 1 of argv as POSIX file
	set desktopImage2 to POSIX file "/Library/Desktop Pictures/Solid Colors/Solid Gray Dark.png"
	tell application "Finder"
    	set desktop picture to desktopImage2
    	do shell script "sleep 0.1"
    	set desktop picture to desktopImage1
	end tell
end run