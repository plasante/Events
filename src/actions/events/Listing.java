package actions.events;

import actions.base.BaseAction;
import data.*;
import java.util.List;

/**
 * The execute function is called each time someone browses to
 * http://myserver/myapp/events/Listing.action
 * 
 * @author plasante
 *
 */
@SuppressWarnings("serial")
public class Listing extends BaseAction {
	public String execute() {
		events = services.getEvents();
		return "success";
	}
	
	List<Event> events;
	public List<Event> getEvents() { return events; }
}
