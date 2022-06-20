package co.team.library.book.vo;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class BookVO {
	private String bookCode;
	private String bookTitle;
	private String writer;
	private String publisher;
	private int rental;
	private int volume;
	private String category;
	private int rentalCount;
	private String image;
}
