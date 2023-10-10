package entity;

import java.util.Date;

public record User(
		String userName,
		String email,
		String password,
		Date dob,
		String gender
		) {

}
