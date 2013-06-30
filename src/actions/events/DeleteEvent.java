package actions.events;

import actions.base.BaseAction;
import data.Event;

@SuppressWarnings("serial")
public class DeleteEvent extends BaseAction {
	public String execute() {
		if (isPostBack) {
			services.deleteEventById(id);
			return redirect("Listing.action");
		}
		return "success";
	}
	
	private int id;
	public void setId(int value) {id = value;}
	public int getId() {return id;}
	
	boolean isPostBack;
	public void setIsPostBack(boolean value) {isPostBack = value;}
	
	Event getEvent() {return services.getEventById(id);}
	public String getEventName() {return getEvent().getName();}
}
