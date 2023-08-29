package com.example.crudmongo.CRUD.service;

import com.example.crudmongo.CRUD.dto.ProductDto;
import com.example.crudmongo.CRUD.entity.Product;
import com.example.crudmongo.CRUD.repository.ProductRepository;
import com.example.crudmongo.global.exceptions.AttributeException;
import com.example.crudmongo.global.exceptions.ResourceNotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Comparator;
import java.util.List;

@Service

public class ProductService {

    @Autowired
    ProductRepository productRepository;

    public List<Product> getAll(){
        return productRepository.findAll();
    }

    public Product getOne(int id) throws ResourceNotFoundException {
        return productRepository.findById(id)
                .orElseThrow(()-> new ResourceNotFoundException("No encontrado"));

    }

    // Metodo guardar producto
    public Product save(ProductDto dto) throws AttributeException {
        if(productRepository.existsByName(dto.getName()))
            throw new AttributeException("nombrfe ya es uso");
        int id = autoIncrement();
        Product product = new Product(id, dto.getName(), dto.getPrice());
        return productRepository.save(product);

    }
    // Metodo Delete

    public Product delete(int id) throws ResourceNotFoundException {
        Product product = productRepository.findById(id)
                .orElseThrow(()-> new ResourceNotFoundException("No encontrado"));
        productRepository.delete(product);
        return product;

    }

    /* Este código busca un producto por su ID,
    verifica si el nombre actualizado del producto ya está en uso por otro producto,
    actualiza los atributos del producto y luego guarda el producto actualizado en la base de datos.*/

    public Product update(int id, ProductDto dto) throws ResourceNotFoundException, AttributeException {
        Product product = productRepository.findById(id)
                .orElseThrow(()-> new ResourceNotFoundException("No encontrado"));
        if(productRepository.existsByName(dto.getName()) && productRepository.findByName(dto.getName()).get().getId() != id)
            throw new AttributeException("nombre ya es uso");

        product.setName(dto.getName());
        product.setPrice(dto.getPrice());
        return productRepository.save(product);

    }
    // Metodo para crear el id autoincremental

    private int autoIncrement(){
        List<Product> products = productRepository.findAll();
        return products.isEmpty()? 1 :
                products.stream().max(Comparator.comparing(Product::getId)).get().getId() + 1;
    }


}
