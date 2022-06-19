package co.team.library.book.serviceImpl;

import java.util.List;

import org.apache.ibatis.session.SqlSession;

import co.team.library.book.service.BookMapper;
import co.team.library.book.service.BookService;
import co.team.library.book.vo.BookVO;
import co.team.library.comm.DataSource;

public class BookServiceImpl implements BookService {
	
	private SqlSession sqlSession = DataSource.getInstance().openSession(true);
	private BookMapper map = sqlSession.getMapper(BookMapper.class);

	@Override
	public List<BookVO> bookList() {
		return map.bookList();
	}

	@Override
	public List<BookVO> searchBookCategory(String category) {
		return map.searchBookCategory(category);
	}

	@Override
	public List<BookVO> searchBookWriter(String writer) {
		return map.searchBookWriter(writer);
	}

	@Override
	public List<BookVO> searchBookSearch(String keyword) {
		return map.searchBookSearch(keyword);
	}

	@Override
	public BookVO bookInsert(BookVO vo) {
		return map.bookInsert(vo);
	}

	@Override
	public int bookDelete(String bookCode) {
		return map.bookDelete(bookCode);
	}

	@Override
	public BookVO bookDetail(String title) {
		return map.bookDetail(title);
	}

}
