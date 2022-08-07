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
    deckOfFirstPlayer = deckOfFirstPlayer + shuffledDeck[0...5]
    shuffledDeck.removeFirst(6)
    deckOfSecondPlayer = deckOfSecondPlayer + shuffledDeck[0...5]
    shuffledDeck.removeFirst(6)
}

func runGivingForThree (deckOfFirstPlayer: inout [Card], deckOfSecondPlayer: inout [Card], deckOfThirdPlayer: inout [Card]){
        deckOfFirstPlayer = deckOfFirstPlayer + shuffledDeck[0...5]
        shuffledDeck.removeFirst(6)
        deckOfSecondPlayer = deckOfSecondPlayer + shuffledDeck[0...5]
        shuffledDeck.removeFirst(6)
        deckOfThirdPlayer = deckOfThirdPlayer + shuffledDeck[0...5]
        shuffledDeck.removeFirst(6)
}

func runGivingForFour (deckOfFirstPlayer: inout [Card], deckOfSecondPlayer: inout [Card], deckOfThirdPlayer: inout [Card], deckOfForthPlayer: inout [Card]){
        deckOfFirstPlayer = deckOfFirstPlayer + shuffledDeck[0...5]
        shuffledDeck.removeFirst(6)
        deckOfSecondPlayer = deckOfSecondPlayer + shuffledDeck[0...5]
        shuffledDeck.removeFirst(6)
        deckOfThirdPlayer = deckOfThirdPlayer + shuffledDeck[0...5]
        shuffledDeck.removeFirst(6)
        deckOfForthPlayer = deckOfForthPlayer + shuffledDeck[0...5]
        shuffledDeck.removeFirst(6)
}

func runGivingForFive (deckOfFirstPlayer: inout [Card], deckOfSecondPlayer: inout [Card], deckOfThirdPlayer: inout [Card], deckOfForthPlayer: inout [Card], deckOfFifthPlayer: inout [Card]){
        deckOfFirstPlayer = deckOfFirstPlayer + shuffledDeck[0...5]
        shuffledDeck.removeFirst(6)
        deckOfSecondPlayer = deckOfSecondPlayer + shuffledDeck[0...5]
        shuffledDeck.removeFirst(6)
        deckOfThirdPlayer = deckOfThirdPlayer + shuffledDeck[0...5]
        shuffledDeck.removeFirst(6)
        deckOfForthPlayer = deckOfForthPlayer + shuffledDeck[0...5]
        shuffledDeck.removeFirst(6)
        deckOfFifthPlayer = deckOfFifthPlayer + shuffledDeck[0...5]
        shuffledDeck.removeFirst(6)
}

func runGivingForAll (deckOfFirstPlayer: inout [Card], deckOfSecondPlayer: inout [Card], deckOfThirdPlayer: inout [Card], deckOfForthPlayer: inout [Card], deckOfFifthPlayer: inout [Card], deckOfSixthPlayer: inout [Card]){
        deckOfFirstPlayer = deckOfFirstPlayer + shuffledDeck[0...5]
        shuffledDeck.removeFirst(6)
        deckOfSecondPlayer = deckOfSecondPlayer + shuffledDeck[0...5]
        shuffledDeck.removeFirst(6)
        deckOfThirdPlayer = deckOfThirdPlayer + shuffledDeck[0...5]
        shuffledDeck.removeFirst(6)
        deckOfForthPlayer = deckOfForthPlayer + shuffledDeck[0...5]
        shuffledDeck.removeFirst(6)
        deckOfFifthPlayer = deckOfFifthPlayer + shuffledDeck[0...5]
        shuffledDeck.removeFirst(6)
        deckOfSixthPlayer = deckOfSixthPlayer + shuffledDeck[0...5]
        shuffledDeck.removeAll()
}

print("How many players will play?")
var playerCount: String = readLine()!
print("There are \(playerCount) players in party")
print("Giving cards for you all...")

switch playerCount {
    case "1": print("You cant play solo");
    
    case "2": runGivingForTwo(deckOfFirstPlayer: &player1Deck, deckOfSecondPlayer: &player2Deck)
    
    case "3": runGivingForThree(deckOfFirstPlayer: &player1Deck, deckOfSecondPlayer: &player2Deck, deckOfThirdPlayer: &player3Deck)
    
    case "4": runGivingForFour(deckOfFirstPlayer: &player1Deck, deckOfSecondPlayer: &player2Deck, deckOfThirdPlayer: &player3Deck, deckOfForthPlayer: &player4Deck)
    
    case "5": runGivingForFive(deckOfFirstPlayer: &player1Deck, deckOfSecondPlayer: &player2Deck, deckOfThirdPlayer: &player3Deck, deckOfForthPlayer: &player4Deck, deckOfFifthPlayer: &player5Deck)
    
    case "6": runGivingForAll(deckOfFirstPlayer: &player1Deck, deckOfSecondPlayer: &player2Deck, deckOfThirdPlayer: &player3Deck, deckOfForthPlayer: &player4Deck, deckOfFifthPlayer: &player5Deck, deckOfSixthPlayer: &player6Deck)
    
    default: print("You need to enter players count for this party");
}

print("Your cards are: ")

var stringPlayerDeckCard = ""
var stringPlayerDeck = ""

func showCardsOfPlayer(playerDeck: [Card]) {
    for card in playerDeck{
        var cardRank: String = ""
            switch card.rank {
                case 6: cardRank = "Six"
                case 7: cardRank = "Seven"
                case 8: cardRank = "Eight"
                case 9: cardRank = "Nine"
                case 10: cardRank = "Ten"
                case 11: cardRank = "Jack"
                case 12: cardRank = "Queen"
                case 13: cardRank = "King"
                case 14: cardRank = "Ace"
                
                default: print("ERROR")
            }
        var cardSuit: String = ""
            switch card.suit {
                case 1: cardSuit = "♠   "
                case 2: cardSuit = "♡   "
                case 3: cardSuit = "♣   "
                case 4: cardSuit = "♢   "
        
                default: print("ERROR")
            }
        stringPlayerDeckCard = cardRank + cardSuit
        stringPlayerDeck = stringPlayerDeck + stringPlayerDeckCard
    }
    print("\(stringPlayerDeck)")
}

showCardsOfPlayer(playerDeck: player1Deck)
