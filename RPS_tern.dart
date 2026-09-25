import 'dart:io';
void main(){
  List<String> pick = ['rock', 'paper', 'scissors'];


  print("===== ROCK, PAPER, SCISSORS =====");
  String player1 = getPlayerName("Player 1");
  String player2 = getPlayerName("Player 2");

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
