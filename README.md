# BattleApp
A two player game, mainly developed to expand my html understanding and general web knowledge.

Play the game by running $rackup config.ru, then connecting to your local host on the port in the and it will take you to a screen to enter the names of the two players. Once names have been  sumbitted, the game is on. Attack each other and see who will win! Happy Battling!

I approached this challenge by writing tests that allign with the user stroies presented in the challenge outline, they were:
As two Players,
```
So we can play a personalised game of Battle,
We want to Start a fight by entering our Names and seeing them

As Player 1,
So I can see how close I am to winning,
I want to see Player 2's Hit Points

As Player 1,
So I can win a game of Battle,
I want to attack Player 2, and I want to get a confirmation.

As Player 1,
So I can start to win a game of Battle,
I want my attack to reduce Player 2's HP by 10.

As two Players,
So we can continue our game of Battle,
We want to switch turns.

As Player 1,
So I can see how close I am to losing,
I want to see my own hit points.

As Player 1,
So I can lose a game of Battle,
I want Player 2 to attack me, and I want to get a confirmation.

As Player 1,
So I can start to lose a game of Battle,
I want Player 2's attack to reduce my HP by 10.

As a Player,
So I can Lose a game of Battle,
I want to see a 'Lose' message if I reach 0HP first.
```
