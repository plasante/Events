package actions.events;

import actions.base.BaseAction;

@SuppressWarnings("serial")
public class NewEvent extends BaseAction {
	public String execute() {
		if (name !=null && name.length() > 0) {
			// A new event will be created with that name
			services.createEvent(name);
			return redirect("Listing.action");
		}
		return "success";
	}
	
	String name;
	public String getName() {return name;}
	public void setName(String value) {name = value;}
}
