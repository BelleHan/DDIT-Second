package damanna.board.dao;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.ibatis.sqlmap.client.SqlMapClient;

import damanna.util.SqlMapClientFactory;
import damanna.vo.FreeBoardVO;
import damanna.vo.NoticeBoardVO;

public class FreeBoardDaoImpl implements IFreeBoardDao {
	
	private static FreeBoardDaoImpl dao;
	private SqlMapClient smc;
	
	private FreeBoardDaoImpl() {
		smc = SqlMapClientFactory.getSqlMapClient();
	}
	
	public static FreeBoardDaoImpl getInstance() {
		if(dao==null) dao = new FreeBoardDaoImpl();
		
		return dao;
	}

	@Override
	public List<FreeBoardVO> getAllFreeList() {
		List<FreeBoardVO> freeList = new ArrayList<>();
		
		try {
			
			freeList = smc.queryForList("freeBoard.getAllFree");
			
		} catch (SQLException e) {
			freeList = null;
			e.printStackTrace();
		}
		return freeList;
	}

	@Override
	public int insertFree(FreeBoardVO freeVo) {
		int cnt = 0;
		
		try {
			Object obj = smc.insert("freeBoard.insertFree", freeVo);
			if(obj==null) cnt = 1;
			
		} catch (SQLException e) {
			cnt = 0;
			e.printStackTrace();
		}
		return cnt;
	}

	@Override
	public int updateFree(FreeBoardVO freeVo) {
		int cnt = 0;
		
		try {
			Object obj = smc.delete("freeBoard.updateFree", freeVo);
			if(obj==null) cnt = 1;
			
		} catch (SQLException e) {
			cnt = 0;
			e.printStackTrace();
		}
		return cnt;
	}

	@Override
	public int deleteFree(int freeId) {
		int cnt = 0;
		
		try {
			Object obj = smc.delete("freeBoard.deleteFree", freeId);
		} catch (SQLException e) {
			cnt = 0;
			e.printStackTrace();
		}
		return cnt;
	}

	@Override
	public FreeBoardVO getFree(int freeId) {
		FreeBoardVO freeList = null;
		
		try {
			
			freeList = (FreeBoardVO) smc.queryForObject("freeBoard.getFree", freeId);
			
		} catch (SQLException e) {
			freeList = null;
			e.printStackTrace();
		}
		return freeList;
	}

	@Override
	public int getFreeCount(int freeId) {
		int cnt = 0;
		
		try {
			
			Object obj = smc.update("freeBoard.getFreeCount", freeId);
			
		} catch (SQLException e) {
			cnt = 0;
			e.printStackTrace();
		}
		return cnt;
	}

}
