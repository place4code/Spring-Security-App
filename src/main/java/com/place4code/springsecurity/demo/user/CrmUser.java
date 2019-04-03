package com.place4code.springsecurity.demo.user;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

@FieldMatch.List({
	@FieldMatch(first = "password", second = "matchingPassword", ,essage = "The password fields must match")
})
public class CrmUser {

	@NotNull(message = "is required")
	@Size(min = 1, message = "is required")
	private String userName;
	
	@NotNull(message = "is required")
	@Size(min = 1, message = "is required")
	private String password;
	
	@NotNull(message = "is required")
	@Size(min = 1, message = "is required")
	private String matchingPassword;
	
	@NotNull(message = "is required")
	@Size(min = 1, message = "is required")
	private String firstName;

	public String getUserName() {
		return userName;
	}

	public void setUserName(String userName) {
		this.userName = userName;
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

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public CrmUser() {
	}

	public CrmUser(@NotNull(message = "is required") @Size(min = 1, message = "is required") String userName,
			@NotNull(message = "is required") @Size(min = 1, message = "is required") String password,
			@NotNull(message = "is required") @Size(min = 1, message = "is required") String matchingPassword,
			@NotNull(message = "is required") @Size(min = 1, message = "is required") String firstName) {
		this.userName = userName;
		this.password = password;
		this.matchingPassword = matchingPassword;
		this.firstName = firstName;
	}
	
	
	
}
