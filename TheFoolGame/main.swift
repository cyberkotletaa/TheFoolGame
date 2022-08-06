//
//  main.swift
//  TheFoolGame
//
//  Created by Костя on 06.08.2022.
//

import Foundation
import AVFoundation

class Card {
    var rank : Int
    var suit : Int
    var isTrumpCard : Bool
    
    init(rank : Int, suit : Int, isTrumpCard : Bool){
        self.rank = rank
        self.suit = suit
        self.isTrumpCard = isTrumpCard
    }
}

class Player {
    var name: String
    init(name: String){
        self.name = name
    }
}
class Deck {
    var cardNumber: Int
    init(cardNumber: Int){
        self.cardNumber = cardNumber
    }
}

class Party {
    
}


var Card1 = Card(rank: 6, suit: 1, isTrumpCard: false)
var Card2 = Card(rank: 7, suit: 1, isTrumpCard: false)
var Card3 = Card(rank: 8, suit: 1, isTrumpCard: false)
var Card4 = Card(rank: 9, suit: 1, isTrumpCard: false)
var Card5 = Card(rank: 10, suit: 1, isTrumpCard: false)
var Card6 = Card(rank: 11, suit: 1, isTrumpCard: false)
var Card7 = Card(rank: 12, suit: 1, isTrumpCard: false)
var Card8 = Card(rank: 13, suit: 1, isTrumpCard: false)
var Card9 = Card(rank: 14, suit: 1, isTrumpCard: false)
var Card10 = Card(rank: 6, suit: 2, isTrumpCard: false)
var Card11 = Card(rank: 7, suit: 2, isTrumpCard: false)
var Card12 = Card(rank: 8, suit: 2, isTrumpCard: false)
var Card13 = Card(rank: 9, suit: 2, isTrumpCard: false)
var Card14 = Card(rank: 10, suit: 2, isTrumpCard: false)
var Card15 = Card(rank: 11, suit: 2, isTrumpCard: false)
var Card16 = Card(rank: 12, suit: 2, isTrumpCard: false)
var Card17 = Card(rank: 13, suit: 2, isTrumpCard: false)
var Card18 = Card(rank: 14, suit: 2, isTrumpCard: false)
var Card19 = Card(rank: 6, suit: 3, isTrumpCard: false)
var Card20 = Card(rank: 7, suit: 3, isTrumpCard: false)
var Card21 = Card(rank: 8, suit: 3, isTrumpCard: false)
var Card22 = Card(rank: 9, suit: 3, isTrumpCard: false)
var Card23 = Card(rank: 10, suit: 3, isTrumpCard: false)
var Card24 = Card(rank: 11, suit: 3, isTrumpCard: false)
var Card25 = Card(rank: 12, suit: 3, isTrumpCard: false)
var Card26 = Card(rank: 13, suit: 3, isTrumpCard: false)
var Card27 = Card(rank: 14, suit: 3, isTrumpCard: false)
var Card28 = Card(rank: 6, suit: 4, isTrumpCard: false)
var Card29 = Card(rank: 7, suit: 4, isTrumpCard: false)
var Card30 = Card(rank: 8, suit: 4, isTrumpCard: false)
var Card31 = Card(rank: 9, suit: 4, isTrumpCard: false)
var Card32 = Card(rank: 10, suit: 4, isTrumpCard: false)
var Card33 = Card(rank: 11, suit: 4, isTrumpCard: false)
var Card34 = Card(rank: 12, suit: 4, isTrumpCard: false)
var Card35 = Card(rank: 13, suit: 4, isTrumpCard: false)
var Card36 = Card(rank: 14, suit: 4, isTrumpCard: false)

var deck = [Card1, Card2, Card3, Card4, Card5, Card6, Card7, Card8, Card9, Card10, Card11, Card12, Card13, Card14, Card15, Card16, Card17, Card18, Card19, Card20, Card21, Card22, Card23, Card24, Card25, Card26, Card27, Card28, Card29, Card30, Card31, Card32, Card33, Card34, Card35, Card36]

var shuffledDeck = deck.shuffled()

let trumpSuitNumber = Int.random(in: 1 ... 4)
    
    for card in shuffledDeck{
        if card.suit == trumpSuitNumber {
            card.isTrumpCard = true
        }
    }

var player1Deck: [Card] = []
var player2Deck: [Card] = []
var player3Deck: [Card] = []
var player4Deck: [Card] = []
var player5Deck: [Card] = []
var player6Deck: [Card] = []

func runGivingForTwo (deckOfFirstPlayer: inout [Card], deckOfSecondPlayer: inout [Card]){
    for _ in 0..<6 {
        deckOfFirstPlayer = deckOfFirstPlayer + shuffledDeck[0...6]
        shuffledDeck.removeFirst(6)
        deckOfSecondPlayer = deckOfSecondPlayer + shuffledDeck[0...6]
        shuffledDeck.removeFirst(6)
    }
}

func runGivingForThree (deckOfFirstPlayer: inout [Card], deckOfSecondPlayer: inout [Card], deckOfThirdPlayer: inout [Card]){
    for _ in 0..<6 {
        deckOfFirstPlayer = deckOfFirstPlayer + shuffledDeck[0...6]
        shuffledDeck.removeFirst(6)
        deckOfSecondPlayer = deckOfSecondPlayer + shuffledDeck[0...6]
        shuffledDeck.removeFirst(6)
        deckOfThirdPlayer = deckOfThirdPlayer + shuffledDeck[0...6]
        shuffledDeck.removeFirst(6)
    }
}

func runGivingForFour (deckOfFirstPlayer: inout [Card], deckOfSecondPlayer: inout [Card], deckOfThirdPlayer: inout [Card], deckOfForthPlayer: inout [Card]){
    for _ in 0..<6 {
        deckOfFirstPlayer = deckOfFirstPlayer + shuffledDeck[0...6]
        shuffledDeck.removeFirst(6)
        deckOfSecondPlayer = deckOfSecondPlayer + shuffledDeck[0...6]
        shuffledDeck.removeFirst(6)
        deckOfThirdPlayer = deckOfThirdPlayer + shuffledDeck[0...6]
        shuffledDeck.removeFirst(6)
        deckOfForthPlayer = deckOfForthPlayer + shuffledDeck[0...6]
        shuffledDeck.removeFirst(6)
    }
}

func runGivingForFive (deckOfFirstPlayer: inout [Card], deckOfSecondPlayer: inout [Card], deckOfThirdPlayer: inout [Card], deckOfForthPlayer: inout [Card], deckOfFifthPlayer: inout [Card]){
    for _ in 0..<6 {
        deckOfFirstPlayer = deckOfFirstPlayer + shuffledDeck[0...6]
        shuffledDeck.removeFirst(6)
        deckOfSecondPlayer = deckOfSecondPlayer + shuffledDeck[0...6]
        shuffledDeck.removeFirst(6)
        deckOfThirdPlayer = deckOfThirdPlayer + shuffledDeck[0...6]
        shuffledDeck.removeFirst(6)
        deckOfForthPlayer = deckOfForthPlayer + shuffledDeck[0...6]
        shuffledDeck.removeFirst(6)
        deckOfFifthPlayer = deckOfFifthPlayer + shuffledDeck[0...6]
        shuffledDeck.removeFirst(6)
    }
}

func runGivingForAll (deckOfFirstPlayer: inout [Card], deckOfSecondPlayer: inout [Card], deckOfThirdPlayer: inout [Card], deckOfForthPlayer: inout [Card], deckOfFifthPlayer: inout [Card], deckOfSixthPlayer: inout [Card]){
    for _ in 0..<6 {
        deckOfFirstPlayer = deckOfFirstPlayer + shuffledDeck[0...6]
        shuffledDeck.removeFirst(6)
        deckOfSecondPlayer = deckOfSecondPlayer + shuffledDeck[0...6]
        shuffledDeck.removeFirst(6)
        deckOfThirdPlayer = deckOfThirdPlayer + shuffledDeck[0...6]
        shuffledDeck.removeFirst(6)
        deckOfForthPlayer = deckOfForthPlayer + shuffledDeck[0...6]
        shuffledDeck.removeFirst(6)
        deckOfFifthPlayer = deckOfFifthPlayer + shuffledDeck[0...6]
        shuffledDeck.removeFirst(6)
        deckOfSixthPlayer = deckOfSixthPlayer + shuffledDeck[0...6]
        shuffledDeck.removeAll()
    }
}

print("How many players will play?")
var playerCount: Int = readLine()
print("There are \(playerCount) players in party")

switch playerCount {
    case 1: print("You cant play solo");
    
    case 2: runGivingForTwo(deckOfFirstPlayer: &player1Deck, deckOfSecondPlayer: &player2Deck)
    
    case 3: runGivingForThree(deckOfFirstPlayer: &player1Deck, deckOfSecondPlayer: &player2Deck, deckOfThirdPlayer: &player3Deck)
    
    case 4: runGivingForFour(deckOfFirstPlayer: &player1Deck, deckOfSecondPlayer: &player2Deck, deckOfThirdPlayer: &player3Deck, deckOfForthPlayer: &player4Deck)
    
    case 5: runGivingForFive(deckOfFirstPlayer: &player1Deck, deckOfSecondPlayer: &player2Deck, deckOfThirdPlayer: &player3Deck, deckOfForthPlayer: &player4Deck, deckOfFifthPlayer: &player5Deck)
    
    case 6: runGivingForAll(deckOfFirstPlayer: &player1Deck, deckOfSecondPlayer: &player2Deck, deckOfThirdPlayer: &player3Deck, deckOfForthPlayer: &player4Deck, deckOfFifthPlayer: &player5Deck, deckOfSixthPlayer: &player6Deck)
    
    default: print("You need to enter players count for this party");
}


/*func give1Card(){
    playerDeck.append(shuffledDeck[0])
    shuffledDeck.remove(at: 0)
}0

func give2Cards(){
    playerDeck = playerDeck + shuffledDeck[0...1]
    for _ in 0...1 {
        shuffledDeck.remove(at: 0)
    }
}

func give3Cards(){
    playerDeck = playerDeck + shuffledDeck[0...2]
    for _ in 0...2 {
        shuffledDeck.remove(at: 0)
    }
}

func give6Cards(){
    playerDeck = playerDeck + shuffledDeck[0...5]
    for _ in 0...5 {
        shuffledDeck.remove(at: 0)
    }
}
*/

/*func giveCardToPlayer(shuffledDeck1: Array<Card>, playerDeck1: Array<Card>) -> playerDeck1 {
    playerDeck1 = shuffledDeck1[0]
    shuffledDeck1.remove(at: 0)
}*/

//Creating and asking how many players will play

/*
struct Player {
    let cardCount = 6
    var handCards = [Card]()
}

var playerCount: Int
print("How many players will play?")
playerCount = Int(readLine())
print("player count \(playerCount)")


func giveFirstCard() -> userCard1 {
    var firstCardRank: Int = Int.random(in: 6 ... 14)
    var firstCardSuit: Int = Int.random(in: 1 ... 4)
}

giveFirstCard()

var namesOfSuits : [Int: String] = [
    1 : "Chirva" , 2 : "Pika", 3 : "Bubna", 4 : "Krest"
]

var namesOfCards : [Int: String] = [
    11 : "Jack" , 12 : "Queen", 13 : "King'", 14 : "Ace"
]


class Deck {
    
    enum Suit: Character {
        case spades = "♠", hearts = "♡", diamonds = "♢", clubs = "♣"
    }
    
    enum Rank: Int {
        case six = 6, seven, eight, nine, ten, jack, queen, king, ace
    }
}
 
 
 
 
 
 func makeCardsSuitTrump(_: [Card]) -> [Card] {
     
     let trumpSuitNumber = Int.random(in: 1 ... 4)
     
     for card in shuffledDeck{
         if card.suit == trumpSuitNumber {
             card.isTrumpCard = true
         }
     }
     return shuffledDeck
 }

 makeCardsSuitTrump(shuffledDeck)
 
 
 
 
 
 
*/
