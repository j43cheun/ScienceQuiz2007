% Decmeber 20, 2007
% Justin Cheung
% Teacher: Mr. Laserson
% Turing_FP_JCheung.t
% This is a quiz program that quizzes the user on Grade 10 Science related topics, mostly in ecology and chemistry.
% This is a summative project that is worth 10% of the final mark for TEE-201.
% This Science Quiz program is to be handed in on December 20th, 2007.


% Implement Loop so that quiz can be redone.
loop

    % Play Music for title.
    Music.PlayFileLoop ("SMBBrawl.wav")
    % Declare variable for counter.
    var counter : int := 0

    % Put picture.
    var title : int % Declare variables.
    title := Pic.FileNew ("title.jpg") % Find image.
    Pic.Draw (title, 60, 150, picCopy) % Draw picture.
    delay (5000) % Delay.
    cls % Clear screen % Clear screen.

    % Implement Loop so that user will return to title screen if they don't type "start".
    loop
	% Insert box.
	drawfillbox (0, 0, 700, 500, black)
	% Put picture.
	var title1 : int % Declare variables.
	title1 := Pic.FileNew ("titleGT.jpg") % Find image.
	Pic.Draw (title1, 0, 0, picCopy) % Draw picture.
	% Declare variable to end title loop.
	var quit1 : string
	locatexy (75, 100)
	% Prompt the user to start program.
	put "Type down 'start' to start the program."
	locatexy (75, 50)
	get quit1
	% Tell the program to exit the loop.
	exit when quit1 = "start"
    end loop
    cls % Clear screen


    % Put picture.
    var name : int % Declare variables.
    name := Pic.FileNew ("nameGT.jpg") % Find image.
    Pic.Draw (name, 50, 200, picCopy) % Draw picture.
    % Declare variable for name.
    var name1 : string
    % Prompt user to enter in name.
    locatexy (70, 250)
    get name1 : *
    cls % Clear screen

    % Displaying the menu.
    % Prompt user to view information about this quiz.
    % Declare variables for menu.
    var menu, dest1 : string
    % Implement loop so the the user can return to the menu.
    loop
	% Menu options
	put "" % Space
	put "" % Space
	put "" % Space
	put "" % Space
	put "" % Space
	put "" % Space
	put "" % Space
	put "" : 25, "Welcome to the Science Quiz ", name1, "."
	put "" % Space
	put "" : 15, "Please select one of the following destinations."
	put "" % Space
	put "" : 20, "1. The Science Quiz Rules and Regulations"
	put "" % Space
	put "" : 20, "2. About The Science Quiz"
	put "" % Space
	put "" : 20, "3. Start the Science Quiz"
	put "" % Space
	put "" : 20, "4. The Science Quiz Answers"
	put "" % Space
	put "" : 10, "Please input the number that corresponds to your destination."
	% Put picture.
	var menu4 : int % Declare variables.
	menu4 := Pic.FileNew ("menu4GT.jpg") % Find image.
	Pic.Draw (menu4, 90, 290, picCopy) % Draw picture.
	get menu
	% Input Rules and Regulations.
	% Decision structure for Destination 1.
	if menu = "1" then
	    cls % Clear screen
	    % Declare variables for pages
	    var page : string
	    put "" % Space
	    put "" % Space
	    put "" % Space
	    put "" % Space
	    put "" % Space
	    put "" % Space
	    put "" % Space
	    put "" % Space
	    % Insert Rules and Regulations Title Picture
	    var menu6 : int % Declare variables.
	    menu6 := Pic.FileNew ("rules.jpg") % Find image.
	    Pic.Draw (menu6, 90, 310, picCopy) % Draw picture.
	    % Insert Rules and Regulations
	    put "1. For Multiple Choice Questions, you must answer with the letter that"
	    put "corresponds with the answer. Failure to do so will result in an"
	    put "incorrect answer."
	    put ""
	    put "2. For True and False Questions, answer with either a 't' for True,"
	    put "or a 'f' for false."
	    put ""
	    put "3. For Fill in the Blanks Questions, the answer must be filled in  "
	    put "correctly with spaces and capital letters if necessary. "
	    put "Failure to do so will result in an incorrect answer."
	    put ""
	    % Prompt User to Change the Page.
	    put "Do you want to change the page? (yes/no)"
	    get page
	    % Decision structure for changing pages.
	    if page = "yes" then
		% If condition is true, change the page.
		cls % Clear screen
		var page5 : string
		put "" % Space
		put "" % Space
		put "" % Space
		put "" % Space
		put "" % Space
		put "" % Space
		put "" % Space
		put "" % Space
		% Insert Rules and Regulations
		put "4. The questions that you answered correctly will be totaled up and"
		put "displayed at the end of the quiz. You will also be graded at this time."
		put ""
		put "5. If you answer the questions correctly, there will be an applause"
		put "sound. However, if you answer incorrectly, there will be a sound of"
		put "someone screaming."
		put ""
		put "6. For Fill in the Blanks Questions, all spelling must be correct."
		put "Incorrect spelling will result in an incorrect answer."
		% Insert Rules and Regulations Title Picture
		var menu8 : int % Declare variables.
		menu6 := Pic.FileNew ("rules.jpg") % Find image.
		Pic.Draw (menu6, 90, 310, picCopy) % Draw picture.
		% Prompt to choose next destination.
		put ""
		put "Please choose what you want to do next. Type down 'quiz' and press enter"
		put "to start quiz. Type anything and press enter to return to menu."
		get dest1
		cls % Clear screen
		% Exit menu loop to start Science Quiz.
		exit when dest1 = "quiz"
	    else
		put "Please choose what you want to do next. Type down 'quiz' and press enter"
		put "to start quiz. Type anything and press enter to return to menu."
		get dest1
		cls % Clear screen
		% Exit menu loop to start Science Quiz.
		exit when dest1 = "quiz"
	    end if % Ends decision structure.
	else
	    cls % Clear screen
	    % Exit menu loop to start Science Quiz.
	    exit when menu = "3"
	end if % Ends decision structure.

	% Information on About Science Quiz.
	% Decision structure for "About Science Quiz".
	if menu = "2" then
	    % put about message.
	    put "" %Space
	    put "" %Space
	    put "" %Space
	    put "" %Space
	    put "" %Space
	    put "" %Space
	    put "" %Space
	    put "The Science Quiz program is a program that was created as a final project for"
	    put "the Turing Environment. The project is worth 10% of the final mark for the "
	    put "Computer Engineering Technology Course in Richmond Green Secondary School. "
	    put "The general idea behind this program is that it is supposed to test people"
	    put "on their basic knowledge of Chemistry and Ecology in Grade 10 Science. "
	    put "The quiz will consist of five multiple choice questions, five true"
	    put "or false questions, and five fill in the blanks - 15 questions in total."
	    put "For every correct answer, the counter will add one point to their final score."
	    put "The user will be told whether they are correct or not upon answering the"
	    put "question and will be given the correct answer if they are incorrect."
	    put "If the user successfully completes the quiz and scores 15/15, they will be"
	    put "awarded with a certificate in which they can print out. "
	    put "" %Space
	    put "This program can be redistributed to anyone with permission from the author."
	    put "" % Space
	    % Put picture.
	    var aboutpic : int % Declare variables.
	    aboutpic := Pic.FileNew ("aboutGT.jpg") % Find image.
	    Pic.Draw (aboutpic, 90, 300, picCopy) % Draw picture.
	    % Quit about message.
	    var dest2 : string % Declare variables for destination.
	    put "Please choose what you want to do next. Type down 'quiz' and press enter"
	    put "to start quiz. Type anything and press enter to return to menu."
	    get dest2
	    cls % Clear screen
	    exit when dest2 = "quiz"
	else
	    cls % Clear screen
	    exit when menu = "3" % Terminate Science Quiz Menu loop.
	end if % Ends decision structure.


	% Input Rules and Regulations.
	% Decision structure for Destination 4 on the menu.
	if menu = "4" then
	    cls % Clear screen
	    % Declare variables for pages
	    var page : string
	    put "" % Space
	    put "" % Space
	    put "" % Space
	    put "" % Space
	    put "" % Space
	    put "" % Space
	    put "" % Space
	    % Insert Answers Title Picture
	    var menu8 : int % Declare variables.
	    menu8 := Pic.FileNew ("multiple2GT.jpg") % Find image.
	    Pic.Draw (menu8, 90, 290, picCopy) % Draw picture.
	    % Insert Answers
	    put "1. Which of the following is a top carnivore?"
	    put "Answer: e Great Blue Heron"
	    put ""
	    put "2. What natural process breaks down nitrates in the soil into"
	    put "nitrites and then into nitrogen gas?"
	    put "Answer: c denitrification"
	    put ""
	    put "3. Which of these items is always neutral (Between Acidic and Basic)?"
	    put "Answer: b water"
	    put ""
	    put "4. What are the products of complete combustion?"
	    put "Answer: a water, carbon dioxide, and heat"
	    put ""
	    put "5. Which ion is released when a base is dissolved in water?"
	    put "Answer: d Hydroxide Ion"
	    put ""
	    % Change the Page
	    put "Do you want to change the page? (yes/no)"
	    get page
	    % Decision structure for changing pages.
	    if page = "yes" then
		cls % Clear screen
		% Declare variables to change the page.
		var page5 : string
		put "" % Space
		put "" % Space
		put "" % Space
		put "" % Space
		put "" % Space
		put "" % Space
		put "" % Space
		put "" % Space
		% Insert Answers
		put "6. True or False. Soap is an acid."
		put "Answer: False"
		put ""
		put "7. True or False? You can increase the rate of reaction by"
		put "increasing the temperature."
		put "Answer: True"
		put ""
		put "8. True or False? The limiting factor in combustion is fuel."
		put "Answer: False"
		put ""
		put "9. True or False? Herbicides are used to kill pesky bugs."
		put "Answer: False"
		put ""
		put "10. Like solids and gases, liquids can be compressed,"
		put "Answer: False"
		% Insert Answers Title Picture
		var menu89 : int % Declare variables.
		menu89 := Pic.FileNew ("multiple3GT.jpg") % Find image.
		Pic.Draw (menu89, 90, 310, picCopy) % Draw picture.

		% Prompt to Change the Page
		put "Do you want to change the page? (yes/no)"
		get page5
		% Decision structure for changing the page.
		if page5 = "yes" then
		    cls % Clear screen %clear screen
		    put "" % Space
		    put "" % Space
		    put "" % Space
		    put "" % Space
		    put "" % Space
		    put "" % Space
		    put "" % Space
		    put "" % Space
		    % Insert Answers Title Picture
		    var menu90 : int % Declare variables.
		    menu90 := Pic.FileNew ("multiple4GT.jpg") % Find image.
		    Pic.Draw (menu90, 90, 310, picCopy) % Draw picture.
		    delay (5000)
		    cls % Clear screen
		    % Insert Answers
		    put "11. Organic compounds are molecular substances that"
		    put "contain [_________] atoms as natural building blocks."
		    put "Answer: carbon"
		    put ""
		    put "12. A _________is a substance that increases the rate of"
		    put "a chemical reaction without being consumed by the reaction"
		    put "Answer: catalyst"
		    put ""
		    put "13. Substances that act as preservatives by slowing down the rate"
		    put "of oxidization (rate of decay) in food molecules are known as ___________"
		    put "Answer: antioxidants"
		    put ""
		    put "14. The reactions that occur between acids and bases are known as"
		    put " _________ reactions."
		    put "Answer: neutralization"
		    put ""
		    put "15. A chemical reaction that releases heat into the environment is"
		    put "known as an _____________ reaction."
		    put "Answer: exothermic"
		else
		    % Prompt to choose next destination.
		    put ""
		    put "Please choose what you want to do next. Type down 'quiz' and press enter"
		    put "to start quiz. Type anything and press enter to return to menu."
		    get dest1
		    cls % Clear screen % Clear screen.
		end if % Ends decision structure.

		% Prompt to choose next destination.
		put ""
		put "Please choose what you want to do next. Type down 'quiz' and press enter"
		put "to start quiz. Type anything and press enter to return to menu."
		get dest1
		cls % Clear screen % Clear screen.
		exit when dest1 = "quiz"
	    else
		put "Please choose what you want to do next. Type down 'quiz' and press enter"
		put "to start quiz. Type anything and press enter to return to menu."
		get dest1
		cls % Clear screen
		exit when dest1 = "quiz"
	    end if % Ends decision structure.
	else
	    cls % Clear screen
	    exit when menu = "3" % Terminate Science Quiz Menu loop.
	end if % Ends decision structure.
    end loop



    % End music
    Music.PlayFileStop




    % Multiple Choice Questions
    % Insert box.
    drawfillbox (0, 0, 700, 500, black)
    % Display a title Screen
    var title2GT : int
    title2GT := Pic.FileNew ("multiple.jpg")
    Pic.Draw (title2GT, 0, 0, picCopy)
    delay (5000) % Delay
    cls % Clear screen



    % Question 1.
    % Declare variable for Question 1.
    var a1 : string
    % Play music.
    Music.PlayFileLoop ("Atmosphere.wav")
    % Put Picture
    var pic6 : int % Declare variables.
    pic6 := Pic.FileNew ("q1.jpg") % Finds image.
    Pic.Draw (pic6, 100, 200, picCopy) % Draws picture.
    % Asks question.
    put "" % Space
    put "1. Which of the following is a top carnivore?"
    delay (4000) % Delay
    cls % Clear screen
    put "" % Space
    % Put Picture
    var pic : int %declare variable
    pic := Pic.FileNew ("plankton.jpg") % Finds image
    Pic.Draw (pic, 200, 10, picCopy) % Draws image
    put "a Phytoplankton"
    delay (4000) % Delay
    cls % Clear screen
    put "" % Space
    % Put Picture
    var pic2 : int %declare variable
    pic2 := Pic.FileNew ("frog.jpg") % Find image.
    Pic.Draw (pic2, 100, 10, picCopy) % Draw picture.
    put "b Frog"
    delay (4000) % Delay
    cls % Clear screen
    put "" % Space
    % Put Picture.
    var pic3 : int % Declare variable
    pic3 := Pic.FileNew ("mallard1.jpg") % Find image.
    Pic.Draw (pic3, 70, 10, picCopy)
    put "c Mallard"
    delay (4000) % Delay
    cls % Clear screen
    put "" % Space
    % Put Picture.
    var pic4 : int % Declare variable
    pic4 := Pic.FileNew ("deer.jpg")
    Pic.Draw (pic4, 100, 10, picCopy)
    put "d deer"
    delay (4000) % Delay
    cls % Clear screen
    put "" % Space
    % Put Picture.
    var pic5 : int % Declare variables.
    pic5 := Pic.FileNew ("heron.jpg")
    Pic.Draw (pic5, 200, 10, picCopy)
    put "e Great Blue Heron"
    delay (4000) % Delay
    cls % Clear screen
    put "" % Space
    put "1. Which of the following is a top carnivore?"
    put "" % Space
    put "" % Space
    put "a Phytoplankton"
    put "b Frog"
    put "c Mallard"
    put "d deer"
    put "e Great Blue Heron"
    put "" % Space
    put "" % Space
    put "" % Space
    put "" % Space
    % Put Picture
    pic6 := Pic.FileNew ("q1.jpg") % Find image.
    Pic.Draw (pic6, 100, 10, picCopy) % Draw picture.
    % Prompt to enter answer.
    put "Input your answer below. Input the letter that the answer corresponds to."
    get a1
    put "" % Space
    % Decision structure for answer to question 1.
    if a1 = "e" then
	put "You are correct! Great Blue Heron is the top carnivore!"
	counter := counter + 1
	Music.PlayFileLoop ("winner.wav")
	delay (5500) % Delay
	Music.PlayFileStop
    else
	put "You are incorrect! The answer was e! "
	Music.PlayFileLoop ("wrong.wav")
	delay (1000) % Delay
	Music.PlayFileStop
    end if % Ends decision structure for answer to question 1.
    delay (4000) % Delay
    cls % Clear screen % Clear screen



    % Question 2.
    % Declare variables for question 2.
    var a2 : string
    % Plays music.
    Music.PlayFileLoop ("The Chase.wav")
    % Put picture.
    var pic11 : int % Declare variables.
    pic11 := Pic.FileNew ("q2.jpg") % Find image.
    Pic.Draw (pic11, 100, 200, picCopy) % Draw picture.
    % Asks Question.
    put "" % Space
    put "2. What natural process breaks down nitrates in the soil into"
    put "nitrites and then into nitrogen gas?"
    delay (4000) % Delay
    cls % Clear screen
    put "" % Space
    % Put Picture.
    var pic7 : int % Declare variable.
    pic7 := Pic.FileNew ("lawn.jpg")
    Pic.Draw (pic7, 100, 10, picCopy)
    put "a Mowing the Lawn"
    delay (4000) % Delay
    cls % Clear screen
    put "" % Space
    % Put Picture.
    var pic8 : int % Declare variables.
    pic8 := Pic.FileNew ("nitrogen.jpg") % Find image.
    Pic.Draw (pic8, 100, 10, picCopy) % Draw Picture.
    put "b nitrification"
    delay (4000) % Delay
    cls % Clear screen
    put "" % Space
    % Put Picture.
    pic8 := Pic.FileNew ("nitrogen.jpg") % Find image.
    Pic.Draw (pic8, 100, 10, picCopy) % Draw Picture.
    put "c denitrification"
    delay (4000) % Delay
    cls % Clear screen
    put "" % Space
    % Put picture.
    var pic9 : int % Declare variables.
    pic9 := Pic.FileNew ("Evaporation.jpg") % Find image.
    Pic.Draw (pic9, 300, 10, picCopy) % Draw picture.
    put "d evaporation"
    delay (4000) % Delay
    cls % Clear screen
    put "" % Space
    % Put picture.
    var pic10 : int % Declare variables.
    pic10 := Pic.FileNew ("Decomposition.jpg") % Find image.
    Pic.Draw (pic10, 300, 10, picCopy) % Draw picture.
    put "e decomposition"
    delay (4000) % Delay
    cls % Clear screen
    put "" % Space
    put "2. What natural process breaks down nitrates in the soil into"
    put "nitrites and then into nitrogen gas?"
    put "" % Space
    put "" % Space
    put "a Mowing the Lawn"
    put "b nitrification"
    put "c denitrification"
    put "d evaporation"
    put "e decomposition"
    put "" % Space
    put "" % Space
    put "" % Space
    put "" % Space
    % Put picture.
    pic11 := Pic.FileNew ("q2.jpg") % Find image.
    Pic.Draw (pic11, 100, 10, picCopy) % Draw picture.
    put "Input your answer below. Input the letter that the answer corresponds to."
    get a2
    put "" % Space
    if a2 = "c" then
	put "You are correct! Denitrification is the process that breaks down "
	put "nitrates in the soil into nitrites and then into nitrogen gas."
	counter := counter + 1
	Music.PlayFileLoop ("winner.wav")
	delay (5500) % Delay
	Music.PlayFileStop
    else
	put "You are incorrect! The answer was c! "
	Music.PlayFileLoop ("wrong.wav")
	delay (1000) % Delay
	Music.PlayFileStop
    end if
    delay (4000) % Delay
    cls % Clear screen



    % Question 3
    % Declare variables for Question 3.
    var a3 : string
    % Play music.
    Music.PlayFileLoop ("Electronic Stomp.wav")
    % Put picture.
    var pic17 : int % Declare variables.
    pic17 := Pic.FileNew ("q3.jpg") % Find image.
    Pic.Draw (pic17, 150, 200, picCopy) % Draw picture.
    % Asks Question.
    put ""
    put "3. Which of these items is always neutral (Between Acidic and Basic)?"
    delay (4000) % Delay
    cls % Clear screen
    put ""
    % Put picture.
    var pic12 : int % Declare variables.
    pic12 := Pic.FileNew ("vinegar.jpg") % Find image.
    Pic.Draw (pic12, 300, 10, picCopy) % Draw picture.
    put "a vinegar"
    delay (4000) % Delay
    cls % Clear screen
    put ""
    % Put picture.
    var pic13 : int % Declare variables.
    pic13 := Pic.FileNew ("water.jpg") % Find image.
    Pic.Draw (pic13, 380, 10, picCopy) % Draw picture.
    put "b water"
    delay (4000) % Delay
    cls % Clear screen
    put ""
    % Put picture.
    var pic14 : int % Declare variables.
    pic14 := Pic.FileNew ("cola.jpg") % Find image.
    Pic.Draw (pic14, 300, 10, picCopy) % Draw picture.
    put "c Cola"
    delay (4000) % Delay
    cls % Clear screen
    put ""
    % Put picture.
    var pic15 : int % Declare variables.
    pic15 := Pic.FileNew ("bleach.jpg") % Find image.
    Pic.Draw (pic15, 450, 10, picCopy) % Draw picture.
    put "d bleach"
    delay (4000) % Delay
    cls % Clear screen
    put ""
    % Put picture.
    var pic16 : int % Declare variables.
    pic16 := Pic.FileNew ("soap.jpg") % Find image.
    Pic.Draw (pic16, 200, 10, picCopy) % Draw picture.
    put "e soap"
    delay (4000) % Delay
    cls % Clear screen
    put ""
    put "3. Which of these items is always neutral (Between Acidic and Basic)?"
    put "" % Space
    put "" % Space
    put "a vinegar"
    put "b water"
    put "c Cola"
    put "d bleach"
    put "e soap"
    put "" % Space
    put "" % Space
    put "" % Space
    put "" % Space
    % Put picture.
    Pic.Draw (pic17, 150, 10, picCopy) % Draw picture.
    put "Input your answer below. Input the letter that the answer corresponds to."
    get a3
    put "" % Space
    if a3 = "b" then
	put "You are correct. Water is always neutral."
	counter := counter + 1
	Music.PlayFileLoop ("winner.wav")
	delay (5500) % Delay
	Music.PlayFileStop
    else
	put "You are incorrect! The answer was b! "
	Music.PlayFileLoop ("wrong.wav")
	delay (1000) % Delay
	Music.PlayFileStop
    end if
    delay (4000) % Delay
    cls % Clear screen



    % Question 4
    % Declare variables for question 4.
    var a4 : string
    % Play music.
    Music.PlayFileLoop ("World Beat.wav")
    % Put picture.
    var pic23 : int % Declare variables.
    pic23 := Pic.FileNew ("Picture1.jpg") % Find image.
    Pic.Draw (pic23, 0, 200, picCopy) % Draw picture.
    % Asks Question.
    put "" % Space
    put "4. What are the products of complete combustion?"
    delay (4000) % Delay
    cls % Clear screen
    put ""
    % Put picture.
    var pic18 : int % Declare variables.
    pic18 := Pic.FileNew ("4a.jpg") % Find image.
    Pic.Draw (pic18, 150, 10, picCopy) % Draw picture.
    put "a water, carbon dioxide, and heat"
    delay (4000) % Delay
    cls % Clear screen
    put ""
    % Put picture.
    var pic19 : int % Declare variables.
    pic19 := Pic.FileNew ("4b.jpg") % Find image.
    Pic.Draw (pic19, 150, 10, picCopy) % Draw picture.
    put "b carbon, sulfur dioxide, oxygen, and heat"
    delay (4000) % Delay
    cls % Clear screen
    put ""
    % Put picture.
    var pic20 : int % Declare variables.
    pic20 := Pic.FileNew ("4c.jpg") % Find image.
    Pic.Draw (pic20, 10, 10, picCopy) % Draw picture.
    put "c hydrogen gas, magnesium, sulfuric acid, and heat"
    delay (4000) % Delay
    cls % Clear screen
    put ""
    % Put picture.
    var pic21 : int % Declare variables.
    pic21 := Pic.FileNew ("4d.jpg") % Find image.
    Pic.Draw (pic21, 250, 10, picCopy) % Draw picture.
    put "d carbon monoxide, water, carbon, and heat"
    delay (4000) % Delay
    cls % Clear screen
    put ""
    % Put picture.
    var pic22 : int % Declare variables.
    pic22 := Pic.FileNew ("4e.jpg") % Find image.
    Pic.Draw (pic22, 100, 10, picCopy) % Draw picture.
    put "e oxygen, nitrogen gas, and heat"
    delay (4000) % Delay
    cls % Clear screen
    put ""
    put "4. What are the products of complete combustion?"
    put "" % Space
    put "" % Space
    put "a water, carbon dioxide, and heat"
    put "b carbon, sulfur dioxide, oxygen, and heat"
    put "c hydrogen gas, magnesium, sulfuric acid, and heat"
    put "d carbon monoxide, water, carbon, and heat"
    put "e oxygen, nitrogen gas, and heat"
    put "" % Space
    put "" % Space
    put "" % Space
    put "" % Space
    % Put picture.
    pic23 := Pic.FileNew ("Picture1.jpg") % Find image.
    Pic.Draw (pic23, 0, 10, picCopy) % Draw picture.
    put "Input your answer below. Input the letter that the answer corresponds to."
    get a4
    put "" % Space
    if a4 = "a" then
	put "You are correct! The products of complete combustion are water, carbon"
	put "dioxide, and heat!"
	counter := counter + 1
	Music.PlayFileLoop ("winner.wav")
	delay (5500) % Delay
	Music.PlayFileStop
    else
	put "You are incorrect! The answer was a! "
	Music.PlayFileLoop ("wrong.wav")
	delay (1000) % Delay
	Music.PlayFileStop
    end if
    delay (4000) % Delay
    cls % Clear screen



    % Question 5
    % Declare variables in question 5.
    var a5 : string
    % Play music.
    Music.PlayFileLoop ("Latin Flavor.wav")
    % Put picture.
    var pic29 : int % Declare variables.
    pic29 := Pic.FileNew ("q5.jpg") % Find image.
    Pic.Draw (pic29, 170, 200, picCopy) % Draw picture.
    % Asks Questions
    put ""
    put "5. Which ion is released when a base is dissolved in water?"
    delay (4000) % Delay
    cls % Clear screen
    put ""
    % Put picture.
    var pic24 : int % Declare variables.
    pic24 := Pic.FileNew ("Chlorate.jpg") % Find image.
    Pic.Draw (pic24, 250, 10, picCopy) % Draw picture.
    put "a Chlorate ion"
    delay (4000) % Delay
    cls % Clear screen
    put ""
    % Put picture.
    var pic25 : int % Declare variables.
    pic25 := Pic.FileNew ("nitrate.jpg") % Find image.
    Pic.Draw (pic25, 250, 10, picCopy) % Draw picture.
    put "b Nitrate ion"
    delay (4000) % Delay
    cls % Clear screen
    put ""
    % Put picture.
    var pic26 : int % Declare variables.
    pic26 := Pic.FileNew ("phosphate.jpg") % Find image.
    Pic.Draw (pic26, 250, 0, picCopy) % Draw picture.
    put "c Phosphate ion"
    delay (4000) % Delay
    cls % Clear screen
    put ""
    % Put picture.
    var pic27 : int % Declare variables.
    pic27 := Pic.FileNew ("hydroxide.jpg") % Find image.
    Pic.Draw (pic27, 250, 0, picCopy) % Draw picture.
    put "d Hydroxide ion"
    delay (4000) % Delay
    cls % Clear screen
    put ""
    % Put picture.
    var pic28 : int % Declare variables.
    pic28 := Pic.FileNew ("sulfate.jpg") % Find image.
    Pic.Draw (pic28, 250, 0, picCopy) % Draw picture.
    put "e sulfate ion"
    delay (4000) % Delay
    cls % Clear screen
    put ""
    put "5. Which ion is released when a base is dissolved in water?"
    put "" % Space
    put "" % Space
    put "a Chlorate ion"
    put "b Nitrate ion"
    put "c Phosphate ion"
    put "d Hydroxide ion"
    put "e sulfate ion"
    put "" % Space
    put "" % Space
    put "" % Space
    put "" % Space
    % Put picture.
    pic29 := Pic.FileNew ("q5.jpg") % Find image.
    Pic.Draw (pic29, 170, 10, picCopy) % Draw picture.
    put "Input your answer below. Input the letter that the answer corresponds to."
    get a5
    put ""
    if a5 = "d" then
	put "You are correct! The Hydroxide ion is released when a base is dissolved"
	put "in water."
	counter := counter + 1
	Music.PlayFileLoop ("winner.wav")
	delay (5500) % Delay
	Music.PlayFileStop
    else
	put "You are incorrect! The answer was d! "
	Music.PlayFileLoop ("wrong.wav")
	delay (1000) % Delay
	Music.PlayFileStop
    end if
    delay (4000) % Delay
    cls % Clear screen



    % True or False Questions.
    % Insert box.
    drawfillbox (0, 0, 700, 500, black)
    % Display a title Screen

    var title4GT : int
    title4GT := Pic.FileNew ("trueGT.jpg")
    Pic.Draw (title4GT, 0, 0, picCopy)
    delay (5000) % Delay
    cls % Clear screen



    % Question 6.
    % Declare variables for question 6.
    var a6 : string
    % Play Music.
    Music.PlayFileLoop ("Suspense.wav")
    % Asks Question.
    put "" % Space
    put "" % Space
    put "" % Space
    put "" % Space
    put "" % Space
    put "" % Space
    put "" % Space
    put "" % Space
    put "6. True or False. Soap is an acid."
    % Display Title picture for True and False Questions.
    var d60 : int % Declare variables.
    d60 := Pic.FileNew ("falseGT.jpg") % Find image.
    Pic.Draw (d60, 180, 310, picCopy) % Draw picture.
    put "" % Space
    put "" % Space
    put "" % Space
    put "" % Space
    put "Input 'f' for false or 't' for true."
    get a6
    put ""
    if a6 = "f" then
	cls % Clear screen
	put "" % Space
	put "" % Space
	put "" % Space
	put "" % Space
	put "" % Space
	put "" % Space
	put "" % Space
	put "" % Space
	put "Correct. The answer is false. Soap is an example of a base."
	% Put picture.
	var pic30 : int % Declare variables.
	pic30 := Pic.FileNew ("soap2.jpg") % Find image.
	Pic.Draw (pic30, 500, 0, picCopy) % Draw picture.
	% Display correct picture for True and False Questions.
	var d61 : int % Declare variables.
	d61 := Pic.FileNew ("correctGT2.jpg") % Find image.
	Pic.Draw (d61, 0, 300, picCopy) % Draw picture.
	counter := counter + 1
	Music.PlayFileLoop ("winner.wav")
	delay (5500) % Delay
	Music.PlayFileStop
    else
	cls % Clear screen
	put "" % Space
	put "" % Space
	put "" % Space
	put "" % Space
	put "" % Space
	put "" % Space
	put "" % Space
	put "" % Space
	put "Wrong! The answer was false! "
	% Display incorrect picture for True and False Questions.
	var d61 : int % Declare variables.
	d61 := Pic.FileNew ("incorrectGT.jpg") % Find image.
	Pic.Draw (d61, 0, 300, picCopy) % Draw picture.
	Music.PlayFileLoop ("wrong.wav")
	delay (1000) % Delay
	Music.PlayFileStop
    end if
    delay (4000) % Delay
    cls % Clear screen



    % Question 7
    % Declare variable for question 7.
    var a7 : string
    % Play Music.
    Music.PlayFileLoop ("guitar.wav")
    put "" % Space
    put "" % Space
    put "" % Space
    put "" % Space
    put "" % Space
    put "" % Space
    put "" % Space
    put "" % Space
    % Asks question.
    put "" % Space
    put "7. True or False? You can increase the rate of reaction by"
    put "increasing the temperature."
    % Display Title picture for True and False Questions.
    var d61 : int % Declare variables.
    d61 := Pic.FileNew ("falseGT.jpg") % Find image.
    Pic.Draw (d61, 180, 310, picCopy) % Draw picture.
    put "" % Space
    put "" % Space
    put "" % Space
    put "" % Space
    put "Input 'f' for false or 't' for true."
    get a7
    put ""
    if a7 = "t" then
	cls % Clear screen
	put "" % Space
	put "" % Space
	put "" % Space
	put "" % Space
	put "" % Space
	put "" % Space
	put "" % Space
	put "" % Space
	% Display you are correct message.
	put "Correct. The answer is true. You can increase the rate of "
	put "reaction by increasing the temperature."
	% Display correct picture for True and False Questions.
	var d62 : int % Declare variables.
	d62 := Pic.FileNew ("correctGT2.jpg") % Find image.
	Pic.Draw (d62, 0, 300, picCopy) % Draw picture.
	% Put picture.
	var pic34 : int % Declare variables.
	pic34 := Pic.FileNew ("react.jpg") % Find image.
	Pic.Draw (pic34, 480, 0, picCopy) % Draw picture.
	% Add 1 to counter.
	counter := counter + 1
	Music.PlayFileLoop ("winner.wav")
	delay (5500) % Delay
	Music.PlayFileStop
    else
	cls % Clear screen
	put "" % Space
	put "" % Space
	put "" % Space
	put "" % Space
	put "" % Space
	put "" % Space
	put "" % Space
	put "" % Space
	% Display incorrect Message.
	put "Wrong! The answer was true! "
	% Display incorrect picture for True and False Questions.
	var d80 : int % Declare variables.
	d80 := Pic.FileNew ("incorrectGT.jpg") % Find image.
	Pic.Draw (d80, 0, 300, picCopy) % Draw picture.
	Music.PlayFileLoop ("wrong.wav")
	delay (1000) % Delay
	Music.PlayFileStop
    end if
    delay (4000) % Delay
    cls % Clear screen



    % Question 8
    % Declare variables for question 8.
    var a8 : string
    % Play music.
    Music.PlayFileLoop ("Sunday Drive.wav")
    % Asks question.
    put "" % Space
    put "" % Space
    put "" % Space
    put "" % Space
    put "" % Space
    put "" % Space
    put "" % Space
    put "" % Space
    put "8. True or False? The limiting factor in combustion is fuel."
    % Display Title picture for True and False Questions.
    var d65 : int % Declare variables.
    d65 := Pic.FileNew ("falseGT.jpg") % Find image.
    Pic.Draw (d65, 180, 310, picCopy) % Draw picture.
    put "" % Space
    put "" % Space
    put "" % Space
    put "" % Space
    put "Input 'f' for false or 't' for true."
    get a8
    put ""
    if a8 = "f" then
	cls % Clear screen
	put "" % Space
	put "" % Space
	put "" % Space
	put "" % Space
	put "" % Space
	put "" % Space
	put "" % Space
	put "" % Space
	% Display correct message.
	put "Correct. The answer is false. The limiting factor in combustion. "
	put "is oxygen, not fuel."
	% Display correct picture for True and False Questions.
	var d62 : int % Declare variables.
	d62 := Pic.FileNew ("correctGT2.jpg") % Find image.
	Pic.Draw (d62, 0, 300, picCopy) % Draw picture.
	% Put picture.
	var pic31 : int % Declare variables.
	pic31 := Pic.FileNew ("gasoline.jpg") % Find image.
	Pic.Draw (pic31, 370, 0, picCopy) % Draw picture.
	counter := counter + 1
	Music.PlayFileLoop ("winner.wav")
	delay (5500) % Delay
	Music.PlayFileStop
    else
	cls % Clear screen
	put "" % Space
	put "" % Space
	put "" % Space
	put "" % Space
	put "" % Space
	put "" % Space
	put "" % Space
	put "" % Space
	% Display incorrect message.
	% Display incorrect picture for True and False Questions.
	var d82 : int % Declare variables.
	d82 := Pic.FileNew ("incorrectGT.jpg") % Find image.
	Pic.Draw (d82, 0, 300, picCopy) % Draw picture.
	put "Wrong! The answer was false! "
	Music.PlayFileLoop ("wrong.wav")
	delay (1000) % Delay
	Music.PlayFileStop
    end if
    delay (4000) % Delay
    cls % Clear screen



    % Question 9
    % Declare variables for question 9.
    var a9 : string
    % Play music.
    Music.PlayFileLoop ("Rolling Beats.wav")
    % Asks question.
    put "" % Space
    put "" % Space
    put "" % Space
    put "" % Space
    put "" % Space
    put "" % Space
    put "" % Space
    put "" % Space
    put "9. True or False? Herbicides are used to kill pesky bugs."
    % Display Title picture for True and False Questions.
    var d67 : int % Declare variables.
    d67 := Pic.FileNew ("falseGT.jpg") % Find image.
    Pic.Draw (d67, 180, 310, picCopy) % Draw picture.
    put "" % Space
    put "" % Space
    put "" % Space
    put "" % Space
    % Input answer.
    put "Input 'f' for false or 't' for true."
    get a9
    put ""
    if a9 = "f" then
	cls % Clear screen
	put "" % Space
	put "" % Space
	put "" % Space
	put "" % Space
	put "" % Space
	put "" % Space
	put "" % Space
	put "" % Space
	% Display correct message.
	put "Correct. The answer is false. Herbicides are used to"
	put "destroy weeds."
	% Display correct picture for True and False Questions.
	var d76 : int % Declare variables.
	d76 := Pic.FileNew ("correctGT2.jpg") % Find image.
	Pic.Draw (d76, 0, 300, picCopy) % Draw picture.
	% Put picture.
	var pic32 : int % Declare variables.
	pic32 := Pic.FileNew ("herb.jpg") % Find image.
	Pic.Draw (pic32, 370, 0, picCopy) % Draw picture.
	% Add 1 to counter.
	counter := counter + 1
	Music.PlayFileLoop ("winner.wav")
	delay (5500) % Delay
	Music.PlayFileStop
    else
	cls % Clear screen
	put "" % Space
	put "" % Space
	put "" % Space
	put "" % Space
	put "" % Space
	put "" % Space
	put "" % Space
	put "" % Space
	% Display incorrect message.
	put "Wrong! The answer was false! "
	% Display incorrect picture for True and False Questions.
	var d100 : int % Declare variables.
	d100 := Pic.FileNew ("incorrectGT.jpg") % Find image.
	Pic.Draw (d100, 0, 300, picCopy) % Draw picture.
	Music.PlayFileLoop ("wrong.wav")
	delay (1000) % Delay
	Music.PlayFileStop
    end if
    delay (4000) % Delay
    cls % Clear screen



    % Question 10
    % Declare variables for question 10.
    var a10 : string
    % Play Music.
    Music.PlayFileLoop ("Distorted Rock.wav")
    % Asks Question.
    put "" % Space
    put "" % Space
    put "" % Space
    put "" % Space
    put "" % Space
    put "" % Space
    put "" % Space
    put "" % Space
    put "10. True or False? Like solids and gases, liquids can be compressed."
    % Display Title picture for True and False Questions.
    var d69 : int % Declare variables.
    d69 := Pic.FileNew ("falseGT.jpg") % Find image.
    Pic.Draw (d69, 180, 310, picCopy) % Draw picture.
    put "" % Space
    put "" % Space
    put "" % Space
    put "" % Space
    put "Input 'f' for false or 't' for true."
    get a10
    put ""
    if a10 = "f" then
	cls % Clear screen
	put "" % Space
	put "" % Space
	put "" % Space
	put "" % Space
	put "" % Space
	put "" % Space
	put "" % Space
	put "" % Space
	% Display correct message.
	put "Correct. The answer is false. Liquids cannot be"
	put "compressed."
	% Display correct picture for True and False Questions.
	var d76 : int % Declare variables.
	d76 := Pic.FileNew ("correctGT2.jpg") % Find image.
	Pic.Draw (d76, 0, 300, picCopy) % Draw picture.
	% Put picture.
	var pic33 : int % Declare variables.
	pic33 := Pic.FileNew ("state.jpg") % Find image.
	Pic.Draw (pic33, 270, 0, picCopy) % Draw picture.
	% Add 1 to counter
	counter := counter + 1
	Music.PlayFileLoop ("winner.wav")
	delay (5500)
	Music.PlayFileStop
    else
	cls % Clear screen
	put "" % Space
	put "" % Space
	put "" % Space
	put "" % Space
	put "" % Space
	put "" % Space
	put "" % Space
	put "" % Space
	% Display incorrect message
	put "Wrong! The answer was false! "
	% Display incorrect picture for True and False Questions.
	var d101 : int % Declare variables.
	d101 := Pic.FileNew ("incorrectGT.jpg") % Find image.
	Pic.Draw (d101, 0, 300, picCopy) % Draw picture.
	Music.PlayFileLoop ("wrong.wav")
	delay (1000) % Delay
	Music.PlayFileStop
    end if
    delay (4000) % Delay
    cls % Clear screen




    % Fill in the Blanks Question.
    % Insert box.
    drawfillbox (0, 0, 700, 500, black)
    % Display a title Screen

    var title3GT : int
    title3GT := Pic.FileNew ("blanksGT.jpg")
    Pic.Draw (title3GT, 0, 0, picCopy)
    delay (5000) % Delay
    cls % Clear screen



    %Question 11
    % Declare variables for question 11.
    var a11, hint : string
    % Play Music.
    Music.PlayFileLoop ("smb2.wav")
    % Asks Fill in the Blanks Question.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "11. Organic compounds are molecular substances that"
    put "contain [_________] atoms as natural building blocks."
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    % Put Fill in the Blanks Title Picture.
    var blanks : int % Declare variables.
    blanks := Pic.FileNew ("blanks.jpg") % Find image.
    Pic.Draw (blanks, 110, 280, picCopy) % Draw picture.
    % Prompt for HINT.
    put "Do you want a hint to this Fill in the Blank statement? (yes/no)"
    get hint
    if hint = "yes"
	    then
	cls % Clear screen
	put "" % Space.
	put "" % Space.
	put "" % Space.
	put "" % Space.
	put "" % Space.
	put "" % Space.
	put "" % Space.
	put "Hint: A diamond is composed completely of this material!"
	% Put picture.
	var hint2 : int % Declare variables.
	hint2 := Pic.FileNew ("hint.jpg") % Find image.
	Pic.Draw (hint2, 0, 300, picCopy) % Draw picture.
	% Put picture of diamond.
	var pic39 : int % Declare variables.
	pic39 := Pic.FileNew ("diamond.jpg") % Find image.
	Pic.Draw (pic39, 400, 0, picCopy) % Draw picture.
	delay (10000) % Delay
	cls % Clear screen
    else
	cls % Clear screen
    end if
    % Asks Question.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "11. Organic compounds are molecular substances that"
    put "contain [_________] atoms as natural building blocks."
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    % Put picture.
    blanks := Pic.FileNew ("blanks.jpg") % Find image.
    Pic.Draw (blanks, 110, 280, picCopy) % Draw picture.
    % Prompt for Answer.
    put "Fill in the blank to the above statement."
    get a11
    if a11 = "carbon" then
	counter := counter + 1
	cls % Clear screen
	put ""
	put ""
	put ""
	put ""
	put ""
	put ""
	put ""
	put ""
	put "Organic compounds are molecular substances that"
	put "contain [", a11, "] as natural building blocks."
	% Put picture of carbon.
	var pic40 : int % Declare variables.
	pic40 := Pic.FileNew ("carbon.jpg") % Find image.
	Pic.Draw (pic40, 250, 0, picCopy) % Draw picture.
	% Put picture.
	var right : int % Declare variables.
	right := Pic.FileNew ("correct.jpg") % Find image.
	Pic.Draw (right, 0, 290, picCopy) % Draw picture.
	% Play correct music.
	Music.PlayFileLoop ("winner.wav")
	delay (5500) % Delay
	Music.PlayFileStop
    else
	cls % Clear screen
	put ""
	put ""
	put ""
	put ""
	put ""
	put ""
	put ""
	put "The answer was not '", a11, "'!"
	put ""
	put "The correct answer was 'carbon'!"
	put "" %Space.
	put "Organic compounds are molecular substances that"
	put "contain [carbon] atoms as natural building blocks."
	% Put picture.
	var wrong : int % Declare variables.
	wrong := Pic.FileNew ("incorrect.jpg") % Find image.
	Pic.Draw (wrong, 0, 290, picCopy) % Draw picture.
	% Play wrong music.
	Music.PlayFileLoop ("wrong.wav")
	delay (1000) % Delay
	Music.PlayFileStop
    end if
    delay (4000) % Delay
    cls % Clear screen



    %Question 12
    % Declare variables for question 12.
    var a12 : string
    % Play Music.
    Music.PlayFileLoop ("smb3.wav")
    % Asks Fill in the Blanks Question.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "12. A _________is a substance that increases the rate of"
    put "a chemical reaction without being consumed by the reaction"
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    % Put Fill in the Blanks Title Picture.
    blanks := Pic.FileNew ("blanks.jpg") % Find image.
    Pic.Draw (blanks, 110, 280, picCopy) % Draw picture.
    % Prompt for HINT.
    put "Do you want a hint to this Fill in the Blank statement? (yes/no)"
    get hint
    if hint = "yes"
	    then
	cls % Clear screen
	put "" % Space.
	put "" % Space.
	put "" % Space.
	put "" % Space.
	put "" % Space.
	put "" % Space.
	put "" % Space.
	put "Hint: An example of this is the enzymes that help"
	put "to break down the large food particles in our bodies, which"
	put "provides the body with energy."
	% Put picture.
	var hint2 : int
	hint2 := Pic.FileNew ("hint.jpg") % Find image.
	Pic.Draw (hint2, 0, 300, picCopy) % Draw picture.
	% Put picture of diamond.
	var pic42 : int % Declare variables.
	pic42 := Pic.FileNew ("enzymes.jpg") % Find image.
	Pic.Draw (pic42, 200, 0, picCopy) % Draw picture.
	delay (10000) % Delay
	cls % Clear screen
    else
	cls % Clear screen
    end if
    % Asks Question.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "12. A _________ is a substance that increases the rate of"
    put "a chemical reaction without being consumed by the reaction"
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    % Put picture.
    blanks := Pic.FileNew ("blanks.jpg") % Find image.
    Pic.Draw (blanks, 110, 280, picCopy) % Draw picture.
    % Prompt for Answer.
    put "Fill in the blank to the above statement."
    get a12
    if a12 = "catalyst" then
	counter := counter + 1
	cls % Clear screen
	put ""
	put ""
	put ""
	put ""
	put ""
	put ""
	put ""
	put ""
	put "A ", a12, " is a substance that increases the rate of"
	put "a chemical reaction without being consumed by the reaction"
	% Put picture of catalyst.
	var pic44 : int % Declare variables.
	pic44 := Pic.FileNew ("catalyst.jpg") % Find image.
	Pic.Draw (pic44, 250, 0, picCopy) % Draw picture.
	% Put picture.
	var right : int % Declare variables.
	right := Pic.FileNew ("correct.jpg") % Find image.
	Pic.Draw (right, 0, 290, picCopy) % Draw picture.
	% Play correct music.
	Music.PlayFileLoop ("winner.wav")
	delay (5500) % Delay
	Music.PlayFileStop
    else
	cls % Clear screen
	put ""
	put ""
	put ""
	put ""
	put ""
	put ""
	put ""
	put "The answer was not '", a12, "'!"
	put ""
	put "The correct answer was 'catalyst'!"
	put "" %Space.
	put "A catalyst is a substance that increases the rate of"
	put "a chemical reaction without being consumed by the reaction"
	% Put picture.
	var wrong : int % Declare variables.
	wrong := Pic.FileNew ("incorrect.jpg") % Find image.
	Pic.Draw (wrong, 0, 290, picCopy) % Draw picture.
	% Play wrong music.
	Music.PlayFileLoop ("wrong.wav")
	delay (1000) % Delay
	Music.PlayFileStop
    end if
    delay (4000) % Delay
    cls % Clear screen



    %Question 13
    % Declare variables for question 13.
    var a13 : string
    % Play Music.
    Music.PlayFileLoop ("smb4.wav")
    % Asks Fill in the Blanks Question.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "13. Substances that act as preservatives by slowing down the rate"
    put "of oxidization (rate of decay) in food molecules are known as ___________"
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    % Put Fill in the Blanks Title Picture.
    blanks := Pic.FileNew ("blanks.jpg") % Find image.
    Pic.Draw (blanks, 110, 280, picCopy) % Draw picture.
    % Prompt for HINT.
    put "Do you want a hint to this Fill in the Blank statement? (yes/no)"
    get hint
    if hint = "yes" then
	cls % Clear screen
	put "" % Space.
	put "" % Space.
	put "" % Space.
	put "" % Space.
	put "" % Space.
	put "" % Space.
	put "" % Space.
	put "Hint: An example of this is BHA (butylated hydroxyanisole)"
	put "or BHT (butylated hydroxytoluene) that is found in foods"
	put "such as potato chips. These ingredients help to slow down"
	put "the rate of decay in the chips."
	% Put picture.
	var hint2 : int
	hint2 := Pic.FileNew ("hint.jpg") % Find image.
	Pic.Draw (hint2, 0, 300, picCopy) % Draw picture.
	% Put picture of chips.
	var pic45 : int % Declare variables.
	pic45 := Pic.FileNew ("chips.jpg") % Find image.
	Pic.Draw (pic45, 200, 0, picCopy) % Draw picture.
	delay (10000) % Delay
	cls % Clear screen
    else
	cls % Clear screen
    end if
    % Asks Question.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "13. Substances that act as preservatives by slowing down the rate"
    put "of oxidization (rate of decay) in food molecules are known as ___________"
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    % Put picture.
    blanks := Pic.FileNew ("blanks.jpg") % Find image.
    Pic.Draw (blanks, 110, 280, picCopy) % Draw picture.
    % Prompt for Answer.
    put "Fill in the blank to the above statement."
    get a13
    if a13 = "antioxidants" then
	counter := counter + 1
	cls % Clear screen
	put ""
	put ""
	put ""
	put ""
	put ""
	put ""
	put ""
	put ""
	put "Substances that act as preservatives by slowing down the rate"
	put "of oxidization (rate of decay) in food molecules are known as ", a13, "."
	% Put picture of antioxydant.
	var pic46 : int % Declare variables.
	pic46 := Pic.FileNew ("antio.jpg") % Find image.
	Pic.Draw (pic46, 250, 0, picCopy) % Draw picture.
	% Put picture.
	var right : int % Declare variables.
	right := Pic.FileNew ("correct.jpg") % Find image.
	Pic.Draw (right, 0, 290, picCopy) % Draw picture.
	% Play correct music.
	Music.PlayFileLoop ("winner.wav")
	delay (5500) % Delay
	Music.PlayFileStop
    else
	cls % Clear screen
	put ""
	put ""
	put ""
	put ""
	put ""
	put ""
	put ""
	put "The answer was not '", a13, "'!"
	put ""
	put "The correct answer was 'antioxidants'!"
	put "" %Space.
	put "Substances that act as preservatives by slowing down the rate"
	put "of oxidization (rate of decay) in food molecules are known as antioxidants."
	% Put picture.
	var wrong : int % Declare variables.
	wrong := Pic.FileNew ("incorrect.jpg") % Find image.
	Pic.Draw (wrong, 0, 290, picCopy) % Draw picture.
	% Play wrong music.
	Music.PlayFileLoop ("wrong.wav")
	delay (1000) % Delay
	Music.PlayFileStop
    end if
    delay (4000) % Delay
    cls % Clear screen



    %Question 14
    % Declare variables for question 14.
    var a14 : string
    % Play Music.
    Music.PlayFileLoop ("smb5.wav")
    % Asks Fill in the Blanks Question.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "14. The reactions that occur between acids and bases are known as"
    put " _________ reactions."
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    % Put Fill in the Blanks Title Picture.
    blanks := Pic.FileNew ("blanks.jpg") % Find image.
    Pic.Draw (blanks, 110, 280, picCopy) % Draw picture.
    % Prompt for HINT.
    put "Do you want a hint to this Fill in the Blank statement? (yes/no)"
    get hint
    if hint = "yes"
	    then
	cls % Clear screen
	put "" % Space.
	put "" % Space.
	put "" % Space.
	put "" % Space.
	put "" % Space.
	put "" % Space.
	put "" % Space.
	put "HINT: An example of this reaction is when vinegar (acetic acid) reacts with"
	put "baking soda."
	% Put HINT Title Picture.
	var hint2 : int
	hint2 := Pic.FileNew ("hint.jpg") % Find image.
	Pic.Draw (hint2, 0, 300, picCopy) % Draw picture.
	% Put picture of neutralization reaction between vinegar and baking soda.
	var pic47 : int % Declare variables.
	pic47 := Pic.FileNew ("volcano5.jpg") % Find image.
	Pic.Draw (pic47, 200, 0, picCopy) % Draw picture.
	delay (10000) % Delay
	cls % Clear screen
    else
	cls % Clear screen
    end if
    % Asks Question.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "14. The reactions that occur between acids and bases are known as"
    put " _________ reactions."
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    % Put picture.
    blanks := Pic.FileNew ("blanks.jpg") % Find image.
    Pic.Draw (blanks, 110, 280, picCopy) % Draw picture.
    % Prompt for Answer.
    put "Fill in the blank to the above statement."
    get a14
    if a14 = "neutralization" then
	counter := counter + 1
	cls % Clear screen
	put ""
	put ""
	put ""
	put ""
	put ""
	put ""
	put ""
	put ""
	put "The reactions that occur between acids and bases are known as"
	put "", a14, " reactions."
	% Put picture of neutralization.
	var pic48 : int % Declare variables.
	pic48 := Pic.FileNew ("volcano5.jpg") % Find image.
	Pic.Draw (pic48, 250, 0, picCopy) % Draw picture.
	% Put picture.
	var right : int % Declare variables.
	right := Pic.FileNew ("correct.jpg") % Find image.
	Pic.Draw (right, 0, 290, picCopy) % Draw picture.
	% Play correct music.
	Music.PlayFileLoop ("winner.wav")
	delay (5500) % Delay
	Music.PlayFileStop
    else
	cls % Clear screen
	put ""
	put ""
	put ""
	put ""
	put ""
	put ""
	put ""
	put "The answer was not '", a14, "'!"
	put ""
	put "The correct answer was 'neutralization'!"
	put "" %Space.
	put "The reactions that occur between acids and bases are known as"
	put "neutralization reactions."
	% Put picture.
	var wrong : int % Declare variables.
	wrong := Pic.FileNew ("incorrect.jpg") % Find image.
	Pic.Draw (wrong, 0, 290, picCopy) % Draw picture.
	% Play wrong music.
	Music.PlayFileLoop ("wrong.wav")
	delay (1000) % Delay
	Music.PlayFileStop
    end if
    delay (4000) % Delay
    cls % Clear screen



    %Question 15
    % Declare variables for question 15.
    var a15 : string
    % Play Music.
    Music.PlayFileLoop ("smb6.wav")
    % Asks Fill in the Blanks Question.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "15. A chemical reaction that releases heat into the environment is"
    put "known as an _____________ reaction."
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    % Put Fill in the Blanks Title Picture.
    blanks := Pic.FileNew ("blanks.jpg") % Find image.
    Pic.Draw (blanks, 110, 280, picCopy) % Draw picture.
    % Prompt for HINT.
    put "Do you want a hint to this Fill in the Blank statement? (yes/no)"
    get hint
    if hint = "yes"
	    then
	cls % Clear screen
	put "" % Space.
	put "" % Space.
	put "" % Space.
	put "" % Space.
	put "" % Space.
	put "" % Space.
	put "" % Space.
	put "HINT: An example of this kind of chemical reaction is a dynamite explosion."
	% Put HINT Title Picture.
	var hint2 : int
	hint2 := Pic.FileNew ("hint.jpg") % Find image.
	Pic.Draw (hint2, 0, 300, picCopy) % Draw picture.
	% Put picture of an explosion caused by a dynamite.
	var pic49 : int % Declare variables.
	pic49 := Pic.FileNew ("dynamite.jpg") % Find image.
	Pic.Draw (pic49, 200, 0, picCopy) % Draw picture.
	delay (10000) % Delay
	cls % Clear screen
    else
	cls % Clear screen
    end if
    % Asks Question.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "15. A chemical reaction that releases heat into the environment is"
    put "known as an _____________ reaction."
    put "" % Space.
    put "" % Space.
    put "" % Space.
    put "" % Space.
    % Put picture.
    blanks := Pic.FileNew ("blanks.jpg") % Find image.
    Pic.Draw (blanks, 110, 280, picCopy) % Draw picture.
    % Prompt for Answer.
    put "Fill in the blank to the above statement."
    get a15
    if a15 = "exothermic" then
	counter := counter + 1
	cls % Clear screen
	put "" % Space
	put "" % Space
	put "" % Space
	put "" % Space
	put "" % Space
	put "" % Space
	put "" % Space
	put "" % Space
	put "A chemical reaction that releases heat into the environment is"
	put "known as an ", a15, " reaction."
	% Put picture of exothermic reaction.
	var pic50 : int % Declare variables.
	pic50 := Pic.FileNew ("ExplosionExample.jpg") % Find image.
	Pic.Draw (pic50, 250, 0, picCopy) % Draw picture.
	% Put picture.
	var right : int % Declare variables.
	right := Pic.FileNew ("correct.jpg") % Find image.
	Pic.Draw (right, 0, 290, picCopy) % Draw picture.
	% Play correct music.
	Music.PlayFileLoop ("winner.wav")
	delay (5500) % Delay
	Music.PlayFileStop
    else
	cls % Clear screen
	put "" % Space
	put "" % Space
	put "" % Space
	put "" % Space
	put "" % Space
	put "" % Space
	put "" % Space
	put "The answer was not '", a15, "'!"
	put "" % Space
	put "The correct answer was 'exothermic'!"
	put "" %Space.
	put "A chemical reaction that releases heat into the environment is"
	put "known as an exothermic reaction."
	% Put picture.
	var wrong : int % Declare variables.
	wrong := Pic.FileNew ("incorrect.jpg") % Find image.
	Pic.Draw (wrong, 0, 290, picCopy) % Draw picture.
	% Play wrong music.
	Music.PlayFileLoop ("wrong.wav")
	delay (1000) % Delay
	Music.PlayFileStop
    end if
    delay (4000) % Delay
    cls % Clear screen


    % Play Congratulations Music
    Music.PlayFileLoop ("Large Crowd Applause 05.wav")
    % Saying "Congratulations" Splash Screen
    % Put picture.
    var pic38 : int % Declare variables.
    pic38 := Pic.FileNew ("menu3GT.jpg") % Find image.
    Pic.Draw (pic38, 50, 0, picCopy) % Draw picture.
    delay (8000) % Delay
    cls % Clear screen
    Music.PlayFileStop


    loop
	% Play music.
	Music.PlayFileLoop ("wifi.wav")
	% Declare variable to end loop.
	var end4 : string
	% Insert black filled coloured box.
	drawfillbox (0, 0, 700, 500, black)
	% Put scoreboard picture.
	var score : int % Declare variables.
	score := Pic.FileNew ("score.jpg") % Find image.
	Pic.Draw (score, 0, 0, picCopy) % Draw picture.
	% Display Counter.
	locatexy (0, 130)
	put "", name1, ", your final score on The Science Quiz was ", counter, "/15."
	put ""
	delay (6000) % Delay
	% Determine the mark that the user achieved.
	% Declare variables for mark level.
	var mark : real
	% Determine equation for mark.
	mark := counter / 15 * 100
	% Decision Structure for mark.
	if mark = 100 then
	    put "Your overall mark was ", mark, "%.You scored Perfect with an A+!"
	    put ""
	    delay (6000) % Delay

	    % Declare variables for certificate of accomplishment.
	    var perfect : string
	    put "Would you like to print out a certificate of accomplishment"
	    put "for achieving 100% on the Science Quiz? (yes/no)"
	    get perfect
	    % Decision structure.
	    if perfect = "yes" then
		cls % Clear screen
		put "Wait for the certificate to load on screen. Once the certificate."
		put "is displayed, pause the program and print out the certificate."
		put "Then resume the program to continue."
		delay (7000) % Delay
		cls % Clear screen % Clear Screen
		% Insert Certificate Picture.
		var cert : int % Declaring variables for the certificate picture.
		cert := Pic.FileNew ("certificate.jpg")
		Pic.Draw (cert, 0, 0, picCopy)
		% Insert name on certificate.
		locatexy (260, 230)
		put "", name1
		delay (10000) % Delay
		put "Type 'yes' to continue the program"
		get end4
		exit when end4 = "yes"
	    else
		put "Type 'yes' to continue the program"
		get end4
		exit when end4 = "yes"
	    end if
	elsif mark >= 80 then
	    put "Your overall mark was ", mark : 0 : 0, "%, so you got an A. Congratulations!"
	    put "" %Space
	    delay (6000) %Delay
	    put "Type 'yes' to continue the program"
	    get end4
	    exit when end4 = "yes"
	elsif mark >= 70 then
	    put "Your overall mark was ", mark : 0 : 0, "%, so you got a B. Good Job!"
	    put "" %Space
	    delay (6000) %Delay
	    put "Type 'yes' to continue the program"
	    get end4
	    exit when end4 = "yes"
	elsif mark >= 60 then
	    put "Your overall mark was ", mark : 0 : 0, "%, so you got a C. You must work harder!"
	    put "" %Space
	    delay (6000) %Delay
	    put "Type 'yes' to continue the program"
	    get end4
	    exit when end4 = "yes"
	elsif mark >= 50 then
	    put "Your overall mark was ", mark : 0 : 0, "%, so you got a D. Look through your Science Notes and retake the quiz!"
	    put "" %Space
	    delay (6000) %Delay
	    put "Type 'yes' to continue the program"
	    get end4
	    exit when end4 = "yes"
	else % Declares what happens if end4 equals something else.
	    put "Your overall mark was ", mark : 0 : 0, "%. Your mark was below 50% so you got an R. Sorry, you failed the quiz!"
	    put "" %Space
	    delay (6000) %Delay
	    put "Type 'yes' to continue the program"
	    get end4
	    exit when end4 = "yes"
	end if % End decision structure.
    end loop % Ends the loop.
    cls % Clear screen



    % Prompt to redo the quiz or  end it.
    % Declaring variable for this decision.
    var r : string
    put "" % Space
    put "" % Space
    put "" % Space
    put "" % Space
    put "" % Space
    put "" % Space
    put "" : 20, "Do you want to redo the quiz or end it. "
    put "" : 20, "Type 'end' to end the quiz."
    put "" : 20, "Type anything to redo the quiz."
    % Put picture.
    var pic36 : int % Declare variables.
    pic36 := Pic.FileNew ("redo.jpg") % Find image.
    Pic.Draw (pic36, 100, 350, picCopy) % Draw picture.
    % Display Maple Leaf
    drawfillmapleleaf (10, 10, 100, 100, red)
    drawmapleleaf (10, 10, 100, 100, black)
    % Put picture.
    var pic37 : int % Declare variables.
    pic37 := Pic.FileNew ("earth.jpg") % Find image.
    Pic.Draw (pic37, 470, 0, picCopy) % Draw picture.
    get r
    cls % Clear screen
    exit when r = "end"
    % End entire program loop.
end loop % End the loop that surrounds the entire quiz program.
Music.PlayFileStop




