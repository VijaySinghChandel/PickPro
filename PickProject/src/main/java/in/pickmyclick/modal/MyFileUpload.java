package in.pickmyclick.modal;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.multipart.MultipartFile;

public class MyFileUpload {

	private String pickName;

	private String pickSize;
    private int quantity;
	private String paperType;
	private String specialInstraction;
	private MultipartFile file;
	
	@Autowired
	private ShippingAddress shippingAddress;
	
	public ShippingAddress getShippingAddress() {
		return shippingAddress;
	}
	public void setShippingAddress(ShippingAddress shippingAddress) {
		this.shippingAddress = shippingAddress;
	}
	
	public String getPickName() {
		return pickName;
	}
	public void setPickName(String pickName) {
		this.pickName = pickName;
	}
	public String getPickSize() {
		return pickSize;
	}
	public void setPickSize(String pickSize) {
		this.pickSize = pickSize;
	}
	
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public String getPaperType() {
		return paperType;
	}
	public void setPaperType(String paperType) {
		this.paperType = paperType;
	}
	public String getSpecialInstraction() {
		return specialInstraction;
	}
	public void setSpecialInstraction(String specialInstraction) {
		this.specialInstraction = specialInstraction;
	}
	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		this.file = file;
	}
}
