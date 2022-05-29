//
//  VideoDetailVIew.swift
//  SwiftUI-List-Starter
//
//  Created by Nirvaid Rathore on 5/27/22.
//

import SwiftUI

struct VideoDetailView: View {
    var video : Video
        
    var body: some View {
        VStack(spacing: 20){
            
            Spacer()
            
            Image(video.imageName)
                .resizable()
                .cornerRadius(20)
                .aspectRatio(contentMode: .fit)
                .padding()
            Text(video.title)
                .font(.subheadline)
            HStack(spacing: 50){
                Label("\(video.viewCount)", systemImage: "eye.fill")
                    .font(.subheadline)
                Text(video.uploadDate)
                    .font(.subheadline)
            }
            Text(video.description)
                .font(.body)
                .padding()
            
            Spacer()
            
            Link(destination: video.url, label: {
                Text("Watch Now")
                    .font(.title2)
                    .frame(width: 200, height: 50)
                    .cornerRadius(20)
                    .background(Color(.systemRed))
                    .foregroundColor(Color(.white))
                    .padding()
            
            })
        }
    }
}

struct VideoDetailVIew_Previews: PreviewProvider {
    static var previews: some View {
        VideoDetailView(video: VideoList.topTen.first!)
    }
}

