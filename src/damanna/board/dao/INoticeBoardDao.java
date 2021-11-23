package damanna.board.dao;

import java.util.List;

import damanna.vo.NoticeBoardVO;

public interface INoticeBoardDao {

	public List<NoticeBoardVO> getAllNoticeList();
	
	public int insertNotice(NoticeBoardVO noticeVo);
	
	public int updateNotice(NoticeBoardVO noticeVo);
	
	public int deleteNotice(int noticeId);
	
	public NoticeBoardVO getNotice(int noticeId);
	
	public int getNoticeCount(int noticeId);
	
}
