import 'dart:io';
void main(){
  List<String> pick = ['rock', 'paper', 'scissors'];


  print("===== ROCK, PAPER, SCISSORS =====");
  String player1 = getPlayerName("Player 1");
  String player2 = getPlayerName("Player 2");

  int round = 1;
  int score1 = 0;
  int score2 = 0;
  bool again = true;

  do{
    print("--- round $round ---");

    String got1 = getMove(player1, pick);
    if(pick.contains(got1)){
      for(int i = 0; i <= 30; i++){
        print(" ");
      }
    }
    String got2 = getMove(player2, pick);

    print("$player1 chose $got1. $player2 chose $got2");

    String result = decideWinner(player1, player2, got1, got2);
    if(result == "$player1"){
      print("Result: $result wins the round!");
      score1++;
    }else if(result == "$player2"){
      print("Result: $result wins the round!");
      score2++;
    }

    print("Score: $player1 = $score1 || $player2 = $score2");
   
    print("Play Again? y/n: ");
    String dogain = stdin.readLineSync()!.trim();
    if(dogain == "y" || dogain == "yes"){
      again = true;
    }else if(dogain == "n" || dogain == "no"){
      again = false;
    }


    round++;
  }while(again);

  print("===== FINAL SCORE =====");
  print("$player1: $score1 | $player2: $score2");
  if(score1 > score2){
    print("Overall Winner: $player1");
  }else if(score2 > score1){
    print("Overall Winner: $player2");
  }else{
    print("TIE!!!!");
  }

 



}
String getPlayerName(String player){
  print("Enter $player name: ");
  String name = stdin.readLineSync()!.trim();
  if(name.isEmpty){
    print("(No name entered. Using $player)");
    return name = player;
  }
  return name;
}


String getMove(String player, List<String> pick){
  while(true){
    print("$player, enter your move (rock/paper/scissors): ");
    String got = stdin.readLineSync()!.trim().toLowerCase();

    if(validateMove(got, pick) == "valid"){
      return got;
    }else{
      print("Invalid move. Please type rock, paper, or scissors.");
    }
  }
}


String validateMove(String got, List<String> pick){

  String valid = "valid";
  String not = "not";
  if(!pick.contains(got)){
    return not;
  }
  return valid;
}


String decideWinner(String player1, String player2, String got1, String got2){
  String tie = "Tie!";
  String invalid = "Invalid";
  if(got1 == got2){
    return tie;
  }else if(got1 == "rock" && got2 == "paper"){
    return player2;
  }else if(got1 == "rock" && got2 == "scissors"){
    return player1;
  }else if(got1 == "paper" && got2 == "rock"){
    return player1;
  }else if(got1 == "paper" && got2 == "scissors"){
    return player2;
  }else if(got1 == "scissors" && got2 == "rock"){
    return player2;
  }else if(got1 == "scissors" && got2 == "paper"){
    return player1;
  }else{
    print("Invalid");
  }
  return invalid;
}