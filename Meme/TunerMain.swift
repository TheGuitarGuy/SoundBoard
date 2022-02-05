//
//  TunerMain.swift
//  Meme
//
//  Created by Kennion Gubler on 1/28/22.
//

import SwiftUI

struct TunerMain: View {
    let note: String

    var body: some View {
        Text(note)
            .font(.system(size: 160, design: .rounded))
            .foregroundColor(Color.orange)
            .bold()
            
 
    }
    
}


struct MainNoteView_Previews: PreviewProvider {
    static var previews: some View {
        TunerMain(note: "A")
            .environment(\.sizeCategory, .medium)
    }
}
