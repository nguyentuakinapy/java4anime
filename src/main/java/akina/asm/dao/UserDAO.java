package akina.asm.dao;

import java.util.List;

import akina.asm.entity.User;

public interface UserDAO {
	List<User> findAll();

	User findById(String id);

	User findByUsername(String id);

	void create(User user);

	void update(User user);

	void deleteById(String id);

	User findByEmail(String email);
}