package damanna.board.service;

import java.util.List;

import damanna.board.dao.INoticeBoardDao;
import damanna.board.dao.NoticeBoardDaoImpl;
import damanna.vo.NoticeBoardVO;

public class NoticeBoardServiceImpl implements INoticeBoardService {
	
	private INoticeBoardDao noticeDao;
	
	private static NoticeBoardServiceImpl service;
	
	private NoticeBoardServiceImpl() {
		noticeDao = NoticeBoardDaoImpl.getInstance();
	}
	
	public static NoticeBoardServiceImpl getInstance() {
		if(service==null) service = new NoticeBoardServiceImpl();
		
		return service;
	}

	@Override
	public List<NoticeBoardVO> getAllNoticeList() {
		return noticeDao.getAllNoticeList();
	}

	@Override
	public int insertNotice(NoticeBoardVO noticeVo) {
		return noticeDao.insertNotice(noticeVo);
	}

	@Override
	public int updateNotice(NoticeBoardVO noticeVo) {
		return noticeDao.updateNotice(noticeVo);
	}

	@Override
	public int deleteNotice(int noticeId) {
		return noticeDao.deleteNotice(noticeId);
	}

	@Override
	public NoticeBoardVO getNotice(int noticeId) {
		return noticeDao.getNotice(noticeId);
	}

	@Override
	public int getNoticeCount(int noticeId) {
		return noticeDao.getNoticeCount(noticeId);
	}

}
