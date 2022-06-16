package co.team.library.rental.vo;

import java.sql.Date;

import lombok.Data;

@Data
public class RentalVO {
	private String id;
	private String bookCode;
	private String bookName;
	private Date rentalDate;
	private Date returnDate;
	private int returnOrNot;
	
}
