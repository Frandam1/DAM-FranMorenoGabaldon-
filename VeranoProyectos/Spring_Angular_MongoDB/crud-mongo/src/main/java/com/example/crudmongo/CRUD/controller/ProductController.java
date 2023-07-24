package com.example.crudmongo.CRUD.controller;

import com.example.crudmongo.CRUD.dto.ProductDto;
import com.example.crudmongo.CRUD.entity.Product;
import com.example.crudmongo.CRUD.service.ProductService;
import com.example.crudmongo.global.dto.MessageDto;
import com.example.crudmongo.global.exceptions.AttributeException;
import com.example.crudmongo.global.exceptions.ResourceNotFoundException;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/product")
@CrossOrigin(origins = "http://localhost:4200")
public class ProductController {

    @Autowired
    ProductService productService;
    @GetMapping
    public ResponseEntity<List<Product>> getAll(){
        return ResponseEntity.ok(productService.getAll());
    }
    // Obtener un producto

    @GetMapping("/{id}")
    public ResponseEntity<Product> getOne(@PathVariable("id") int id) throws ResourceNotFoundException {
        return ResponseEntity.ok(productService.getOne(id));
    }

    @PostMapping
    public ResponseEntity<MessageDto> save(@Valid @RequestBody ProductDto dto) throws AttributeException {
        Product product = productService.save(dto);
        String message = "El producto" + product.getName() + " a sido guardado";
        return ResponseEntity.ok(new MessageDto(HttpStatus.OK, message));
    }

    //Update

    @PutMapping("/{id}")
    public ResponseEntity<MessageDto> update(@PathVariable("id") int id, @Valid @RequestBody ProductDto dto) throws ResourceNotFoundException, AttributeException {
        Product product = productService.update(id, dto);
        String message = "El producto" + product.getName() + " a sido actualizado";
        return ResponseEntity.ok(new MessageDto(HttpStatus.OK, message));
    }

    //Eliminar

    @DeleteMapping("/{id}")
    public ResponseEntity<MessageDto> delete(@PathVariable("id") int id) throws ResourceNotFoundException {
        Product product = productService.delete(id);
        String message = "El producto" + product.getName() + " a sido eliminado";
        return ResponseEntity.ok(new MessageDto(HttpStatus.OK, message));
    }

}
