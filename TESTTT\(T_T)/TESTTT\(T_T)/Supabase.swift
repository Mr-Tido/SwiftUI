//
//  Supabase.swift
//  TESTTT\(T_T)
//
//  Created by user on 18.09.2024.
//

import Foundation
import Supabase


final class SupabaseManager{
    private let uers = "users"
}

let supabase = SupabaseClient(
supabaseURL: URL(string: "https://daohsqwfrwshomdpzavm.supabase.co")!,
supabaseKey: String("eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRhb2hzcXdmcndzaG9tZHB6YXZtIiwicm9sZSI6ImFub24iLCJpYXQiOjE3MjY2MjUyNzksImV4cCI6MjA0MjIwMTI3OX0.XxfSwY4EO1W1SZ56XJYgE6BhXYtEo1AErIjO-N1oDzE")
,options:.init())


func autor () async throws{
    try await supabase.auth.signIn(email:"Vovastar2020@rambler.ru", password: "Kant2017")
}

func signUp(phone: String, email: String, password: String) async throws {
    try await supabase.auth.signUp(email: email, password: password)
    
    let user = try await supabase.auth.session.user
    
    let newUser = USerModel(is_courier: false, name: "name", phone_number: "phone")
    
    try await supabase.database.from(users)
        .insert(newUser)
        .execute()
    
    try await supabase.auth.signOut()
}


