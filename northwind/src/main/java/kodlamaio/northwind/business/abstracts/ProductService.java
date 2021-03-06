package kodlamaio.northwind.business.abstracts;

import java.util.List;

import org.springframework.data.jpa.repository.Query;

import kodlamaio.northwind.Entities.concretes.Product;
import kodlamaio.northwind.Entities.dtos.ProductWithCategoryDto;
import kodlamaio.northwind.core.utilities.results.DataResult;
import kodlamaio.northwind.core.utilities.results.Result;

public interface ProductService {
	
	DataResult<List<Product>> getAllSorted();
	
	DataResult<List<Product>> getAll();
	
	DataResult<List<Product>> getAll(int pageNo,int pageSize);
	
	Result add(Product product);
	
    DataResult<Product> getByProductName(String productName);
	
	DataResult<Product> getByProductNameAndCategory (String productName, int categoryId);
	
	DataResult<List<Product>> getByProductNameOrCategory(String productName,int category);
	
	DataResult<List<Product>> getByCategoryIn(List<Integer>categories);
	
	DataResult<List<Product>> getByProductNameContains (String productName);
	
	DataResult<List<Product>> getByProductNameStartsWith (String productName); 
	
	@Query("From Product where productName=:productName and category.categoryId=:categoryId")
	DataResult<List<Product>> getByNameAndCategory (String productName, int categoryId);
	
	DataResult<List<ProductWithCategoryDto>> getProductWithCategoryDetails ();
	
	// springboot kullanımına bak
	
	
}
