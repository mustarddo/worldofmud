pizzabot <- function() {
    ## variable part
  pizza_id <- c(1,2,3,4,5)
  pizza_type <- c("Sausage Hawaiian", "Hawaiian","Vegetarian Paradise",
                  "Bacon & The Black", "Seafood Hawaiian")
  price <- c(99, 99, 129, 365, 379)
  pizza <- data.frame(pizza_id, pizza_type, price)
  crust <- c("CLASSIC", "THIN & CRISPY", "CHEESE CRUST" )
  crust_price <- c(0, 0, 35)
  size <- c("s", "m", "l","extraspecial")

  ## pizzabot
  message("🍕🐸🍕 Frog Pizza is here, Froggy is ready to get your special pizza 🍕🐸🍕")
  name <- toupper(readline("Can I have your name sir?: "))
  message(paste("okay, ", name, ", Here is our menus"))
  message("||||||||| MENU |||||||||| ")
  message(paste(1,".", pizza$pizza_type[1]))
  message(paste(2,".", pizza$pizza_type[2]))
  message(paste(3,".", pizza$pizza_type[3]))
  message(paste(4,".", pizza$pizza_type[4]))
  message(paste(5,".", pizza$pizza_type[5]))
  message("||||||||||||||||||||||||| ")

  order_pizza <- as.numeric(readline("So, What do you want for today? (select by number): "))

   # loop for correct select pizza from number 1:5
    while (order_pizza > 1) {
      if (order_pizza >= 1 & order_pizza <= 5 )  {
        break
             }
      order_pizza <- as.numeric(readline(paste("Sorry ", name , ", but could you repeat on that (pls select only 1-5): ")))
        }
   # tell what customer want
message("||||||||||||||||||||||||||| ")
message(paste("You selected =>" , pizza_type[order_pizza]))



  ## crust order

  message("||||||||| Crust type |||||||||")
  message(paste(1, crust[1]))
  message(paste(2, crust[2]))
  message(paste(3, crust[3]))
  message("||||||||||||||||||||||||||| ")
  order_crust <- as.numeric(readline("What crust type do you want? (select by number): "))  ## we use as.numeric because readline only return character

   while (order_crust > 1) {
      if (order_crust >= 1 & order_crust <= 3) {
        message("I do agree on that")
        break
             }
    order_crust <- as.numeric(readline(paste("Sorry ", name , ", but could you repeat on that (pls select only 1-3): ")))
      }
   message("||||||||||||||||||||||||||| ")
   message("You selected => ", crust[order_crust])

  # Quantity
  message("||||||||| Quantity |||||||||")
  order_quan <- as.numeric(readline("So, How many do you want for this pizza? (fill number start form 1): "))

   while (order_quan == 0 | order_quan < 0) {
        if (order_quan >= 1) {
          message("hi")
          break
      }

      order_quan <- readline("again: ")
    }

  message("||||||||||||||||||||||||||| ")
  message(paste("You selected => ", order_quan))

  # calculate
  message("||||||||||||||TOTAL AMOUNT|||||||||||| ")
  total <- (price[order_pizza] + crust_price[order_crust]) * order_quan
  message(paste("Okay, That will be ", total, " ฿")) # calculate total amount
  message("||||||||||||||LOCATION for DELIVERY|||||||||||| ")
  loc <- readline(paste(name, ", Pls tell your location for sending pizza: "))
  message("||||||||||||||||||||||||||| ")
  message("Please confirmed below location ")
  message(loc)

  correct <- readline("Is it correct? (if yes pls answer 'yes' or 'y' only): ")
    while (correct != "yes" | correct != "y" ) {
        if (correct == "yes" | correct == "y" ) {
            break
        }
        loc <- readline(paste(name, ", Pls tell your location for sending pizza: "))
        message("||||||||||||||||||||||||||| ")
        message(loc)
        correct <- readline("Is it correct? (if yes pls answer 'yes' or 'y' only): ")
    }
    message("||||||||||||||||||||||||||||||🍕🐸🍕|||||||||||||||||||||||||||||||")
    message("|||||||||||||||||||||||🙏🙏🙏🙏🙏🙏🙏|||||||||||||||||||||||||||| ")
    message(paste("Thanks ", name ,", for ordered with us, Have a wonderful day with lovely pizza from FROG PIZZA!!!"))
    message("|||||||||||||||||||||||🙏🙏🙏🙏🙏🙏🙏|||||||||||||||||||||||||||| ")
    message("||||||||||||||||||||||||||||||🍕🐸🍕|||||||||||||||||||||||||||||||")
}
