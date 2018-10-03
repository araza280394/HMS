package ExamplePackage;

// This is model

public class UserBean {
	
    private String username;
    private String password;
    private String firstName;
    private String lastName;
    public boolean valid;
    private String currentUser;
    private int usertype;
    private int Id;
	
	
    public String getFirstName() {
       return firstName;
	}

    public void setFirstName(String newFirstName) {
       firstName = newFirstName;
	}

	
    public String getLastName() {
       return lastName;
			}

    public void setLastName(String newLastName) {
       lastName = newLastName;
			}
			

    public String getPassword() {
       return password;
	}

    public void setPassword(String newPassword) {
       password = newPassword;
	}
	
			
    public String getUsername() {
       return username;
			}

    public void setUserName(String newUsername) {
       username = newUsername;
			}

				
    public boolean isValid() {
       return valid;
	}

    public void setValid(boolean newValid) {
       valid = newValid;
	}	


public void setcurrentUser(String newCurrentUser) {
   currentUser = newCurrentUser;
}

public String getcurrentUser() {
	return currentUser ;
}


public void setusertype(int newusertype) {
		usertype = newusertype;
	}

public int getusertype() {
		return usertype ;
	}

public void setId(int newusertype) {
	Id = newusertype;
}

public int getId() {
	return Id ;
}
	}



