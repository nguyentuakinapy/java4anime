package akina.asm.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.TypedQuery;

import akina.asm.entity.User;
import akina.asm.utils.JpaUtils;

public class UserDaoImplements implements UserDAO {
	EntityManager em = JpaUtils.getEntityManager();

	@Override
	protected void finalize() throws Throwable {
		JpaUtils.close();
	}

	@Override
	public List<User> findAll() {
		TypedQuery<User> query = em.createNamedQuery("User.findAll", User.class); // Lấy dữ liệu
		return query.getResultList();
	}

	@Override
	public User findById(String id) {
		return em.find(User.class, id);
	}

	@Override
	public void create(User user) {
		try {
			em.getTransaction().begin();// Bắt đầu giao dịch
			em.persist(user); // Thêm
			em.getTransaction().commit();
		} catch (Exception e) {
			em.getTransaction().rollback();
		}
	}

	@Override
	public void update(User user) {
		try {
			em.getTransaction().begin();// Bắt đầu giao dịch
			em.merge(user); // Cập nhật
			em.getTransaction().commit();
		} catch (Exception e) {
			em.getTransaction().rollback();
		}
	}

	@Override
	public void deleteById(String id) {
		User entity = em.find(User.class, id);// Lấy từ databasex
		try {
			em.getTransaction().begin();// Bắt đầu giao dịch
			em.remove(entity); // Xóa
			em.getTransaction().commit();
		} catch (Exception e) {
			em.getTransaction().rollback();
		}
	}

	@Override
	public User findByUsername(String username) {
		TypedQuery<User> query = em.createQuery("SELECT u FROM User u WHERE u.fullname = :username", User.class);
		query.setParameter("username", username);
		try {
			return query.getSingleResult();
		} catch (NoResultException e) {
			return null;
		}
	}

	@Override
	public User findByEmail(String email) {
		TypedQuery<User> query = em.createQuery("SELECT o FROM User o Where o.email =?0", User.class);
		query.setParameter(0, email);
		return query.getSingleResult();
	}

}
