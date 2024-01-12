package vo;

public class ProductEvent {

	private Product product;
	private Event event;
	
	public ProductEvent() {}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public Event getEnevt() {
		return event;
	}

	public void setEnevt(Event enevt) {
		this.event = enevt;
	}

	@Override
	public String toString() {
		return "ProductEvent [product=" + product + ", enevt=" + event + "]";
	}
	
	
	
	
}
