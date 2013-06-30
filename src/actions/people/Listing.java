package actions.people;

import java.util.List;

import data.Person;

import actions.base.BaseAction;

/**
 * This action get a list of all people via the business services, and make
 * that list available to the view via the getPeople getter function
 * @author plasante
 *
 */
@SuppressWarnings("serial")
public class Listing extends BaseAction {
	public String execute() {
		people = services.getPeople();
		return "success";
	}
	
	List<Person> people;
	public List<Person> getPeople() {return people;}
}
