POINTS = [1, 3, 3, 2, 1, 4, 2, 4, 1, 8, 5, 1, 3, 1, 1, 3, 10, 1, 1, 1, 1, 4, 4, 8, 4, 10]

# get input from both players
word1 = input("Player1: ")
word2 = input("Player2: ")


# function to compute the score
def get_score(word):
	score = 0
	word = word.upper()
	for char in word:
		if char.isalpha():
			score += POINTS[ord(char) - 65]
	return score


# get the scores of both players
score1 = get_score(word1)
score2 = get_score(word2)


# decide who the winner is
if score1 > score2:
	print("Player1 Wins!")
elif score1 < score2:
	print("Player2 Wins!")
else:
	print("It's a tie!")


print(score1, score2)