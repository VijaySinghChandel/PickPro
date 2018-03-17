package in.pickmyclick.modal;

import java.io.Serializable;
import java.util.Date;

public class UserDto implements Serializable{

	private static final long serialVersionUID = 5914173139515956840L;
	
	private String firstName;
	private String lastName;
	private String password;
	private String matchingPassword;
	private String email;
	private String mobileNumber;
	private int enabled;
	private Date createdOn;
	
	public int getEnabled() {
		return enabled;
	}
 
	public Date getCreatedOn() {
		return createdOn;
	}

	public void setCreatedOn(Date createdOn) {
		this.createdOn = createdOn;
	}

	public void setEnabled(int enabled) {
		this.enabled = enabled;
	}

	public String getMobileNumber() {
		return mobileNumber;
	}

	public void setMobileNumber(String mobileNumber) {
		this.mobileNumber = mobileNumber;
	}

	public UserDto() {

	}

	public UserDto(String firstName, String lastName, String password, String matchingPassword, String email,String mobileNumber) {
		super();
		this.firstName = firstName;
		this.lastName = lastName;
		this.password = password;
		this.matchingPassword = matchingPassword;
		this.email = email;
		this.mobileNumber =  mobileNumber;
	}

	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getMatchingPassword() {
		return matchingPassword;
	}
	public void setMatchingPassword(String matchingPassword) {
		this.matchingPassword = matchingPassword;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}

	@Override
	public String toString() {
		return "UserDto [firstName=" + firstName + ", lastName=" + lastName + ", password=" + password
				+ ", matchingPassword=" + matchingPassword + ", email=" + email + ", mobileNumber=" + mobileNumber
				+ ", enabled=" + enabled + "]";
	}

	

}