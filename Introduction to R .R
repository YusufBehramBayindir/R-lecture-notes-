#Arithmetic with R #

In its most basic form, R can be used as a simple calculator. 
Consider the following arithmetic operators:
  
  Addition: +
  Subtraction: -
  Multiplication: *
  Division: /
  Exponentiation: ^
  Modulo: %%
  The last two might need some explaining:
  
The ^ operator raises the number to its left to the power of the number to its right: 
  #for example 3^2 is 9.
The modulo returns the remainder of the division of the number to the left by the number on its right, 
  #for example 5 modulo 3 or 5 %% 3 is 2.
With this knowledge, follow the instructions to complete the exercise.

# Calculate 3 + 4
3 + 4

# Calculate 6 + 12
6 + 12

# An addition
5 + 5 

# A subtraction
5 - 5 

# A multiplication
3 * 5

# A division
(5 + 5) / 2 

# Exponentiation
2 ^ 5 

# Modulo
28 %% 6 


# Variable assignment #
A basic concept in (statistical) programming is called a variable.

A variable allows you to store a value (e.g. 4) or an object (e.g. a function description) in R. 
You can then later use this variable

You can then later use this variables name to easily access the value or the object that is stored within this variable.

You can assign a value 4 to a variable my_var with the command
#my_var <- 4

# Assign the value 42 to x
x <- 42

# Print out the value of the variable x
x 


# Variable assignment 2 #
Suppose you have a fruit basket with five apples. 
As a data analyst in training, you want to store the number of apples in a variable with the name my_apples.

# Assign the value 5 to the variable my_apples
my_apples <- 5

# Print out the value of the variable my_apples
my_apples



# Variable assignment (3) #
Every tasty fruit basket needs oranges, so you decide to add six oranges. 
As a data analyst, your reflex is to immediately create the variable my_oranges and assign the value 6 to it.
Next, you want to calculate how many pieces of fruit you have in total. 
Since you have given meaningful names to these values, 
you can now code this in a clear way:
  
# Assign a value to the variables my_apples and my_oranges
  my_apples <- 5

# Add these two variables together
  my_oranges <- 6 

# Create the variable my_fruit
  my_fruit <- my_apples + my_oranges
  my_fruit
  
# Basic data types in R #
  R works with numerous data types. Some of the most basic types to get started are:
    
  Decimal values like 4.5 are called numerics.
  Whole numbers like 4 are called integers. Integers are also numerics.
  Boolean values (TRUE or FALSE) are called logical.
  Text (or string) values are called characters.

Note how the quotation marks in the editor indicate that "some text" is a string.

# Change my_numeric to be 42
my_numeric <- 42

# Change my_character to be "universe"
my_character <- "universe"

# Change my_logical to be FALSE
my_logical <- FALSE


Whats that data type?
Do you remember that when you added 5 + "six", you got an error due to a mismatch in data types? 
You can avoid such embarrassing situations by checking the data type of a variable beforehand. You can do this with the class() function, as the code in the editor shows.

# Declare variables of different types
my_numeric <- 42
my_character <- "universe"
my_logical <- FALSE 

# Check class of my_numeric
class(my_numeric)

# Check class of my_character
class(my_character)

# Check class of my_logical
class(my_logical)


# Create a vector #
On your way from rags to riches, you will make extensive use of vectors.
Vectors are one-dimension arrays that can hold numeric data, character data, or logical data. 
In other words, a vector is a simple tool to store data. 
For example, you can store your daily gains and losses in the casinos.

In R, you create a vector with the combine function "c()." 
You place the vector elements separated by a comma between the parentheses. For example:

#numeric_vector <- c(1,2,3)
#character_vector <- c("a", "b", "c")

Once you have created these vectors in R, you can use them to do calculations.

numeric_vector <- c(1, 10, 49)
character_vector <- c("a", "b", "c") 

# Complete the code for boolean_vector
boolean_vector <- c(TRUE , FALSE , TRUE)

#EXAMPLE#
For poker_vector:
  
On Monday you won $140
Tuesday you lost $50
Wednesday you won $20
Thursday you lost $120
Friday you won $240

# Poker winnings from Monday to Friday
poker_vector <- c(140, -50, 20, -120, 240)


For roulette_vector:
  
On Monday you lost $24
Tuesday you lost $50
Wednesday you won $100
Thursday you lost $350
Friday you won $10

# Roulette winnings from Monday to Friday
roulette_vector <- c(-24, -50, 100, -350, 10) 




# Naming a vector #
You can give a name to the elements of a vector with the names() function. Have a look at this example:
  
  some_vector <- c("John Doe", "poker player")
  names(some_vector) <- c("Name", "Profession")
This code first creates a vector some_vector and then gives the two elements a name. The first element is assigned the name Name, while the second element is labeled Profession. Printing the contents to the console yields following output:
  
  Name     Profession 
"John Doe" "poker player" 

#Example#
The code in the editor names the elements in poker_vector with the days of the week.
Add code to do the same thing for roulette_vector.

# Poker winnings from Monday to Friday
poker_vector <- c(140, -50, 20, -120, 240)

# Roulette winnings from Monday to Friday
roulette_vector <- c(-24, -50, 100, -350, 10)

# Assign days as names of poker_vector
names(poker_vector) <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")

# Assign days as names of roulette_vector
names(roulette_vector) <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")


It is important to know that if you sum two vectors in R, it takes the element-wise sum. For example, the following three statements are completely equivalent:
  
#c(1, 2, 3) + c(4, 5, 6)
#c(1 + 4, 2 + 5, 3 + 6)
#c(5, 7, 9)
You can also do the calculations with variables that represent vectors:
  
#a <- c(1, 2, 3) 
#b <- c(4, 5, 6)
#c <- a + b

A_vector <- c(1, 2, 3)
B_vector <- c(4, 5, 6)

# Take the sum of A_vector and B_vector
total_vector <- A_vector + B_vector

# Print out total_vector
total_vector

#Example#
Assign to the variable total_daily how much you won or lost on each day in total 
(poker and roulette combined).

# Poker and roulette winnings from Monday to Friday:
poker_vector <- c(140, -50, 20, -120, 240)
roulette_vector <- c(-24, -50, 100, -350, 10)
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker_vector) <- days_vector
names(roulette_vector) <- days_vector

# Assign to total_daily how much you won/lost on each day
total_daily <- poker_vector + roulette_vector

#Example#

Calculate the total amount of money that you have won/lost with roulette and assign to the variable total_roulette.
Now that you have the totals for roulette and poker, you can easily calculate total_week (which is the sum of all gains and losses of the week).
Print out total_week.

# Poker and roulette winnings from Monday to Friday:
poker_vector <- c(140, -50, 20, -120, 240)
roulette_vector <- c(-24, -50, 100, -350, 10)
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker_vector) <- days_vector
names(roulette_vector) <- days_vector

# Total winnings with poker
total_poker <- sum(poker_vector)
total_poker

# Total winnings with roulette
total_roulette <- sum(roulette_vector) 
total_roulette

# Total winnings overall
  total_week <- total_poker + total_roulette
   
# Print out total_week
  total_week
  

#Example#  
Calculate total_poker and total_roulette as in the previous exercise. Use the sum() function twice.
Check if your total gains in poker are higher than for roulette by using a comparison. Simply print out the result of this comparison. What do you conclude, should you focus on roulette or on poker?

  # Poker and roulette winnings from Monday to Friday:
  poker_vector <- c(140, -50, 20, -120, 240)
roulette_vector <- c(-24, -50, 100, -350, 10)
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker_vector) <- days_vector
names(roulette_vector) <- days_vector

# Calculate total gains for poker and roulette
total_poker <- sum(poker_vector)
total_poker

total_roulette <- sum(roulette_vector)
total_roulette

# Check if you realized higher total gains in poker than in roulette
total_poker > total_roulette


To select elements of a vector (and later matrices, data frames, …), you can use square brackets. 
Between the square brackets, you indicate what elements to select. 
For example, to select the first element of the vector, you type poker_vector[1]. 
To select the second element of the vector, you type poker_vector[2], etc. 
Notice that the first element in a vector has index 1, not 0 as in many other programming languages.

# Poker and roulette winnings from Monday to Friday:
poker_vector <- c(140, -50, 20, -120, 240)
roulette_vector <- c(-24, -50, 100, -350, 10)
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
days_vector
names(poker_vector) <- days_vector
poker_vector
names(roulette_vector) <- days_vector
roulette_vector

# Define a new variable based on a selection
poker_wednesday <- poker_vector[3]
poker_wednesday


#Assign the poker results of Tuesday, Wednesday and Thursday to the variable poker_midweek.
poker_midweek <- poker_vector[c(2,3,4)]
poker_midweek


#Example#
Assign to roulette_selection_vector the roulette results from Tuesday up to Friday; make use of : if it makes things easier for you.

# Poker and roulette winnings from Monday to Friday:
poker_vector <- c(140, -50, 20, -120, 240)
roulette_vector <- c(-24, -50, 100, -350, 10)
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker_vector) <- days_vector
names(roulette_vector) <- days_vector

# Define a new variable based on a selection
roulette_selection_vector <- roulette_vector[2:5]
roulette_selection_vector



#Example#
Select the first three elements in poker_vector by using their names: "Monday", "Tuesday" and "Wednesday". Assign the result of the selection to poker_start.
Calculate the average of the values in poker_start with the mean() function. Simply print out the result so you can inspect it.  


#poker_vector["Monday"]

#will select the first element of poker_vector since "Monday" is the name of that first element.

#poker_vector[c("Monday","Tuesday")] 

# Poker and roulette winnings from Monday to Friday:
poker_vector <- c(140, -50, 20, -120, 240)
roulette_vector <- c(-24, -50, 100, -350, 10)
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker_vector) <- days_vector
names(roulette_vector) <- days_vector

# Select poker results for Monday, Tuesday and Wednesday
poker_start <- poker_vector[c(1,2,3)]

# Calculate the average of the elements in poker_start
mean(poker_start)



# Selection by comparison #

The (logical) comparison operators known to R are:
  
  < for less than
> for greater than
<= for less than or equal to
>= for greater than or equal to
== for equal to each other
!= not equal to each other


#Example#
Check which elements in poker_vector are positive (i.e. > 0) and assign this to selection_vector.
Print out selection_vector so you can inspect it. 
The printout tells you whether you won (TRUE) or lost (FALSE) any money for each day.


# Poker and roulette winnings from Monday to Friday:
poker_vector <- c(140, -50, 20, -120, 240)
roulette_vector <- c(-24, -50, 100, -350, 10)
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker_vector) <- days_vector
names(roulette_vector) <- days_vector

# Which days did you make money on poker?
selection_vector <- poker_vector > 0

# Print out selection_vector
selection_vector



#Example#
Use selection_vector in square brackets to assign the amounts
that you won on the profitable days to the variable poker_winning_days.

# Poker and roulette winnings from Monday to Friday:
poker_vector <- c(140, -50, 20, -120, 240)
roulette_vector <- c(-24, -50, 100, -350, 10)
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker_vector) <- days_vector
names(roulette_vector) <- days_vector

# Which days did you make money on poker?
selection_vector <- poker_vector > 0

# Select from poker_vector these days
poker_winning_days <- poker_vector[selection_vector]
poker_winning_days


#Example#
Create the variable selection_vector, this time to see if you made profit with roulette for different days.
Assign the amounts that you made on the days that you ended positively for roulette to the variable roulette_winning_days. 
This vector thus contains the positive winnings of roulette_vector.

# Poker and roulette winnings from Monday to Friday:
poker_vector <- c(140, -50, 20, -120, 240)
roulette_vector <- c(-24, -50, 100, -350, 10)
days_vector <- c("Monday", "Tuesday", "Wednesday", "Thursday", "Friday")
names(poker_vector) <- days_vector
names(roulette_vector) <- days_vector

# Which days did you make money on roulette?
selection_vector <- roulette_vector > 0
selection_vector 

# Select from roulette_vector these days
roulette_winning_days <- roulette_vector[selection_vector]
roulette_winning_days



# matrix #

In R, a matrix is a collection of elements of the same data type (numeric, character, or logical) arranged into a fixed number of rows and columns. Since you are only working with rows and columns, a matrix is called two-dimensional.

You can construct a matrix in R with the matrix() function.
  

  
In the matrix() function:
  The first argument is the collection of elements that R will arrange into the rows and columns of the matrix. Here, we use 1:9 which is a shortcut for c(1, 2, 3, 4, 5, 6, 7, 8, 9).
  The argument byrow indicates that the matrix is filled by the rows. If we want the matrix to be filled by the columns, we just place byrow = FALSE.
  The third argument nrow indicates that the matrix should have three rows.

# İlk argüman, R'nin matrisin satırlarına ve sütunlarına yerleştireceği öğelerin toplanmasıdır. Burada c(1, 2, 3, 4, 5, 6, 7, 8, 9) kısayolu olan 1:9 kullanıyoruz. byrow argümanı, matrisin satırlarla doldurulduğunu gösterir. Matrisin sütunlarla doldurulmasını istiyorsak, yan satır = YANLIŞ yerleştiririz. Üçüncü argüman nrow, matrisin üç satıra sahip olması gerektiğini belirtir.
  
  # matrix(1:9, byrow = TRUE, nrow = 3)
  
"Example
  
  Use c(new_hope, empire_strikes, return_jedi) to combine the three vectors into one vector. Call this vector box_office.
  Construct a matrix with 3 rows, where each row represents a movie. Use the matrix() function to do this. 
  The first argument is the vector box_office, containing all box office figures. 
  Next, you will have to specify nrow = 3 and byrow = TRUE. 
  Name the resulting matrix star_wars_matrix."

  
#Box office Star Wars (in millions)
  new_hope <- c(460.998, 314.4)
  empire_strikes <- c(290.475, 247.900)
  return_jedi <- c(309.306, 165.8)
  
  #Create box_office
  box_office <- c(new_hope, empire_strikes, return_jedi)
  box_office

  #Construct star_wars_matrix
  star_wars_matrix <- matrix(box_office, byrow = TRUE, nrow = 3)
  
  
  
  
  
  "Naming a matrix
  
  rownames(my_matrix) <- row_names_vector
  colnames(my_matrix) <- col_names_vector

  We went ahead and prepared two vectors for you: region, and titles. 
  You will need these vectors to name the columns and rows of star_wars_matrix, respectively."

  
  "Example
  Use colnames() to name the columns of star_wars_matrix with the region vector. 
  Use rownames() to name the rows of star_wars_matrix with the titles vector.
  Print out star_wars_matrix to see the result of your work."
  
  # Box office Star Wars (in millions!)
  new_hope <- c(460.998, 314.4)
  empire_strikes <- c(290.475, 247.900)
  return_jedi <- c(309.306, 165.8)
  
  
  # Construct matrix
  star_wars_matrix <- matrix(c(new_hope, empire_strikes, return_jedi), nrow = 3, byrow = TRUE)
  
  #Vectors region and titles, used for naming
  region <- c("US", "non-US")
  titles <- c("A New Hope", "The Empire Strikes Back","Return of the Jedi")
  
  #name the columns with region
  colnames(star_wars_matrix) <- (region)
  
  #name the rows with titles
  rownames(star_wars_matrix) <- (titles)
  
  #print out star_wars_matrix
  star_wars_matrix

  
  #In R, the function rowSums() conveniently calculates the totals for each row of a matrix. This function creates a new vector:
    
    rowSums(my_matrix)
  
  #You can add a column or multiple columns to a matrix with the cbind() function, which merges matrices and/or vectors together by column. For example:
      
      big_matrix <- cbind(matrix1, matrix2, vector1 ...)
      
  #You can add a row or multiple rows to a matrix with the rbind() function, which merges matrices and/or vectors together by row For example:
      
      #all_wars_matrix <- rbind(star_wars_matrix, star_wars_matrix2)
      
      
      
  #Example
      Add worldwide_vector as a new column to the star_wars_matrix and assign the result to all_wars_matrix. 
      Use the cbind() function
    
      # Construct star_wars_matrix
      box_office <- c(460.998, 314.4, 290.475, 247.900, 309.306, 165.8)
      region <- c("US", "non-US")
      titles <- c("A New Hope", "The Empire Strikes Back","Return of the Jedi")
      
      star_wars_matrix <- matrix(box_office, nrow = 3, byrow = TRUE, dimnames = list(titles, region))
      
      help("dimnames")
      
      # The worldwide box office figures
      worldwide_vector <- rowSums(star_wars_matrix)
      worldwide_vector
      
      # Bind the new variable worldwide_vector as a column to star_wars_matrix
      all_wars_matrix <- cbind(star_wars_matrix, worldwide_vector)
      all_wars_matrix
      
      

  "# Selection of matrix elements #
      
      Similar to vectors, you can use the square brackets [ ] to select one or multiple elements from a matrix. 
      Whereas vectors have one dimension, matrices have two dimensions. You should therefore use a comma to separate the rows you want to select from the columns. For example:
        
      my_matrix[1,2] selects the element at the first row and second column.
      my_matrix[1:3,2:4] results in a matrix with the data on the rows 1, 2, 3 and columns 2, 3, 4.
    
      
    If you want to select all elements of a row or a column, no number is needed before or after the comma, respectively:
    
      my_matrix[,1] selects all elements of the first column.
      my_matrix[1,] selects all elements of the first row."
      
      
    #Example
      Select the non-US revenue for all movies (the entire second column of all_wars_matrix), store the result as non_us_all.
      Use mean() on non_us_all to calculate the average non-US revenue for all movies. Simply print out the result.
      This time, select the non-US revenue for the first two movies in all_wars_matrix. Store the result as non_us_some.
      Use mean() again to print out the average of the values in non_us_some.
  
    
      # all_wars_matrix is available in your workspace
      all_wars_matrix
      
      # Select the non-US revenue for all movies
      non_us_all <- all_wars_matrix[,2]
      non_us_all
      
      # Average non-US revenue
      mean(non_us_all)
      
      # Select the non-US revenue for first two movies
      non_us_some <- all_wars_matrix[1:2,2]
      non_us_some
      # Average non-US revenue for first two movies
      mean(non_us_some)
      
      
    
      
" # A little arithmetic with matrices #
        
    Similar to what you have learned with vectors, the standard operators like +, -, /, *, etc. work in an element-wise way on matrices in R.
    For example, 2 * my_matrix multiplies each element of my_matrix by two.
    As a newly-hired data analyst for Lucasfilm, it is your job to find out how many visitors went to each movie for each geographical area. You already have the total revenue figures in all_wars_matrix. Assume that the price of a ticket was 5 dollars. Simply dividing the box office numbers by this ticket price gives you the number of visitors." 
      
      
  "  #Example
      Divide all_wars_matrix by 5, giving you the number of visitors in millions. 
      Assign the resulting matrix to visitors. "

      all_wars_matrix
      visitors <- all_wars_matrix / 5
      visitors
      
  
Just like 2 * my_matrix multiplied every element of my_matrix by two, my_matrix1 * my_matrix2 creates a matrix where each element is the product of the corresponding elements in my_matrix1 and my_matrix2.        
After looking at the result of the previous exercise, big boss Lucas points out that the ticket prices went up over time. He asks to redo the analysis based on the prices you can find in ticket_prices_matrix (source: imagination).
Those who are familiar with matrices should note that this is not the standard matrix multiplication for which you should use %*% in R.
    
    # all_wars_matrix and ticket_prices_matrix are available in your workspace
    all_wars_matrix
    ticket_prices_matrix

    # Estimated number of visitors
    visitors <- all_wars_matrix / ticket_prices_matrix
    visitors

    # US visitors
    us_visitors <- visitors[,1] 
    us_visitors

    # Average number of US visitors
    mean(us_visitors)
  
  

