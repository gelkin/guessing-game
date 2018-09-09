all: add_title add_date_and_time add_n_lines

add_title:
	echo "Guessing Game" > README.md

add_date_and_time:
	date >> README.md

add_n_lines:
	cat guessinggame.sh | wc -l >> README.md
