// Creating Setting View

import SwiftUI

struct SettingsView: View {
    @State private var isShowingProfile = false
    @State private var isShowingChangePassword = false
    @State private var isShowingDeleteAccount = false
    
    var body: some View {
        NavigationView {
            List {
                Section(header: Text("Account")) {
                    Button(action: {
                        isShowingProfile.toggle()
                    }) {
                        HStack {
                            Image(systemName: "person.circle")
                            Text("Edit Profile")
                        }
                    }
                    .sheet(isPresented: $isShowingProfile) {
                        EditProfileView()
                    }
                    
                    Button(action: {
                        isShowingChangePassword.toggle()
                    }) {
                        HStack {
                            Image(systemName: "lock.fill")
                            Text("Change Password")
                        }
                    }
                    .sheet(isPresented: $isShowingChangePassword) {
                        ChangePasswordView()
                    }
                }
                
                Section(header: Text("Security")) {
                    Button(action: {
                        // Handle logout action
                        print("User logged out")
                    }) {
                        HStack {
                            Image(systemName: "arrow.right.square.fill")
                            Text("Log Out")
                                .foregroundColor(.red)
                        }
                    }
                    
                    Button(action: {
                        isShowingDeleteAccount.toggle()
                    }) {
                        HStack {
                            Image(systemName: "trash.fill")
                            Text("Delete Account")
                                .foregroundColor(.red)
                        }
                    }
                    .sheet(isPresented: $isShowingDeleteAccount) {
                        DeleteAccountView()
                    }
                }
            }
            .navigationTitle("Settings")
        }
    }
}

struct EditProfileView: View {
    var body: some View {
        Text("Edit Profile Screen")
            .font(.title)
            .padding()
    }
}

struct ChangePasswordView: View {
    var body: some View {
        Text("Change Password Screen")
            .font(.title)
            .padding()
    }
}

struct DeleteAccountView: View {
    var body: some View {
        Text("Delete Account Screen")
            .font(.title)
            .foregroundColor(.red)
            .padding()
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
