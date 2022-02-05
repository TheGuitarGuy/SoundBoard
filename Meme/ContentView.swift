//
//  ContentView.swift
//  Meme
//
//  Created by Kennion Gubler on 1/26/22.
//

import SwiftUI
import AVFoundation
var soundFile: AVAudioPlayer?

struct ContentView: View {
    var body: some View {
        
        ZStack
        {
            Color.black
            .ignoresSafeArea()
            VStack
            {
                HStack
                {
                    Button(action: {play(name: "ad.wav")}) {
                        Text("")
                            .padding(.all, 40.0)
                            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(red: 0.09019607843137255, green: 0.11764705882352941, blue: 0.20784313725490197)/*@END_MENU_TOKEN@*/)
                    }
                    .border(Color.cyan, width: 4)
                    Button(action: {play(name: "af.wav")}) {
                        Text("")
                            .padding(.all, 40.0)
                            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(red: 0.09019607843137255, green: 0.11764705882352941, blue: 0.20784313725490197)/*@END_MENU_TOKEN@*/)
                    }
                    .border(Color.cyan, width: 4)
                    Button(action: {play(name: "ag.wav")}) {
                        Text("")
                            .padding(.all, 40.0)
                            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(red: 0.09019607843137255, green: 0.11764705882352941, blue: 0.20784313725490197)/*@END_MENU_TOKEN@*/)
                    }
                    .border(Color.cyan, width: 4)
                }
                HStack
                {
                    Button(action: {play(name: "aw.wav")}) {
                        Text("")
                            .padding(.all, 40.0)
                            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(red: 0.09019607843137255, green: 0.11764705882352941, blue: 0.20784313725490197)/*@END_MENU_TOKEN@*/)
                    }
                    .border(Color.red, width: 4)
                    Button(action: {play(name: "bg.wav")}) {
                        Text("")
                            .padding(.all, 40.0)
                            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(red: 0.09019607843137255, green: 0.11764705882352941, blue: 0.20784313725490197)/*@END_MENU_TOKEN@*/)
                    }
                    .border(Color.red, width: 4)
                    Button(action: {play(name: "gh.wav")}) {
                        Text("")
                            .padding(.all, 40.0)
                            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(red: 0.09019607843137255, green: 0.11764705882352941, blue: 0.20784313725490197)/*@END_MENU_TOKEN@*/)
                    }
                    .border(Color.red, width: 4)
                }
                HStack
                {
                    Button(action: {play(name: "those.mp3")}) {
                        Text("")
                            .padding(.all, 40.0)
                            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(red: 0.09019607843137255, green: 0.11764705882352941, blue: 0.20784313725490197)/*@END_MENU_TOKEN@*/)
                    }
                    .border(/*@START_MENU_TOKEN@*/Color.orange/*@END_MENU_TOKEN@*/, width: 4)
                    Button(action: {play(name: "bruh.mp3")}) {
                        Text("")
                            .padding(.all, 40.0)
                            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(red: 0.09019607843137255, green: 0.11764705882352941, blue: 0.20784313725490197)/*@END_MENU_TOKEN@*/)
                    }
                    .border(/*@START_MENU_TOKEN@*/Color.orange/*@END_MENU_TOKEN@*/, width: 4)
                    Button(action: {play(name: "arr.wav")}) {
                        Text("")
                            .padding(.all, 40.0)
                            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(red: 0.09019607843137255, green: 0.11764705882352941, blue: 0.20784313725490197)/*@END_MENU_TOKEN@*/)
                        
                    }
                    .border(Color.orange, width: 4)
                }
                
            }
        }
    }
    func play(name: String = "b.wav")
    {
        let resource = name;
        let path = Bundle.main.path(forResource: resource, ofType:nil)!
        let url = URL(fileURLWithPath: path)

        do {
            soundFile = try AVAudioPlayer(contentsOf: url)
            soundFile?.play()
        } catch {
            print("Error playing file")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
