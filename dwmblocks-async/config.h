#ifndef CONFIG_H
#define CONFIG_H

// String used to delimit block outputs in the status.
#define DELIMITER " | "

// Maximum number of Unicode characters that a block can output.
#define MAX_BLOCK_OUTPUT_LENGTH 45

// Control whether blocks are clickable.
#define CLICKABLE_BLOCKS 1

// Control whether a leading delimiter should be prepended to the status.
#define LEADING_DELIMITER 0

// Control whether a trailing delimiter should be appended to the status.
#define TRAILING_DELIMITER 1

// Define blocks for the status feed as X(icon, cmd, interval, signal).

#define BLOCKS(X) \
	X("  ", "date '+%a %d'", 5, 1) \
	X("󰍛 ", "top -bn1 | grep 'Cpu(s)' | sed 's/.*, *\\([0-9.]*\\)%* id.*/\\1/' | awk '{print 100 - $1\"%\"}' ", 5, 4) \
	X("MEM ", "free -h | awk '/^Mem/ {print $3 \"/\" $2}'", 10, 3) \
        X("", "~/.config/dwmblocks-async/volume.sh", 0, 1) \
	X("󰥔 ", "date '+%I:%M%p'", 5, 2)
#endif
