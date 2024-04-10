package akina.asm.dao;

import java.util.List;

import akina.asm.entity.Video;

public interface VideoDAO {
	List<Video> findAll();

	Video findById(String id);

	void create(Video vd);

	void update(Video vd);

	void deleteById(String id);
	
	List<Video> findAllSix(int offset);
	
}
