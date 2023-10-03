//
//  DiscView.swift
//  BooksUI
//
//  Created by Brenda Saavedra Cantu on 03/10/23.
//

import SwiftUI

enum DiscPresentation {
    case collectionHome
    case miniPlayer
    case detail
    
    var size: CGFloat {
        switch self {
        case .collectionHome: return 150
        case .miniPlayer: return 80
        case .detail: return 280
        }
    }
    
    var ringSize: CGFloat {
        return self == .miniPlayer ? 14 : 30
    }
    
    var ringLine: CGFloat {
        return self == .miniPlayer ? 5 : 10
    }
}

struct DiscView: View {
    // MARK: View Properties
    let audio: Audio
    let presentation: DiscPresentation
    
    var body: some View {
        ZStack {
            Image(audio.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .clipShape(Circle())
                .frame(width: presentation.size, height: presentation.size)
            
            if (presentation != .detail) {
                ringProgress(for: audio.progress)
                    .fixedSize()
            }
        }
    }
    
    @ViewBuilder
    func ringProgress(for progress: Double) -> some View {
        ZStack {
            Circle()
                .stroke(Color(.systemGray4), lineWidth: presentation.ringLine)
            Circle()
                .trim(from: 0, to: CGFloat(progress))
                .stroke(
                    Color.darkPurple,
                    style: StrokeStyle(lineWidth: presentation.ringLine, lineCap: .round))
        }
        .rotationEffect(Angle(degrees: -90))
        .frame(width: presentation.ringSize, height: presentation.ringSize)
        .background()
    }
}

// MARK: - Previews
#Preview("Home") {
    DiscView(audio: Audio.MOCK_AUDIOS[1], presentation: .collectionHome)
}

#Preview("Miniplayer") {
    DiscView(audio: Audio.MOCK_AUDIOS[1], presentation: .miniPlayer)
}

#Preview("Detail") {
    DiscView(audio: Audio.MOCK_AUDIOS[1], presentation: .detail)
}

