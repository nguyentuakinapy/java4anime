package akina.asm.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.TypedQuery;

import akina.asm.entity.User;
import akina.asm.entity.Video;
import akina.asm.utils.JpaUtils;

public class VideoDAOImplements implements VideoDAO {
	EntityManager em = JpaUtils.getEntityManager();

	@Override
	public List<Video> findAll() {
		String jpql = "SELECT o FROM Video o";
		TypedQuery<Video> query = em.createQuery(jpql, Video.class);
		return query.getResultList();
	}

	@Override
	public Video findById(String id) {
		return em.find(Video.class, id);
	}

	@Override
	public void create(Video vd) {
		try {
			em.getTransaction().begin();// Bắt đầu giao dịch
			em.persist(vd); // Thêm
			em.getTransaction().commit();
		} catch (Exception e) {
			em.getTransaction().rollback();
		}
	}

	@Override
	public void update(Video vd) {
		try {
			em.getTransaction().begin();// Bắt đầu giao dịch
			em.merge(vd); // Cập nhật
			em.getTransaction().commit();
		} catch (Exception e) {
			em.getTransaction().rollback();
		}
	}

	@Override
	public void deleteById(String id) {
		Video entity = em.find(Video.class, id);// Lấy từ databasex
		try {
			em.getTransaction().begin();// Bắt đầu giao dịch
			em.remove(entity); // Xóa
			em.getTransaction().commit();
		} catch (Exception e) {
			em.getTransaction().rollback();
		}
	}

	@Override
	public List<Video> findAllSix(int offset) {
		TypedQuery<Video> query = em.createNamedQuery("Video.findAllSix", Video.class).setFirstResult(offset)
				.setMaxResults(6);
		return query.getResultList();
	}

}
