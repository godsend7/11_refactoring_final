package com.model2.mvc.web.product;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.model2.mvc.service.domain.Product;
import com.model2.mvc.service.product.ProductService;

//==> 惑前包府 RestController
@RestController
@RequestMapping("/product/*")
public class ProductRestController {
	
	///Field
	@Autowired
	@Qualifier("productServiceImpl")
	private ProductService productService;
	//setter Method 备泅 臼澜

	public ProductRestController() {
		System.out.println(this.getClass());
	}

	@RequestMapping( value="json/getProduct/{prodNo}", method=RequestMethod.GET )
	public Product getProduct( @PathVariable("prodNo") int prodNo) throws Exception{
		
		System.out.println("/product/json/getProduct : GET");
		
		//Business Logic
		return productService.getProduct(prodNo);
	}
	
	@RequestMapping( value="json/addProduct", method=RequestMethod.POST )
	public Product addProduct( @RequestBody Product product ) throws Exception {
		
		System.out.println("/product/json/addProduct : POST");
		
		System.out.println("product : " + product);
		productService.addProduct(product);
		
		return productService.getProduct(10048);
	}
	
	@RequestMapping( value="json/updateProduct", method=RequestMethod.GET )
	public Product updateProduct( @PathVariable int prodNo ) throws Exception {
		
		System.out.println("/product/json/updateProduct : GET");
		
		return productService.getProduct(prodNo);
	}
	
	@RequestMapping( value="json/updateProduct", method=RequestMethod.POST )
	public Product updateProduct( @RequestBody Product product ) throws Exception {
		
		System.out.println("/product/json/updateProduct : POST");
		
		System.out.println("product : " + product);
		productService.updateProduct(product);
		
		return productService.getProduct(product.getProdNo());
	}
	
}
