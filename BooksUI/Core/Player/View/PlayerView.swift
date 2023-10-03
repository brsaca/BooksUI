//
//  PlayerView.swift
//  BooksUI
//
//  Created by Brenda Saavedra Cantu on 03/10/23.
//

import SwiftUI

struct PlayerView: View {
    //MARK: View Properties
    let currentAudio: Audio
    
    
    var body: some View {
        VStack(spacing: 40) {
            Notch(color: Color.darkPurple)
                .padding(.top, 40)
            
            ScrollView(.horizontal, showsIndicators: false){
                LazyHStack(spacing: 20, content: {
                    ForEach(Audio.MOCK_AUDIOS, id: \.id) { audio in
                        discPlayer(for: audio)
                    }
                })
                .scrollTargetLayout()
            }
            .frame(height: 500)
            .scrollTargetBehavior(.viewAligned)
            .safeAreaPadding(.horizontal, 40)
            
            progressBar(for: currentAudio)
            
            Spacer()
            TabBar
        }
        .background(Color.lightPink)
    }
}

extension PlayerView {
    var PlayButton: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 30)
                .fill(.white)
                .frame(width: 90, height: 90)
            
            Image(systemName: "play.fill")
                .resizable()
                .frame(width: 20, height: 20)
                .foregroundColor(Color.darkPurple)
        }
    }
    
    @ViewBuilder
    func discPlayer(for audio: Audio) -> some View {
        VStack(spacing: 30){
            DiscView(audio: audio, presentation: .detail)
                .scrollTransition { content, phase in
                    content
                        .scaleEffect(phase.isIdentity ? 1.0 : 0.3)
                }
            
            Text(audio.author)
                .font(.subheadline)
                .fontWeight(.light)
                .foregroundStyle(Color.darkPurple)
            
            Text(audio.name)
                .font(.largeTitle)
                .multilineTextAlignment(.center)
                .fontWeight(.semibold)
                .foregroundStyle(Color.darkPurple)
                .frame(maxWidth: 300)
            
            
        }
    }
    
    var TabBar: some View {
        HStack {
            CustomIconButton(action: (), iconName: "book", color: Color.darkPurple)
            Spacer()
            CustomIconButton(action: (), iconName: "text.line.last.and.arrowtriangle.forward", color: Color.darkPurple)
            Spacer()
            CustomIconButton(action: (), iconName: "heart", color: Color.darkPurple)
        }
        .padding(.horizontal, 60)
        .padding(.bottom, 40)
    }
    
    @ViewBuilder
    func progressBar(for audio: Audio) -> some View {
        VStack {
            GeometryReader { gr in
                Rectangle()
                    .stroke(Color.lightPink, lineWidth: 1)
                    .background(
                        Capsule()
                            .foregroundColor(Color.darkPurple)
                            .frame(width: gr.size.width * audio.progress, height: 4), alignment: .leading)
            }
            .frame( height: 8)
            
            HStack {
                Text(audio.formattedProgress)
                    .font(.caption.monospacedDigit())
                
                Spacer()
                
                Text(audio.formattedDuration)
                    .font(.caption.monospacedDigit())
            }
        }
        .padding(.horizontal, 20)
    }
}

//MARK: - Previews
#Preview {
    PlayerView(currentAudio: Audio.MOCK_AUDIOS[0])
}
