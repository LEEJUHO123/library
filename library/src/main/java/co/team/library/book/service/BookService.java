package co.team.library.book.service;

import java.util.List;

import co.team.library.book.vo.BookVO;

public interface BookService {
	List<BookVO> bookList(); // 책 전체 조회
	List<BookVO> searchBookCategory(String category); // 책 카테고리(총류)별 조회
	List<BookVO> searchBookWriter(String writer); // 책 저자 조회
	List<BookVO> searchBookSearch(String keyword); // 책 검색
	List<BookVO> rentalChart(); // 대여현황
	List<BookVO> categoryChart(); // 카테고리별 대여현황
	
	// 관리자만 가능한 영역
	BookVO bookInsert(BookVO vo); // 책 등록
	int bookDelete(String bookCode); // 등록된 책 삭제
	

}
