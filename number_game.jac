import:py random;

with entry {
    # Welcome message
    print("=" * 50);
    print(" WELCOME TO THE NUMBER GUESSING GAME! ");
    print("=" * 50);
    
    # Variable to control game loop
    play_again = True;
    
    # Main game loop - allows multiple rounds
    while play_again {
        # Generate random number between 1 and 100
        secret_number = random.randint(1, 100);
        attempts = 0;
        guessed = False;
        
        print("\n I'm thinking of a number between 1 and 100...");
        print("Can you guess it?\n");
        
        # Guessing loop for current round
        while not guessed {
            try {
                # Get user input and convert to integer
                guess = int(input("Enter your guess: "));
                attempts += 1;
                
                # Check if guess is correct
                if guess < secret_number {
                    print(" Too low! Try a higher number.\n");
                } elif guess > secret_number {
                    print(" Too high! Try a lower number.\n");
                } else {
                    guessed = True;
                    print("\n" + "🎉" * 20);
                    print(f"🏆 CONGRATULATIONS! You guessed it!");
                    print(f"The number was {secret_number}");
                    print(f"It took you {attempts} attempts!");
                    print("🎉" * 20 + "\n");
                }
            } except ValueError {
                print("❌ Invalid input! Please enter a valid number.\n");
            }
        }
        
        # Ask if player wants to play again
        response = input("Would you like to play again? (yes/no): ").lower();
        
        if response in ["yes", "y"] {
            play_again = True;
            print("\n" + "=" * 50);
            print("🔄 Starting a new game!");
            print("=" * 50);
        } else {
            play_again = False;
            print("\n" + "=" * 50);
            print("👋 Thanks for playing! Goodbye!");
            print("=" * 50);
        }
    }
}