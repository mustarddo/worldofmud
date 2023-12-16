### Rock Paper Scissor Game programming


gamerps <- function() {

  message("|||||||||||  👊 🖐️ ✌ ROCK PAPER SCISSOR  👊 🖐️ ✌ ||||||||||")
  message("Greetings, This is Rock Paper Scissor game")
  username <- toupper(readline("Before we start, What Can I call you?: "))
  message(paste("Okay, '", username, "', you and me will challenge together and lets see who will win"))
  message("|||||||||||||||||||||||||||||||||||||||| RULES. |||||||||||||||||||||||||||||||||||||||||||||||||||||||||")
  message("1. Type 'rock' or 'r' for 👊, 'paper' or 'p' for 🖐️ and 'scissor' or 's' for ✌ ")
  message("2. Whenever you feel enough just type 'enough', then we will finish and summarize scores")

  start_condition <- readline("Wanna start now?: ")

  user_score <- 0
  bot_score <- 0

  # RPS game looping until user or bot meet 3 points
  while (user_score <3 & bot_score <3 ) {
    flush.console()
    hands <- c("🖐️", "👊", "✌")
    user_hand <- readline("your turn:")
    bot_hand <- sample(hands, 1)
    if (user_hand == "enough") {
      message(paste("Okay, ", username, "Let's sum"))
      break
        }
    if(user_hand == "rock" | user_hand == "r"  & bot_hand == "✌") {
      print(paste(username, "  👊  🆚  ✌  bot"))
      print("You won!!! ")
      user_score <- user_score + 1
      message(paste(username, "score: => ", user_score))
      message(paste("bot score: => ", bot_score))
        } else if (user_hand == "rock" | user_hand == "r" & bot_hand == "👊") {
        print(paste(username, "  👊  🆚  👊  bot"))
        print("draw, let's try again")
        message(paste(username, "score: => ", user_score))
        message(paste("bot score: => ", bot_score))
        } else if (user_hand == "rock" | user_hand == "r" & bot_hand == "🖐️" ) {
          print(paste(username, "  👊  🆚  🖐️  bot"))
          print("You losed, Bot wins")
          bot_score <- bot_score + 1
          message(paste(username, "score: => ", user_score))
          message(paste("bot score: => ", bot_score))
            } else if (user_hand == "paper" | user_hand == "p" & bot_hand == "👊") {
              print(paste(username, "  🖐️  🆚  👊  bot"))
              print("You won!!!")
              user_score <- user_score + 1
              message(paste(username, "score: => ", user_score))
              message(paste("bot score: => ", bot_score))
            } else if (user_hand == "paper" | user_hand == "p" & bot_hand == "🖐️") {
              print(paste(username, "  🖐️  🆚  🖐️  bot"))
              print("draw, let's try again")
              message(paste(username, "score: => ", user_score))
              message(paste("bot score: => ", bot_score))
            } else if (user_hand == "paper" | user_hand == "p" & bot_hand == "✌") {
              print(paste(username, "  🖐️  🆚  ✌  bot"))
              print("You losed, Bot wins")
              bot_score <- bot_score + 1
              message(paste(username, "score: => ", user_score))
              message(paste("bot score: => ", bot_score))
              } else if (user_hand == "scissor" | user_hand == "s" & bot_hand == "🖐️") {
              print(paste(username, "  ✌  🆚  🖐️  bot"))
              print("You won!!!")
              user_score <- user_score + 1
              message(paste(username, "score: => ", user_score))
              message(paste("bot score: => ", bot_score))
              } else if (user_hand == "scissor" | user_hand == "s" & bot_hand == "✌") {
              print(paste(username, "  ✌  🆚  ✌  bot"))
              print("draw, let's try again")
              message(paste(username, "score: => ", user_score))
              message(paste("bot score: => ", bot_score))
              } else if (user_hand == "scissor" | user_hand == "s" & bot_hand == "👊") {
                print(paste(username, "  ✌  🆚  👊  bot"))
                print("You losed, Bot wins")
                bot_score <- bot_score + 1
                message(paste(username, "score: => ", user_score))
                message(paste("bot score: => ", bot_score))
              } else print("I don't understand, Could you type again")
                  if (user_score == 3 ) {
                  message("|||||||||||||||||||||||||||||||||||||")
                  print("🎉 You won this game 🎉!!")
                  break
                  }
                  if (bot_score == 3) {
                  message("|||||||||||||||||||||||||||||||||||||")
                  print("😭 You lose this game 😭!!")
                  break
                  }

  }
  ### summarize score & declare winner
    if (user_score == 3) { user_rank <- "🏆 "} else { user_rank <- ""}
    if (bot_score == 3) { bot_rank <- "🏆 "}  else { bot_rank <- ""}
    message(paste("Thx for playing with me 🤝", username))
    message(paste(username, user_rank, "score: => ", user_score, "  "))
    message(paste("bot",  bot_rank, "score: => ", bot_score,"  "))
    message("|||||||||||||||||||||||||||||||||||||")
}
