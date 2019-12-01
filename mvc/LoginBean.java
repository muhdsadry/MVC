package mvc;

public class LoginBean {
	private String login;
	private String password;  
	  
	public String getLogin() {  
	    return login;  
	}
	
	public void setLogin(String login) {  
	    this.login = login;  
	}
	
	public String getPassword() {  
	    return password;  
	}
	
	public void setPassword(String password) {  
	    this.password = password;  
	}
	
	public boolean isValid(){  
	    if(login.equals("zul") && password.equals("abc123")){  
	        return true;  
	    }  
	    else{  
	        return false;  
	    }  
	}  
}
