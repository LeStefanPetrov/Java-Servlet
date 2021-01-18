package Package_IT;

import javax.xml.bind.annotation.XmlAttribute;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;
import javax.xml.bind.annotation.XmlTransient;
import javax.xml.bind.annotation.XmlType;

@XmlRootElement(name="user")

@XmlType(propOrder = { "id","username", "password", "phone", "city","address"})
public class User {
	private int id;
	private String username;
	private String password;
	private String phone;
	private String city;
	private String address;
	
	public User() {}
	
	public User(int id,String username, String password,String phone,String city,String address) {
		this.id=id;
		this.username = username;
		this.password = password;
		this.phone=phone;
		this.city=city;
		this.address=address;
	}
	
	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getUsername() {
		return username;
	}
	
	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}
	    public boolean equals(Object o) {
	        if (o == this) return true;
	        if (!(o instanceof User)) {
	            return false;
	        }
	        User user = (User) o;
	        return user.username.equals(username) &&
	                user.password.equals(password);
	    }
}
