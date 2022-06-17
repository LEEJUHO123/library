package co.team.library.qna.reply.vo;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ReplyVO {
	private int board_Number;
	private String id;
	private Date wdate;
	private String content;
}
