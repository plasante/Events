package actions.people;

import actions.base.BaseAction;

@SuppressWarnings("serial")
public class DeletePerson extends BaseAction {
	public String execute() {
		if (isPostBack) {
			services.deletePersonById(id);
			return redirect("Listing.action");
		}
		return "success";
	}
	
	int id;
	public void setId(int value) {id = value;}
	public int getId() {return id;}
	
	boolean isPostBack;
	public void setIsPostBack(boolean value) {isPostBack = value;}
	
	public String getName() { return services.getPersonById(id).getName(); }
}
