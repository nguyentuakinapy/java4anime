package akina.asm.entity;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.persistence.UniqueConstraint;

//@NamedQueries({ @NamedQuery(name = "tên của nó(Duy nhất)", query = "câu lệnh truy vấn") })
@Entity
@Table(name = "Favorites", uniqueConstraints = { @UniqueConstraint(columnNames = { "userId", "videoId" }) })
public class Favorite {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Integer id;

	@ManyToOne
	@JoinColumn(name = "userId")
	User user = new User();

	@ManyToOne
	@JoinColumn(name = "videoId")
	Video video = new Video();

	@Temporal(TemporalType.DATE)
	@Column(name = "likeDate")
	Date likeDate = new Date();

	public Favorite(Integer id, User user, Video video, Date likeDate) {
		super();
		this.id = id;
		this.user = user;
		this.video = video;
		this.likeDate = likeDate;
	}

	public Favorite() {
		super();
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Video getVideo() {
		return video;
	}

	public void setVideo(Video video) {
		this.video = video;
	}

	public Date getLikeDate() {
		return likeDate;
	}

	public void setLikeDate(Date likeDate) {
		this.likeDate = likeDate;
	}

}
