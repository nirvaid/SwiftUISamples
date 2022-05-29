//
//  ContentView.swift
//  SwiftUI-List
//
//  Created by Nirvaid Rathore on 5/29/22.
//

import SwiftUI

struct VideoListView: View {
    
    let videos : [Video] = VideoList.topTen
    
    var body: some View {
        NavigationView{
            List(videos, id: \.id){ video in
                NavigationLink(destination : VideoDetailView(video: video), label:{
                    HStack {
                        Image(video.imageName)
                            .resizable()
                            .scaledToFit()
                            .frame(width: 100, height: 100)
                            .cornerRadius(25)
                            .padding(.vertical, 0)
                        VStack(alignment:.leading,spacing: 5) {
                            Text(video.title)
                                .fontWeight(.semibold)
                                .lineLimit(3)
                                .minimumScaleFactor(0.5)
                            Text(video.uploadDate)
                                .font(.subheadline)
                                .foregroundColor(.secondary)
                        }
                    }
                })
            }
            .navigationTitle("Video Lists")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        VideoListView()
    }
}
