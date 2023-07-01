import "dart:io";

void main()
{
	const POINTS = [1, 3, 3, 2, 1, 4, 2, 4, 1, 8, 5, 1, 3, 1, 1, 3, 10, 1, 1, 1, 1, 4, 4, 8, 4, 10];

	// Get the players words
	print("Player1: ");
	String? word1 = stdin.readLineSync();
	print("Player2: ");
	String? word2 = stdin.readLineSync();


	// compute scores
	get_score(word)
	{
		int sum = 0;
		var result = word.toUpperCase();

		for (int i = 0, n = word.length; i < n; i++)
		{
			int ascii_code = result.codeUnitAt(i);
			if (ascii_code > 64 && ascii_code < 91)
			{
				// get the index of the char in the list
				ascii_code -= 65;
				sum += POINTS[ascii_code];
			}
		}
		return (sum);
	}


	// get scores
	int score1 = get_score(word1);
	int score2 = get_score(word2);



	if (score1 < score2)
	{
		print("Player 2 wins!");
	}
	else if (score1 > score2)
	{
		print("Player 1 wins!");
	}
	else
	{
		print("Tie!");
	}
}
