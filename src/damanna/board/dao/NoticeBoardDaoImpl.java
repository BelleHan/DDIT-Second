package damanna.board.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import damanna.util.SqlMapClientFactory;
import damanna.vo.NoticeBoardVO;

public class NoticeBoardDaoImpl implements INoticeBoardDao {
	
	private static NoticeBoardDaoImpl dao;
	private SqlMapClient smc;
	
	private NoticeBoardDaoImpl() {
		smc = SqlMapClientFactory.getSqlMapClient();
//		try {
//			Charset charset = Charset.forName("UTF-8");
//			Resources.setCharset(charset);
//			
//			Reader rd = 
//					Resources.getResourceAsReader("damanna/config/sqlMapConfig.xml");
//			smc = SqlMapClientBuilder.buildSqlMapClient(rd);
//			rd.close();
//			
//		} catch (IOException e) {
//			e.printStackTrace();
//		}
	}
	
	public static NoticeBoardDaoImpl getInstance() {
		if(dao==null) dao = new NoticeBoardDaoImpl();
		
		return dao;
		
	}

	@Override
	public List<NoticeBoardVO> getAllNoticeList() {
		List<NoticeBoardVO> noticeList = new ArrayList<>();
		//System.out.println("smc=" + smc);
		try {
			noticeList = smc.queryForList("noticeBoard.getAllNotice");
			
		} catch (SQLException e) {
			noticeList = null;
			e.printStackTrace();
		}
		
		return noticeList;
		
	}

	@Override
	public int insertNotice(NoticeBoardVO noticeVo) {
		int cnt = 0;
		
		try {
			Object obj = smc.insert("noticeBoard.insertNotice", noticeVo);
			if(obj==null) cnt = 1;
			
		} catch (SQLException e) {
			cnt = 0;
			e.printStackTrace();
		}
		return cnt;
	}

	@Override
	public int updateNotice(NoticeBoardVO noticeVo) {
		int cnt = 0;
		
		try {
			Object obj = smc.delete("noticeBoard.updateNotice", noticeVo);
			if(obj==null) cnt = 1;
			
		} catch (SQLException e) {
			cnt = 0;
			e.printStackTrace();
		}
		return cnt;
	}

	@Override
	public int deleteNotice(int noticeId) {
		int cnt = 0;
		
		try {
			Object obj = smc.delete("noticeBoard.deleteNotice", noticeId);
		} catch (SQLException e) {
			cnt = 0;
			e.printStackTrace();
		}
		return cnt;
	}

	@Override
	public NoticeBoardVO getNotice(int noticeId) {
		NoticeBoardVO noticeList = null;
		
		try {
			
			noticeList = (NoticeBoardVO) smc.queryForObject("noticeBoard.getNotice", noticeId);
			
		} catch (SQLException e) {
			noticeList = null;
			e.printStackTrace();
		}
		return noticeList;
	}

	@Override
	public int getNoticeCount(int noticeId) {
		int cnt = 0;
		
		try {
			
			Object obj = smc.update("noticeBoard.getNoticeCount", noticeId);
			
		} catch (SQLException e) {
			cnt = 0;
			e.printStackTrace();
		}
		return cnt;
	}

}
