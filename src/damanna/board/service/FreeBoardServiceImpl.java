package damanna.board.service;

import java.util.List;

import damanna.board.dao.FreeBoardDaoImpl;
import damanna.board.dao.IFreeBoardDao;
import damanna.vo.FreeBoardVO;

public class FreeBoardServiceImpl implements IFreeBoardService {

	private IFreeBoardDao freeDao;
	
	private static FreeBoardServiceImpl service;
	
	private FreeBoardServiceImpl() {
		freeDao = FreeBoardDaoImpl.getInstance();
	}
	
	public static FreeBoardServiceImpl getInstance() {
		if(service==null) service = new FreeBoardServiceImpl();
		
		return service;
	}
	
	@Override
	public List<FreeBoardVO> getAllFreeList() {
		return freeDao.getAllFreeList();
	}

	@Override
	public int insertFree(FreeBoardVO freeVo) {
		return freeDao.insertFree(freeVo);
	}

	@Override
	public int updateFree(FreeBoardVO freeVo) {
		return freeDao.updateFree(freeVo);
	}

	@Override
	public int deleteFree(int freeId) {
		return freeDao.deleteFree(freeId);
	}

	@Override
	public FreeBoardVO getFree(int freeId) {
		return freeDao.getFree(freeId);
	}

	@Override
	public int getFreeCount(int freeId) {
		return freeDao.getFreeCount(freeId);
	}

}
