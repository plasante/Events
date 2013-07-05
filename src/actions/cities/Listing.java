package actions.cities;

import java.util.List;

import data.City;

import actions.base.BaseAction;

@SuppressWarnings("serial")
public class Listing extends BaseAction {
	public String execute() {
		cities = services.getCities();
		return "success";
	}
	
	List<City> cities;
	public List<City> getCities() {return cities;}
}
