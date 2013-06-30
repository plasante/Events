package actions.people;

import actions.base.BaseAction;

@SuppressWarnings("serial")
public class NewPerson extends BaseAction {
	public String execute() {
		if (name != null && name.length() > 0) {
			services.createPerson(name);
			return redirect("Listing.action");
		}
		return "success";
	}
	
	String name;
	public String getName() {return name;}
	public void setName(String value) {name = value;}
}
