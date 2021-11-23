package damanna.board.service;

import java.util.List;

import damanna.vo.FreeBoardVO;

public interface IFreeBoardService {
	
	public List<FreeBoardVO> getAllFreeList();
	
	public int insertFree(FreeBoardVO freeVo);
	
	public int updateFree(FreeBoardVO freeVo);
	
	public int deleteFree(int freeId);
	
	public FreeBoardVO getFree(int freeId);
	
	public int getFreeCount(int freeId);

}
