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

    print("--- round $round ---");

    String got1 = getMove(player1, pick);
    if(pick.contains(got1)){
      for(int i = 0; i <= 30; i++){
        print(" ");
      }
    }
    String got2 = getMove(player2, pick);

    print("$player1 chose $got1. $player2 chose $got2");

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
