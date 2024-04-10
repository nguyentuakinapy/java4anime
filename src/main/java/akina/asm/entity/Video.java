package akina.asm.entity;

import java.util.List;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;

import akina.asm.dao.FavoriteDAO;
import akina.asm.dao.FavoriteDAOImplements;

@NamedQueries({ @NamedQuery(name = "Video.findAllSix", query = "SELECT o FROM Video o") })
@Entity
@Table(name = "Videos")
public class Video {
	@Id
	String id;
	String title;
	String poster;
	String description;
	int views = 0;
	boolean active = true;
	String banner;

	public String getBanner() {
		return banner;
	}

	public void setBanner(String banner) {
		this.banner = banner;
	}

	@OneToMany(mappedBy = "video")
	List<Favorite> favorites;

	@OneToMany(mappedBy = "video")
	List<Share> shares;

	public Video(String id, String title, String poster, String description, int views, boolean active, String banner,
			List<Favorite> favorites, List<Share> shares) {
		super();
		this.id = id;
		this.title = title;
		this.poster = poster;
		this.description = description;
		this.views = views;
		this.active = active;
		this.banner = banner;
		this.favorites = favorites;
		this.shares = shares;
	}

	public Video() {
		super();
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getPoster() {
		return poster;
	}

	public void setPoster(String poster) {
		this.poster = poster;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getViews() {
		return views;
	}

	public void setViews(int views) {
		this.views = views;
	}

	public boolean isActive() {
		return active;
	}

	public void setActive(boolean active) {
		this.active = active;
	}

	public List<Favorite> getFavorites() {
		return favorites;
	}

	public void setFavorites(List<Favorite> favorites) {
		this.favorites = favorites;
	}

	public List<Share> getShares() {
		return shares;
	}

	public void setShares(List<Share> shares) {
		this.shares = shares;
	}
}
