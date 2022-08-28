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
    var index: Int
    
    init(rank : Int, suit : Int, isTrumpCard : Bool, index: Int){
        self.rank = rank
        self.suit = suit
        self.isTrumpCard = isTrumpCard
        self.index = index
    }
}

var Card1 = Card(rank: 6, suit: 1, isTrumpCard: false, index: 1)
var Card2 = Card(rank: 7, suit: 1, isTrumpCard: false, index: 1)
var Card3 = Card(rank: 8, suit: 1, isTrumpCard: false, index: 1)
var Card4 = Card(rank: 9, suit: 1, isTrumpCard: false, index: 1)
var Card5 = Card(rank: 10, suit: 1, isTrumpCard: false, index: 1)
var Card6 = Card(rank: 11, suit: 1, isTrumpCard: false, index: 1)
var Card7 = Card(rank: 12, suit: 1, isTrumpCard: false, index: 1)
var Card8 = Card(rank: 13, suit: 1, isTrumpCard: false, index: 1)
var Card9 = Card(rank: 14, suit: 1, isTrumpCard: false, index: 1)
var Card10 = Card(rank: 6, suit: 2, isTrumpCard: false, index: 1)
var Card11 = Card(rank: 7, suit: 2, isTrumpCard: false, index: 1)
var Card12 = Card(rank: 8, suit: 2, isTrumpCard: false, index: 1)
var Card13 = Card(rank: 9, suit: 2, isTrumpCard: false, index: 1)
var Card14 = Card(rank: 10, suit: 2, isTrumpCard: false, index: 1)
var Card15 = Card(rank: 11, suit: 2, isTrumpCard: false, index: 1)
var Card16 = Card(rank: 12, suit: 2, isTrumpCard: false, index: 1)
var Card17 = Card(rank: 13, suit: 2, isTrumpCard: false, index: 1)
var Card18 = Card(rank: 14, suit: 2, isTrumpCard: false, index: 1)
var Card19 = Card(rank: 6, suit: 3, isTrumpCard: false, index: 1)
var Card20 = Card(rank: 7, suit: 3, isTrumpCard: false, index: 1)
var Card21 = Card(rank: 8, suit: 3, isTrumpCard: false, index: 1)
var Card22 = Card(rank: 9, suit: 3, isTrumpCard: false, index: 1)
var Card23 = Card(rank: 10, suit: 3, isTrumpCard: false, index: 1)
var Card24 = Card(rank: 11, suit: 3, isTrumpCard: false, index: 1)
var Card25 = Card(rank: 12, suit: 3, isTrumpCard: false, index: 1)
var Card26 = Card(rank: 13, suit: 3, isTrumpCard: false, index: 1)
var Card27 = Card(rank: 14, suit: 3, isTrumpCard: false, index: 1)
var Card28 = Card(rank: 6, suit: 4, isTrumpCard: false, index: 1)
var Card29 = Card(rank: 7, suit: 4, isTrumpCard: false, index: 1)
var Card30 = Card(rank: 8, suit: 4, isTrumpCard: false, index: 1)
var Card31 = Card(rank: 9, suit: 4, isTrumpCard: false, index: 1)
var Card32 = Card(rank: 10, suit: 4, isTrumpCard: false, index: 1)
var Card33 = Card(rank: 11, suit: 4, isTrumpCard: false, index: 1)
var Card34 = Card(rank: 12, suit: 4, isTrumpCard: false, index: 1)
var Card35 = Card(rank: 13, suit: 4, isTrumpCard: false, index: 1)
var Card36 = Card(rank: 14, suit: 4, isTrumpCard: false, index: 1)

var deck = [Card1, Card2, Card3, Card4, Card5, Card6, Card7, Card8, Card9, Card10, Card11, Card12, Card13, Card14, Card15, Card16, Card17, Card18, Card19, Card20, Card21, Card22, Card23, Card24, Card25, Card26, Card27, Card28, Card29, Card30, Card31, Card32, Card33, Card34, Card35, Card36]

var shuffledDeck = deck.shuffled()
var pool: [Card] = []
var used: [Card] = []
var roundEnded: Bool = false
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

func Start(){
    print("How many players will play?\n")
    let playerCount: String = readLine()!
    print("\nThere are \(playerCount) players in party \n")

    switch playerCount {
        case "1": print("You cannot play solo \n");
        
        case "2": runGivingForTwo(deckOfFirstPlayer: &player1Deck, deckOfSecondPlayer: &player2Deck)
        
        case "3": runGivingForThree(deckOfFirstPlayer: &player1Deck, deckOfSecondPlayer: &player2Deck, deckOfThirdPlayer: &player3Deck)
        
        case "4": runGivingForFour(deckOfFirstPlayer: &player1Deck, deckOfSecondPlayer: &player2Deck, deckOfThirdPlayer: &player3Deck, deckOfForthPlayer: &player4Deck)
        
        case "5": runGivingForFive(deckOfFirstPlayer: &player1Deck, deckOfSecondPlayer: &player2Deck, deckOfThirdPlayer: &player3Deck, deckOfForthPlayer: &player4Deck, deckOfFifthPlayer: &player5Deck)
        
        case "6": runGivingForAll(deckOfFirstPlayer: &player1Deck, deckOfSecondPlayer: &player2Deck, deckOfThirdPlayer: &player3Deck, deckOfForthPlayer: &player4Deck, deckOfFifthPlayer: &player5Deck, deckOfSixthPlayer: &player6Deck)
        
        default: print("You need to enter players count for this party\n");
    }

    print("Giving cards for you all...\n")
}

func SortCardsOnHand (playerDeck: inout [Card], trumpNumber: Int) -> [Card] {
    for card in stride(from: 0, through: playerDeck.count - 1, by: 1) {
        playerDeck[card].rank *= (playerDeck[card].isTrumpCard ? 100 : 1)
    }
    
    playerDeck = playerDeck.sorted { $0.rank < $1.rank }
    playerDeck = playerDeck.sorted { $0.suit < $1.suit && $0.rank == $1.rank }
    
    for card in stride(from: 0, through: playerDeck.count - 1, by: 1) {
        playerDeck[card].rank /= (playerDeck[card].isTrumpCard ? 100 : 1)
    }
    return playerDeck
}

func ShowCardsOfPlayer(playerDeckOnHand: inout [Card]) {
    let playerDeck = SortCardsOnHand(playerDeck: &playerDeckOnHand, trumpNumber: trumpSuitNumber)
    var stringPlayerDeckCard = ""
    var stringPlayerDeck = ""
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
        let cardTrumpSuit: String = "(T)"
            if card.suit == trumpSuitNumber {
                stringPlayerDeckCard = cardTrumpSuit + cardRank + cardSuit
            } else {
                stringPlayerDeckCard = cardRank + cardSuit
            }
        stringPlayerDeck = stringPlayerDeck + stringPlayerDeckCard
    }
    print("\(stringPlayerDeck)\n")
    stringPlayerDeck = ""
}

func YourMove(){
    print("Your turn\n")
}

func ComputerMove(){
    print("Be ready to beat!\n")
}

func ReadCardNumberToMove() -> Int {
    let stringValue = readLine()
    var pickedCard: Int = 0
    if let yourStr = Int(stringValue!) {
        pickedCard = yourStr
    }
    return pickedCard
}

func ReadCardNumberToBeat() -> Int {
    let stringValue = readLine()
    var pickedCard: Int = 0
    if let yourStr = Int(stringValue!) {
        pickedCard = yourStr
    }
    return pickedCard
}

func BestMatchingCardsToBeat (WhoAttacksDeck: inout [Card], WhoBeatsDeck: inout [Card]) -> ([Card], Int) {
    let pickedCard = ReadCardNumberToMove()
    
    var movingCard: [Card] = []
    movingCard.append(WhoAttacksDeck[pickedCard - 1])
    ShowCardsOfPlayer(playerDeckOnHand: &movingCard)
    movingCard.removeAll()
    
    var bestMatchingCards: [Card] = []
    
    for card in WhoBeatsDeck{
        if card.suit == WhoAttacksDeck[pickedCard - 1].suit && card.rank > WhoAttacksDeck[pickedCard - 1].rank {
            bestMatchingCards.append(card)
        } else if WhoAttacksDeck[pickedCard - 1].suit != trumpSuitNumber && card.suit == trumpSuitNumber {
            bestMatchingCards.append(card)
        }
    }
    return (bestMatchingCards, pickedCard)
}

func BeatByComputer (bestMatchingCards: inout [Card], pickedCard: Int, WhoAttacksDeck: inout [Card]) -> [Card] {
    var beatingCard: [Card] = []
    beatingCard.append(bestMatchingCards[0])
    ShowCardsOfPlayer(playerDeckOnHand: &beatingCard)
    beatingCard.removeAll()
    
    pool.append(WhoAttacksDeck[pickedCard - 1])
    for card in WhoAttacksDeck{
        let i = WhoAttacksDeck.firstIndex(where: {$0.rank == card.rank && $0.suit == card.suit})
        WhoAttacksDeck.remove(at: i!)
    }
    pool.append(bestMatchingCards[0])
    bestMatchingCards.removeAll()
    
    return pool
}

func CanDrop (pool: [Card], WhoAttacksDeck: [Card]) -> [Card] {
    var cardsPlayerCanDrop: [Card] = []
    for card1 in WhoAttacksDeck {
        for card2 in pool {
            if card1.rank == card2.rank{
                cardsPlayerCanDrop.append(card1)
            }
        }
    }
    return cardsPlayerCanDrop
}

func PickUpCards (pool: [Card], WhoBeatsDeck: inout [Card]) -> [Card] {
    for card in pool {
        WhoBeatsDeck.append(card)
    }
    return WhoBeatsDeck
}

func Main(){
    Start()
    ShowCardsOfPlayer(playerDeckOnHand: &player1Deck)
    YourMove()
    var BestMatchingCardsToBeatRESULT = BestMatchingCardsToBeat(WhoAttacksDeck: &player1Deck, WhoBeatsDeck: &player2Deck)
    var CanDropRESULT: [Card] = []
    var roundEnded: Bool = false
    while roundEnded == false {
        if BestMatchingCardsToBeatRESULT.0.isEmpty == false {
            pool = BeatByComputer(bestMatchingCards: &BestMatchingCardsToBeatRESULT.0, pickedCard: BestMatchingCardsToBeatRESULT.1, WhoAttacksDeck: &player1Deck)
            roundEnded = false
        } else {
            print("Computer cannot beat")
            CanDropRESULT = PickUpCards(pool: pool, WhoBeatsDeck: &player2Deck)
            roundEnded = true
        }
    }
}
Main()

/*CanDropRESULT = CanDrop(pool: pool, WhoAttacksDeck: player1Deck)
print("You can drop some cards, type number or leave empty")
ShowCardsOfPlayer(playerDeckOnHand: &CanDropRESULT)

func BestMatchingCardsToBeat (roundEnded: inout Bool, WhoAttacksDeck: inout [Card], WhoBeatsDeck: inout [Card]) -> (Int, [Card], Bool) {
    
    let pickedCard = ReadCardNumberToMove()
    
    var movingCard: [Card] = []
    movingCard.append(WhoAttacksDeck[pickedCard - 1])
    ShowCardsOfPlayer(playerDeckOnHand: &movingCard)
    movingCard.removeAll()
    
    var bestMatchingCards: [Card] = []
    
    for card in WhoBeatsDeck{
        if card.suit == WhoAttacksDeck[pickedCard - 1].suit && card.rank > WhoAttacksDeck[pickedCard - 1].rank {
            bestMatchingCards.append(card)
        } else if WhoAttacksDeck[pickedCard - 1].suit != trumpSuitNumber && card.suit == trumpSuitNumber {
            bestMatchingCards.append(card)
        }
    }
    if bestMatchingCards.isEmpty == true {
        roundEnded = true
        PickUpCards(bestMatchingCards: &bestMatchingCards, WhoBeatsDeck: &player2Deck)
    }
    return (pickedCard, bestMatchingCards, roundEnded)
}

func BeatByComputer(roundEnded: inout Bool, BMC_result: Int, FirstPlayerDeck: inout [Card], bestMatchingCards: inout [Card]) -> ([Card], Bool) {
    if bestMatchingCards.isEmpty == false {
        
        var beatingCard: [Card] = []
        beatingCard.append(bestMatchingCards[0])
        ShowCardsOfPlayer(playerDeckOnHand: &beatingCard)
        beatingCard.removeAll()
        
        pool.append(FirstPlayerDeck[BMC_result])
        
        for card in FirstPlayerDeck{
            let i = FirstPlayerDeck.firstIndex(where: {$0.rank == card.rank && $0.suit == card.suit})
            FirstPlayerDeck.remove(at: i!)
        }
        pool.append(bestMatchingCards[0])
        
        bestMatchingCards.removeAll()
    } else {roundEnded = true}
    return (pool, roundEnded)
}

func CanDrop (roundEnded: inout Bool, pool: [Card], FirstPlayerDeck: [Card]) -> Bool {
    var cardsPlayerCanDrop: [Card] = []
    for card1 in FirstPlayerDeck {
        for card2 in pool {
            if card1.rank == card2.rank{
                cardsPlayerCanDrop.append(card1)
            }
        }
    }
    if cardsPlayerCanDrop.isEmpty == true {
        roundEnded = true
    } else {roundEnded = false}
    return roundEnded
}

func PickUpCards (bestMatchingCards: inout [Card], WhoBeatsDeck: inout [Card]) -> ([Card], [Card]){
    for card in pool {
        WhoBeatsDeck.append(card)
    }
    bestMatchingCards.removeAll()
    return (bestMatchingCards, WhoBeatsDeck)
}

func MoveByComputer(whoMovesDeck: inout [Card]) -> [Card] {
    let Deck = SortCardsOnHand(playerDeck: &whoMovesDeck, trumpNumber: trumpSuitNumber)
    var firstCard: [Card] = []
    firstCard.append(Deck[0])
    for _ in whoMovesDeck {
        let i = whoMovesDeck.firstIndex(where: {$0.rank == Deck[0].rank && $0.suit == Deck[0].suit})
        whoMovesDeck.remove(at: i!)
    }
    return firstCard
}

    //let i = SecondPlayerDeck.firstIndex(where: {$0.rank == card.rank && $0.suit == card.suit})
    //SecondPlayerDeck.remove(at: i!)

func MAIN (){
    Start()
    ShowCardsOfPlayer(playerDeckOnHand: &player1Deck)
    YourMove()
    _ = BestMatchingCardsToBeat(roundEnded: &roundEnded, FirstPlayerDeck: &player1Deck, SecondPlayerDeck: &player2Deck)
}

MAIN()
*/
