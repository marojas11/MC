 sed -E 's/<trkpt //g' running_dirty_nov.txt | sed -E 's/<[^>]*>//g'| sed -E 's/lon="(.+)"/\1/g'| sed -E 's/" lat="(.+)>/,\1/g'| sed -E 's/.+T(.+)\..+/\1/g'|sed -E 's/^\s+//g' >limpio.txt
