package dao;

import java.util.List;
import dto.ReviewDTO;

public interface ReviewDAO {

	public List<ReviewDTO> selectClassList() throws Exception; // 강의 전체 조회
	public List<ReviewDTO> selectClassList(ReviewDTO reviewDto) throws Exception; // 강의 전체 조회 조건 포함
	public ReviewDTO selectReviewOne(ReviewDTO reviewDto) throws Exception; // 강의 1개 조회
	public void insertReview(ReviewDTO reviewDto) throws Exception; // 등록
	public void updateReview(ReviewDTO reviewDto) throws Exception; // 수정
	public void deleteReview(ReviewDTO reviewDto) throws Exception; // 삭제
	
}
	
