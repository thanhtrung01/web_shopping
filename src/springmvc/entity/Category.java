package springmvc.entity;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;


@Entity
@Table(name="category")
public class Category {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;
	
	@Column(name = "name_category")
	private String nameCategory;
	
	@Column(name = "slug_category")
	private String slugCategory;
	
	@Column(name = "image_category")
	private String imageCategory;
	
	/*
	 * @ManyToOne
	 * 
	 * @JoinColumn(name="user_id") private User user;
	 */
	@OneToMany(mappedBy = "category", cascade = CascadeType.ALL)
	private Set<Product> product;
	/*
	 * @OneToOne(mappedBy="order") private Product product;
	 */

	public Category() {
		
	}
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	public String getNameCategory() {
		return nameCategory;
	}

	public void setNameCategory(String nameCategory) {
		this.nameCategory = nameCategory;
	}
	
	public String getSlugCategory() {
		return slugCategory;
	}

	public void setSlugCategory(String slugCategory) {
		this.slugCategory = slugCategory;
	}
	
	public String getImageCategory() {
		return imageCategory;
	}

	public void setImageCategory(String imageCategory) {
		this.imageCategory = imageCategory;
	}
	
	/*
	 * public Set<Product> getProduct() { return product ; }
	 */
	
}
