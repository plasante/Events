package data;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="cities")
public class City {
	  @Id
	  @GeneratedValue
	  private int id;
	  public int getId() {return id;}
	  public void setId(int id) {this.id = id;}
		
	  String name;
	  public String getName() {return name;}
	  public void setName(String value) {name = value;}
	  
}
