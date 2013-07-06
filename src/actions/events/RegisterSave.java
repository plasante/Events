package actions.events;

import actions.base.BaseAction;

public class RegisterSave extends BaseAction {
	public String execute() {
		return SUCCESS;
	}
	
	private String username;
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	
	private String password;
	
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	private String register;

	public String getRegister() {
		return register;
	}
	public void setRegister(String register) {
		this.register = register;
	}
}
