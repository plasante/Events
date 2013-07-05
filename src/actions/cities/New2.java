package actions.cities;

import actions.base.BaseAction;

public class New2 extends BaseAction {
	public String execute() {
		return "success";
	}
	
	String name;
	public String getName() {return name;}
	public void setName(String value) {name = value;}
}
