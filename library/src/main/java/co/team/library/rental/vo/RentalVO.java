package co.team.library.rental.vo;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class RentalVO {
	private String id;
	private String bookCode;
	private String bookTitle;
	private Date rentalDate;
	private Date returnDate;
	private int returnOrNot;
	
}
