//
//  ContentView.swift
//  loginKey-swui
//
//  Created by miguel tomairo on 5/17/20.
//  Copyright © 2020 Rapser. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {

        Home()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct Home: View {
    
    @State var email = ""
    @State var pass = ""
    @State var rem = false
    
    var body: some View {
        
        ZStack{
            
            Color.black.opacity(0.03).edgesIgnoringSafeArea(.all)
            
            VStack{
                
                HStack(alignment: .top, spacing: 0){
                    
//                    Image("logo")
//                        .offset(x: 20, y: 20)
                    
                    Image("logo1")
                }
                
                VStack(alignment: .leading){
                    
                    Text("Login")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Text("Username")
                        .fontWeight(.bold)
                        .padding(.top, 20)
                    
                    VStack{
                        TextField("", text: self.$email)
                        
                        Rectangle()
                        .fill(self.email == "" ? Color.black.opacity(0.08) : Color("Color1"))
                        .frame(height: 3)
                    }
                    
                    Text("Password")
                        .fontWeight(.bold)
                        .padding(.top, 20)
                    
                    VStack{
                        SecureField("", text: self.$pass)
                        Rectangle()
                        .fill(self.pass == "" ? Color.black.opacity(0.08) : Color("Color1"))
                            .frame(height: 3)
                    }
                    
                    HStack{
                        
                        Spacer()
                        
                        Button(action: {
                            
                        }) {
                            Text("Forget Password?")
                                .fontWeight(.bold)
                            .foregroundColor(Color("Color1"))
                        }
                    }
                    .padding(.top)
                    
                }
                .foregroundColor(Color.black.opacity(0.7))
                .padding()
                .background(Color.white)
                .overlay(Rectangle().stroke(Color.black.opacity(0.03), lineWidth: 1)).shadow(radius: 4)
                .padding(.horizontal)
                
                HStack{
                    
                    Button(action: {
                        self.rem.toggle()
                    }) {
                        
                        HStack(spacing: 10){
                            ZStack{
                                
                                Circle()
                                    .stroke(LinearGradient(gradient: .init(colors: [Color("Color"), Color("Color1")]), startPoint: .top, endPoint: .bottom), lineWidth: 2)
                                .frame(width: 20, height: 20)
                                
                                if self.rem{
                                    
                                    Circle()
                                    .fill(Color("Color1"))
                                    .frame(width: 10, height: 10)
                                }
                            }
                        }
                        
                        Text("Remenber me")
                            .fontWeight(.bold)
                            .foregroundColor(Color.black.opacity(0.7))
                    }
                    .padding(.leading, 10)
                    
                    Spacer()
                    
                    Button(action: {
                        
                    }) {
                        
                        Text("SIGNIN")
                            .fontWeight(.bold)
                            .foregroundColor(.white)
                            .padding(.vertical)
                            .padding(.horizontal, 35)
                            .background(LinearGradient(gradient: .init(colors: [Color("Color"), Color("Color1")]), startPoint: .leading, endPoint: .trailing))
                        .cornerRadius(5)
                    }
                }
                .padding(.top)
                .padding(.horizontal)
                
                Spacer()
            }
            
            
        }
    }
}
