package springmvc.entity;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;


@Entity
@Table(name="slider")
public class Slider {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;
	
	@Column(name = "title_slider")
	private String titleSlider;
	
	@Column(name = "image_slider")
	private String imageSlider;
	
	/*
	 * @ManyToOne
	 * 
	 * @JoinColumn(name="user_id") private User user;
	 */
	
	/*
	 * @OneToOne(mappedBy="order") private Product product;
	 */
	
	@Column(name = "description")
	private String description;
	
	public Slider() {
		
	}
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	public String getTitleSlider() {
		return titleSlider;
	}

	public void setTitleSlider(String titleSlider) {
		this.titleSlider = titleSlider;
	}
	public String getImageSlider() {
		return imageSlider;
	}

	public void setImageSlider(String imageSlider) {
		this.imageSlider = imageSlider;
	}
	
	/*
	 * public Set<Product> getProduct() { return product ; }
	 */
	
	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
}
