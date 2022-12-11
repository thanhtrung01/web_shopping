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
@Table(name="order")
public class Order {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id")
	private int id;
	
	@Column(name = "user_id")
	private String userId;
	
	@Column(name = "product_id")
	private String productId;
	
	/*
	 * @ManyToOne
	 * 
	 * @JoinColumn(name="user_id") private User user;
	 */
	
	/*
	 * @OneToOne(mappedBy="order") private Product product;
	 */
	
	@Column(name = "quantity")
	private String quantity;
	
	public Order() {}
	
	public Order(int id, String quantity) {
		super();
		this.id = id;
		this.quantity = quantity;
	}
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}
	
	/*
	 * public Set<Product> getProduct() { return product ; }
	 */
	
	public String getQuantity() {
		return quantity;
	}

	public void setQuantity(String quantity) {
		this.quantity = quantity;
	}
}
