package dao;

import java.util.List;
import dto.ReviewDTO;

public interface ReviewDAO {

	public List<ReviewDTO> selectClassList() throws Exception; // ���� ��ü ��ȸ
	public List<ReviewDTO> selectClassList(ReviewDTO reviewDto) throws Exception; // ���� ��ü ��ȸ ���� ����
	public ReviewDTO selectReviewOne(ReviewDTO reviewDto) throws Exception; // ���� 1�� ��ȸ
	public void insertReview(ReviewDTO reviewDto) throws Exception; // ���
	public void updateReview(ReviewDTO reviewDto) throws Exception; // ����
	public void deleteReview(ReviewDTO reviewDto) throws Exception; // ����
	
}
	
