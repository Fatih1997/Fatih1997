package kodlamaio.northwind.api;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;


import kodlamaio.northwind.Entities.concretes.Product;
import kodlamaio.northwind.Entities.dtos.ProductWithCategoryDto;
import kodlamaio.northwind.business.abstracts.ProductService;
import kodlamaio.northwind.core.utilities.results.DataResult;
import kodlamaio.northwind.core.utilities.results.Result;
import kodlamaio.northwind.core.utilities.results.SuccessDataResult;

@RestController
@RequestMapping("/api/products")
public class productContoller {
	
	
	private ProductService productService;
	
	
	@Autowired
	public productContoller(ProductService productService) {
		super();
		this.productService = productService;
	}


@GetMapping("/getall")
	DataResult<List<Product>> getAll()
	{
		return this.productService.getAll();
		
	}

@PostMapping ("/add")
	public Result add (@RequestBody Product product) {
	
	return this.productService.add(product);
}

@GetMapping("/getByProductName")
public DataResult<Product> getByProductName(@RequestParam String productName){
	return this.productService.getByProductName(productName);
	
}

@GetMapping("/getByProductNameOrCategory")
public DataResult<List<Product>> getByProductNameOrCategory(@RequestParam String productName, @RequestParam int categoryId){
	return this.productService.getByProductNameOrCategory(productName,categoryId);
	
	
}

@GetMapping("/getByProductNameAndCategory")

public DataResult<Product>getByProductNameAndCategory(@RequestParam("productName") String productName, @RequestParam("categoryId") int categoryId){
	return this.productService.getByProductNameAndCategory(productName , categoryId);
}


@GetMapping("/getByProductNameContains")
public DataResult<List<Product>> getByProductNameContains(@RequestParam String productName) {
	return this.productService.getByProductNameContains( productName) ;
	
	
}

@GetMapping("/getAllPage")
public DataResult<List<Product>> getAll(int pageNo, int pageSize){
	
	return this.productService.getAll(pageNo, pageSize);
}

@GetMapping("/getAllAsc")
public DataResult<List<Product>> getAllSorted(){
	return this.productService.getAllSorted();
}

@GetMapping("/getProductWithCategoryDetails")
DataResult<List<ProductWithCategoryDto>> getProductWithCategoryDetails (){
	
	return this.productService.getProductWithCategoryDetails();
}





}

