package model;
// Generated Oct 1, 2019 12:06:46 AM by Hibernate Tools 5.2.12.Final

import java.math.BigDecimal;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import static javax.persistence.GenerationType.IDENTITY;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * Product generated by hbm2java
 */
@Entity
@Table(name = "product", catalog = "foodtown")
public class Product implements java.io.Serializable {

	private Integer pid;
	private String ptitle;
	private String pdesc;
	private String pphoto;
	private BigDecimal pprice;
	private int pcid;

	public Product() {
	}

	public Product(String ptitle, String pdesc, String pphoto, BigDecimal pprice, int pcid) {
		this.ptitle = ptitle;
		this.pdesc = pdesc;
		this.pphoto = pphoto;
		this.pprice = pprice;
		this.pcid = pcid;
	}

	@Id
	@GeneratedValue(strategy = IDENTITY)

	@Column(name = "pid", unique = true, nullable = false)
	public Integer getPid() {
		return this.pid;
	}

	public void setPid(Integer pid) {
		this.pid = pid;
	}

	@Column(name = "ptitle", nullable = false)
	public String getPtitle() {
		return this.ptitle;
	}

	public void setPtitle(String ptitle) {
		this.ptitle = ptitle;
	}

	@Column(name = "pdesc", nullable = false)
	public String getPdesc() {
		return this.pdesc;
	}

	public void setPdesc(String pdesc) {
		this.pdesc = pdesc;
	}

	@Column(name = "pphoto", nullable = false, length = 500)
	public String getPphoto() {
		return this.pphoto;
	}

	public void setPphoto(String pphoto) {
		this.pphoto = pphoto;
	}

	@Column(name = "pprice", nullable = false, precision = 10)
	public BigDecimal getPprice() {
		return this.pprice;
	}

	public void setPprice(BigDecimal pprice) {
		this.pprice = pprice;
	}

	@Column(name = "pcid", nullable = false)
	public int getPcid() {
		return this.pcid;
	}

	public void setPcid(int pcid) {
		this.pcid = pcid;
	}

}