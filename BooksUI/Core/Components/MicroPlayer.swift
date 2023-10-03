//
//  MicroPlayer.swift
//  BooksUI
//
//  Created by Brenda Saavedra Cantu on 03/10/23.
//

import SwiftUI

struct MicroPlayer: View {
    //MARK: View Properties
    let audio: Audio
    
    var body: some View {
        VStack(alignment: .leading) {
            Notch(color: Color.lightPink)
            
            VStack(alignment: .leading, spacing: 5) {
                HStack(spacing: 20) {
                    DiscView(audio: audio, presentation: .miniPlayer)
                    
                    VStack(alignment: .leading){
                        Text(audio.name)
                            .font(.title3)
                            .lineLimit(1)
                            .fontWeight(.semibold)
                            .foregroundStyle(Color.darkPurple)
                        Text(audio.author)
                            .font(.subheadline)
                            .fontWeight(.light)
                            .foregroundStyle(Color.darkPurple)
                    }
                    Spacer()
                    CircularBtn
                }
            }
            .padding(.horizontal, 20)
            .padding(.vertical, 20)
            .background(Color.lightPink)
            .clipShape(
                .rect(
                    topLeadingRadius: 40,
                    bottomLeadingRadius: 0,
                    bottomTrailingRadius: 0,
                    topTrailingRadius: 40
                )
            )
        }
        .frame(width: .infinity, height: 132)
    }
}

extension MicroPlayer {
    var CircularBtn: some View {
        ZStack {
            Circle()
                .fill(Color.darkPink.opacity(0.2))
                .frame(width: 60, height: 60)
            
            Image(systemName: "pause")
                .resizable()
                .frame(width: 15, height: 15)
                .foregroundColor(.white)
        }
    }
}

#Preview {
    MicroPlayer(audio: Audio.MOCK_AUDIOS[0])
}
