package com.company;


import java.util.ArrayList;

// @author Lukas
public class Order  {

    public int orderID;
    public String name;
    public int phoneNumber;
    public String date;
    public int pickupTime;
    private ArrayList<Pizza> pizzas = new ArrayList();

    public Order(int orderID, String date, String name, int phoneNumber) {
        this.orderID = orderID;
        this.name = name;
        this.phoneNumber = phoneNumber;
        this.date = date;

    }

    // @author Magnus
    @Override
    public String toString() {
        return  "orderID: " + orderID +
                "\tname: " + name +
                "\tphoneNumber: " + phoneNumber +
                "\tdate: " + date +
                "\tPickup time: " + pickupTime;
    }

    // @author Oliver
    public int getOrderID() {
        return orderID;
    }

    // @author Aleksander
    public void pizzaArrPrinter(){
        for (Pizza pizza : pizzas) {
            System.out.println("\t"+pizza.toString());
        }
    }

    // @author Lukas
    public void addPizza(Pizza pizza){
        pizzas.add(pizza);
    }

    // @author Magnus
    public int getPizzasLength(){
        return pizzas.size();
    }

    public String getName() {
        return name;
    }

    public int getPhoneNumber() {
        return phoneNumber;
    }

    public Pizza getPizzas(int i) {
        return pizzas.get(i);
    }

    public void setPickupTime(int pickupTime) {
        this.pickupTime = pickupTime;
    }
}
