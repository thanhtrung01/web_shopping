package springmvc.entity;

import java.sql.Date;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.ManyToOne;

@Entity
@Table(name="product")
public class Product {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;
	
	@Column(name = "image")
	private String image;
	
	@Column(name = "title")
	private String title;
	
	@Column(name = "id_category")
	private int idCategory;
	
	@Column(name = "slug")
	private String slug;
	
	@Column(name = "price")
	private Double price;
	
	@Column(name = "condition")
	private int condition;
	
	@Column(name = "quantity")
	private int quantity;
	
	@Column(name = "sale")
	private Boolean sale;
	
	@Column(name = "discount")
	private int discount;
	
	@Column(name = "description")
	private String description;
	
	@Column(name = "created_at")
	private Date createdAt;
	
	@Column(name = "updated_at")	
	private Date updatedAt;
	
	
	/*
	 * @OneToOne(cascade = CascadeType.ALL)
	 * 
	 * @JoinColumn(name = "id", referencedColumnName = "product_id")
	 */
	/* private Order order; */
	
	@ManyToOne
    @JoinColumn(name="id_category", nullable=false, insertable=false, updatable=false) //cart_id chính là trường khoá phụ trong table Item liên kết với khóa chính trong table Cart
    private Category category;

    
	public Product() {
		// TODO Auto-generated constructor stub
	}

	public Product(int id, String image, String title, Double price, String description, 
					int condition, Date createdAt, Date updatedAt) {
		this.id = id;
		this.image = image;
		this.title = title;
		this.price = price;
		this.description = description;
		this.condition = condition;
		this.createdAt = createdAt;
		this.updatedAt = updatedAt;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}
	
	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}
	
	public int getIdCategory() {
		return idCategory;
	}

	public void setIdCategory(int idCategory) {
		this.idCategory = idCategory;
	}
	
	public String getSlug() {
		return slug;
	}

	public void setSlug(String slug) {
		this.slug = slug;
	}
	
	public Double getPrice() {
		return price;
	}
	
	public void setPrice(Double price) {
		this.price = price;
	}
	
	public int getDiscount() {
		return discount;
	}

	public void setDiscount(int discount) {
		this.discount = discount;
	}
	
	public String getDescription() {
		return description;
	}
	
	public void setDescription(String description) {
		this.description = description;
	}
	
	public int getCondition() {
		return condition;
	}

	public void setCondition(int condition) {
		this.condition = condition;
	}
	
	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
	public Boolean getSale() {
		return sale;
	}

	public void setSale(Boolean sale) {
		this.sale = sale;
	}
	public Date getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}
	
	public Date getUpdatedAt() {
		return updatedAt;
	}

	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}
}
