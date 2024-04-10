package akina.asm.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;
import javax.persistence.TypedQuery;

import akina.asm.entity.Favorite;
import akina.asm.utils.JpaUtils;

public class FavoriteDAOImplements implements FavoriteDAO {
	EntityManager em = JpaUtils.getEntityManager();

	@Override
	protected void finalize() throws Throwable {
		JpaUtils.close();
	}

	@Override
	public List<Favorite> findAll() {
		TypedQuery<Favorite> query = em.createQuery("SELECT o FROM Favorite o", Favorite.class);
		return query.getResultList();
	}

	@Override
	public Favorite findById(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Favorite findByFavoritename(String id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void create(Favorite favorite) {
		try {
			em.getTransaction().begin();// Bắt đầu giao dịch
			em.persist(favorite); // Thêm
			em.getTransaction().commit();
		} catch (Exception e) {
			em.getTransaction().rollback();
		}
	}

	@Override
	public void update(Favorite favorite) {
		// TODO Auto-generated method stub

	}

	@Override
	public void deleteById(Integer id) {
		Favorite f = em.find(Favorite.class, id);
		try {
			em.getTransaction().begin();
			em.remove(f);
			em.getTransaction().commit();
		} catch (Exception e) {
			em.getTransaction().rollback();
		}
	}

	@Override
	public List<Favorite> findByUsername(String username) {
		String jpql = "SELECT o FROM Favorite o WHERE o.user.id=?0";
		TypedQuery<Favorite> query = em.createQuery(jpql, Favorite.class);
		query.setParameter(0, username);
		return query.getResultList();
	}
}
