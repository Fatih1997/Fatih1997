package kodlamaio.northwind.dataAccess.abstracts;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;

import kodlamaio.northwind.Entities.concretes.Product;
import kodlamaio.northwind.Entities.dtos.ProductWithCategoryDto;

public interface ProductDao extends JpaRepository<Product,Integer> {

	Product getByProductName(String productName);
	
	Product getByProductNameAndCategory_CategoryId (String productName, int categoryId);
	
	List<Product> getByProductNameOrCategory_CategoryId(String productName,int categoryId);
	
	List<Product> getByCategoryIn(List<Integer>categories);
	
	List<Product> getByProductNameContains (String productName);
	
	List<Product> getByProductNameStartsWith (String productName); 
	
	@Query("From Product where productName=:productName and categoryId=:categoryId")
	List<Product> getByNameAndCategory (String productName, int categoryId);
	
	@Query("Select new kodlamaio.northwind.Entities.dtos.ProductWithCategoryDto(p.id,p.productName,c.categoryName) From Category c Inner Join c.products p") // category tarafının category produclarını new lenen classla ilişkilendir
	List<ProductWithCategoryDto> getProductWithCategoryDetails ();
	
}

