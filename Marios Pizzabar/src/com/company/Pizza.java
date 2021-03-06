package com.company;

// @author Oliver
public class Pizza implements Cloneable {

    public int pizzaNr;
    public String pizzaName;
    public String ingredients;
    public int price;

    public Pizza(int pizzaNr, String pizzaName, String ingredients, int price) {
        this.pizzaNr = pizzaNr;
        this.pizzaName = pizzaName;
        this.ingredients = ingredients;
        this.price = price;
    }

    // @author Aleksander
    @Override
    public String toString() {
        return "Pizza nr. " + pizzaNr +
                "  " +pizzaName +
                "\t \t Ingredients: " + ingredients +
                " \tPrice:" + price + " Kr";
    }


    // @author Lukas
    public Object clone() throws
            CloneNotSupportedException
    {
        return super.clone();
    }

    public int getPizzaNr() {
        return pizzaNr;
    }

    public String getPizzaName() {
        return pizzaName;
    }

    public String getIngredients() {
        return ingredients;
    }

    public int getPrice() {
        return price;
    }
}
