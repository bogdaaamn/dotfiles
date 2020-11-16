on run {input, parameters}
	tell application "Finder"
		-- Get the path of the current selection
		-- Quick actions on folders, no checking for files selection
		set dirPath to selection as alias list

		-- Convert the path to slash path
		set dirPath to POSIX path of dirPath
	end tell

	tell application "Terminal"
		activate
		do script "cd " & dirPath & " && jupyter lab" in front window
	end tell
end run