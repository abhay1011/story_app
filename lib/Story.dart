
import 'StorySequence.dart';
class Story{
  static int partCount=0;
  List <StorySequence> _storyList=[
    StorySequence('It was cold rainy evening in the India\'s one of dense rainy forest very far from the human civilisation, i was inside my camping tent observing the nature','Next',2,'',0),//0
    StorySequence('You Walked quickly far from that placed and reached your home alive','Reset',0,'',0),//1
    StorySequence('When reached near the burning fire you saw fresh spot of blood reflecting due the fire flame, suddenly you a hear weired sound coming from the nearby bushed you decided to ','Inspect the place',4,'Go home',3),//2
    StorySequence('You reached your home in morning','Reset',0,'',0),//3
    StorySequence('You saw a injured hyena & by the time you can think anything he attacks on you but you manage to kill it with you knife & now you are  injured waiting for help, a day is passed & it\'s nigh again you feeling cold so you gather some nearby woods !','Build A shelter',5,'Move on & Search for help',6),//4
    StorySequence('There is not enough woods','Cut Woods',7,'Die in Piece',3),//5
    StorySequence('You are unable to get any help','Go home',3,'',0),//6
    StorySequence('No you can\'t cut innocent trees','Die in Peace',3,'Decide Again',5)//7
  ];
 String nextPart(int choice){
  return _storyList[choice].storyString;
 }
 String getOption1(int choice){
   return _storyList[choice].option1;
 }
 String getOption2(int choice){
    return _storyList[choice].option2;
  }
  int getChoice1(int choice){
   return _storyList[choice].choice1;
  }
  int getChoice2(int choice){
    return _storyList[choice].choice2;
  }
}