//
//  ContentView.swift
//  SecondAssignment
//
//  Created by Hamal Saefudin on 27/11/22.
//

import SwiftUI

struct ContentView: View {
    @State private var isAlert:Bool = false;
    @State private var isDetailActive:Bool = false;
    
    var body: some View {
        ZStack{
            Image("go-to-beach")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .overlay{
                    Rectangle()
                        .opacity(0.55)
                        .ignoresSafeArea()
                }
            VStack(){
                HStack(spacing: 100){
                    Button {
                        isAlert = true;
                    } label:{
                        Image(systemName:"cloud.sun.fill")
                            .renderingMode(.original)
                            .font(.system(size: 20))
                            .alert("Not Yet Available",isPresented: $isAlert){
                                Button {
                                    
                                } label: {
                                    Text("Ok")
                                }
                            } message: {
                                Text("Currrently on active development")
                            }
                    }
                    Text("Travel")
                        .foregroundColor(.white)
                        .fontWeight(.medium)
                        .font(.system(size: 20))
                    
                    Image(systemName:"cart.badge.plus")
                        .renderingMode(.original)
                        .fontWeight(.bold)
                        .font(.system(size: 20))
                        .foregroundColor(.white)
                        .onTapGesture {
                            isDetailActive.toggle()
                        }
                        .sheet(isPresented: $isDetailActive){
                            DetailSheetView()
                                .presentationDetents([.fraction(0.45),.fraction(0.50)])
                                .presentationDragIndicator(.visible)
                            bottomMenu
                        }
                    
                }.padding(.top,20)
                Spacer()
                    .frame(height: 60)
                Text("Start your Adventure and Go Travel Now")
                    .font(.system(size: 40,design: .rounded))
                    .fontWeight(.bold)
                    .frame(width: 220)
                    .lineLimit(4)
                    .lineSpacing(2)
                    .foregroundColor(.white)
                    .frame(maxWidth: 100, alignment: .trailing)
                    .padding(.bottom,20)
                
                Text("Discover local destinations beauty with Bluesky and travel with pride.")
                    .foregroundColor(.white)
                    .fontWeight(.semibold)
                    .font(.body)
                    .multilineTextAlignment(.leading)
                    .padding(.horizontal,80)
                    .frame(minWidth: 200,maxWidth: .infinity)
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


extension ContentView{
    private var bottomMenu:some View{
        HStack(spacing:130){
            Text("$81.80")
                .font(.title2)
                .foregroundColor(.blue)
                .fontWeight(.bold)
            Link(destination: URL(string: "https://www.apple.com")!) {
                ZStack {
                    LinearGradient(colors: [.purple,.indigo], startPoint: .topLeading, endPoint: .bottomTrailing)
                        .frame(width: 120,height: 50)
                        .cornerRadius(30)
                    HStack {
                        Image(systemName: "bag")
                        Text("Join Tour")
                    }
                    .frame(width: 100, height: 50)
                    .foregroundColor(.white)
                    .padding(.horizontal,20)
                    
                }
            }
        }
    }
}
