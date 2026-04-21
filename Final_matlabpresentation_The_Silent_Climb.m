
fprintf('You are an adventure determined to conquer the Lonley peak.\n It has sat looming over the village your whole life and no one has ever reached the peak.\n The air on this mountian is thin, the road is long and uncertain, and you feel as though your being watched\n \n')
fprintf('As you begin the climb you feel inspired and filled with courage as you reach a road that splits into three paths\n\n')
while true
fprintf('The left path is narrow, steep, and covered in loose gravel. \nThe middle path is a wide road but dissapears into a dark ominous forest. \nThe right path is a direct climb over jagged rocks\n')
choice1 = input('Please pick a path (Left(1), Middle(2), Right(3)):');
knowledge = 0;
%Encounter 1
switch choice1
    case 1
        fprintf('As you climb the gravel path the gravel the gorund begin to shif underneath yourself and a landslide begins taking you with it.\n')
        result = 2;
    case 2
        fprintf('You begin into the forest the trees block all sun light and the air grows colder.\n')
        result = 1;
    case 3 
        fprintf('You begin climbing the jagged rocked and as you step on one it breaks you loose your footing and fall.\n')
        result = 2;
end

%Encounter 2
if result == 1
    fprintf('The path is safe for now and as you move deeper into the forest you feel as though your being watched. \n')
    fprintf('Eventually you notice a pair of glowing red eyes amoungst the trees.\n');
    choice2 = input('Run out of the forest (1), Stare Down the Eyes (2), Slowly back away (3):');
    switch choice2
        case 1
            fprintf('You sprint back the way you came but eventually loose your way and come to a cliff edge and the ground collapse from under you.');
            result = 2;
        case 2
            fprintf('You stare down the eyes eventually a wolf emerges from the woods you begin to wrestle with it as more wolves begin to attack you.')
            result = 2;
        case 3
            fprintf('You slowly back away and a wolf emerges from the woods but seem uninterested and walks away.\n');
            result = 1;
    end
end

%Encounter 3
       if result == 1 
           fprintf('You watch the wolf retreat into the woods and continue on the path heart punding');
           fprintf('You continue through the forest eventually making it to a large chasem. \nYou walk along the chasem until you notice an old bridge \nThe bridge is missng boards and sways back and forth in the wind.\n')
           choice3 = input('Jump the Ravine (1), Attempt to cross the bridge carfully (2), Climb down the walls(3):');
           switch choice3
               case 1
                   fprintf('You attempt the Jump but gravley mis judge your ability and fall into the ravine.\n');
                   result = 2;
               case 2
                   fprintf('You carfully step across the bridge and boards begin to snap under your weight but you safely make it across.\n');
                   result = 1;
               case 3 
                   fprintf('You descend into the chasem but find no way back up the other side.\n');
                   result = 3;
                   if result == 3
                       fprintf('You walk through the ravine searching for a way up and eventually find and old roap ladder with a hut at the bottem of it.\n')
                       choice3A = input('Climb the Ladder (1), Enter the Hut (2):');
                       if choice3A == 1
                           fprintf('You climb the ladder and make it safley to the top of the ravine felling relieved that you are finally out.\n');
                           result = 1;
                       end
                       if choice3A == 2
                           fprintf('Entering the hut you find a cluttered workspace with books covering the walls.\nOnly one book is placed on the table titled "The Silent Ascent".\nPicking it up you read the only one man has made it to the top of the mountian and the book describe a trecherous final climb that is only possible with the map located at the back of this book.\nReading this you immideatly flip to the final page and find that the last page has been torn out.\nYou feel dissapointed but leave the hut and ascend the ladder making it to the other side.\n');
                           result = 1;
                           knowledge = 1;
                       end
                   end
           end
       end

       %Encounter 4
       if result == 1 
           fprintf('You begin on the path again acending higher and higher.\nThe wind eventually picks up and dark clouds roll in.\nSuddenly you are caught in a violent snow storm.\n');
           choice4 = input('Duck in to a near by cave and wait out the storm (1), Try to continue up the mountian (2),Turn back down the mountian (3):');
           switch choice4
               case 1
                   fprintf('You sprint into the near by cave and watch as the storm passes.\n')
                   result = 1;
               case 2
                   fprintf('Continueing up trying to trek through the storm but eventually feel the snow below you give way and you are consumed in an avalanche.\n')
                   result = 2;
               case 3
                   fprintf('Trying to make it down the mountian quickly you begin to hear a large rumbling as you tur around and avalanche is descending and swallows you whole.\n')
                   result = 2;
           end
       end
       if result == 1
           fprintf('You survive the violent storm and begin up the mountian again as you approach the peak you notice a man in the frozen landscape.\nHe was and adventurer before and is long since dead.\n');
           if knowledge == 1
               fprintf('You notice something in his hand and as you approach its the map for the final climb.\nQuickly you grab the map and it reveals the path throught the trecherous final passage.\n');
               result = 3;
           end
               if result == 1
                   choice5 = input('Continue up the mountian ignoring the stranger(1), Search the body for supplies(2), Approach to pay your respects to the fallen adventurer(3):\n');
                   switch choice5
                       case 1
                           result = 1;
                       case 2
                           fprintf('While searching for supplies you find a map clutched in the hands of the stranger taking it you continue on.\n')
                           result = 3;
                       case 3
                           fprintf('You kneel down to pay your respects and notice a map clutched in the fist of the adventurer. You take it and continue on.\n')
                           result = 3;
                   end
               end
       end
               if result == 1
                   fprintf('You approach the final ascent only few have made it here and this is the ultimate challange of the climb.\n A three way fork blocks your path just as it did in the beginning but thses paths are all identical.\n')
                   choice5 = input ('Left(1), Middle(2), Right(3):');
                   switch choice5
                       case 1
                           fprintf('You begin on the left path which twists and turns every which way.\nYou being to notice that you are passing the same landmarks you try to turn back down the path you came but can not seem to find it.\n')
                           result = 2;
                       case 2
                           fprintf('You begin down the middle path and reach a sheer cliff and begin to climb but a violent wind knocks you off balance any you fall down.\n')
                           result = 2;
                       case 3
                           fprintf('You begin down the right path which turns out to be a straight path up.\n');
                   end
               end
               if result == 3
                   fprintf('You approach the final ascent only few have made it here and this is the ultimate challange of the climb.\nA three way fork blocks your path just as it did in the beginning but thses paths are all identical.\n')
                   fprintf('Out of ideas you pull out the map you collected and discover that the right most path is a straight shot up and begin the final ascent.\n');
                   result = 1;
               end
               if result == 1
                   fprintf('You stand alone at the top of the unbeatable mountian feeling a sense of accomplishment.\nNow if only you could make it back down.\n');
                   img = imread('finalprojectwinscreen.png');
                   imshow(img);
                   result = 2;
               end
                if result == 2
                    Y = 1;
                    y = 1;
                    N = 0;
                    n = 0;
                    press_start = input('Play Again? (Y/N):');
                    if press_start == 0
                        break;
                    end
                end
end
                        






                 
             

