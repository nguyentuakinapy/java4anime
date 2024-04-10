package akina.asm.dao;

import java.util.List;

import akina.asm.entity.Favorite;

public interface FavoriteDAO {
	List<Favorite> findAll();

	Favorite findById(String id);

	Favorite findByFavoritename(String id);

	void create(Favorite favorite);

	void update(Favorite favorite);

	void deleteById(Integer id);

	List<Favorite> findByUsername(String username);
}
