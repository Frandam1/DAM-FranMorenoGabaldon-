package com.example.crudmongo.CRUD.dto;

import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotBlank;

// Copiamos la clase Product, pero sin el Id ya que no es necesario. Esta clase va a crear los productos
public class ProductDto {

    @NotBlank(message = "El nombre del producto es olbigatorio")
    private String name;
    @Min(value = 1, message = "Elm precio del producto es obligatorio")
    private int price;

    // Constructor vacio
    public ProductDto(){

    }

    // Constructor+Getters/Setters
    public ProductDto(String name, int price) {

        this.name = name;
        this.price = price;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }
}
