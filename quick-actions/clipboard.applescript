on run {input, parameters}
	tell application "Finder"
		-- Get the path of the current selection
		set filePath to selection as alias list

		-- Convert the path to slash path
		set filePath to POSIX path of filePath
	end tell

	do shell script "pbcopy < " & filePath

	display notification "The content of " & filePath & " has been copied to the clipboard." with title "Copied to clipboard!" sound name "Frog"
end run