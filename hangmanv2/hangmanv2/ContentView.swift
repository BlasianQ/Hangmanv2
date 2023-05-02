//
//  ContentView.swift
//  Hangman App
//
//  Created by Quincy Poynter on 4/19/23.
//

import SwiftUI

/* The main view that is displayed to users. */
struct ContentView: View {
    @State var showingGame = false

    var body: some View {
     
        if showingGame {
            MainGameView()
        } else {
            ZStack {
                TitleScreenView(showingGame: $showingGame)
                VStack {
                    Text("")
                        .padding()
                        .padding()
                        .padding()
                        .padding()
                        .padding()
                        .padding()
                        .padding()
                        .padding()
                        .padding(8.0)
                       
                        
                    Button("Start Game") {
                        showingGame = true
                    }.foregroundColor(.black).font(.system(size: 34)).bold()
                }
            }
        }
    }
}

func newText(input: String, letter: String, allGuesses: [String]) -> String {
    var result = ""
    
    for char in input {
        if allGuesses.contains(String(char)) {
            result.append(String(char))
        } else {
            result.append("_ ")
        }
    }
    return result
}

func wrongLetters(incorrectGuesses: [String]) -> String {
    var result = ""
    for letter in incorrectGuesses {
        result.append(String(letter).uppercased())
        result.append(" ")
    }
    return result
}

struct RandomWordGenerator {
    private let words: [String]
    
    func ranged(_ range: ClosedRange<Int>) -> RandomWordGenerator {
        RandomWordGenerator(words: words.filter { range.contains($0.count) })
    }
}

extension RandomWordGenerator: Sequence, IteratorProtocol {
    public func next() -> String? {
        words.randomElement()
    }
}

extension RandomWordGenerator {
    init() throws {
        let file = try String(contentsOf: URL(fileURLWithPath: "/usr/share/dict/words"))
        self.init(words: file.components(separatedBy: "\n"))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


