package com.Tables;

import javax.persistence.*;
import java.util.Date;
import java.util.Random;

@Entity
@Table(name = "orders")
public class Orders {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "o_id")
    private int id;

    @Column(name = "user_id")
    private Long userId;

    @Column(name = "name", unique = true)
    private String name;

    @Column(name = "number")
    private Number number;

    @Column(name = "email")
    private String email;

    @Enumerated(EnumType.STRING)              // <-- this tells JPA to store enum as a String
    @Column(name = "payment_method", nullable = false)
    private PaymentMethod paymentMethod = PaymentMethod.NONE;  // <-- default

    @Column(name = "address")
    private String address;

    @Column(name = "total_price")
    private double total_price;

    @Column(name = "total_products")
    private int total_products;


    @Column(name = "place_on")
    @Temporal(TemporalType.DATE)
    private Date addedDate;


    public Orders() {
        super();
    }

    public Orders(Long userId, String name, Number number, String email, PaymentMethod paymentMethod, String address, double total_price, int total_products, Date addedDate) {
        super();
        this.id = new Random().nextInt(100000);
        this.userId = userId;
        this.name = name;
        this.number = number;
        this.email = email;
        this.paymentMethod = paymentMethod;
        this.address = address;
        this.total_price = total_price;
        this.total_products = total_products;
        this.addedDate = addedDate;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Number getNumber() {
        return number;
    }

    public void setNumber(Number number) {
        this.number = number;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public PaymentMethod getPaymentMethod() {
        return paymentMethod;
    }

    public void setPaymentMethod(PaymentMethod paymentMethod) {
        this.paymentMethod = paymentMethod;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public double getTotal_price() {
        return total_price;
    }

    public void setTotal_price(double total_price) {
        this.total_price = total_price;
    }

    public int getTotal_products() {
        return total_products;
    }

    public void setTotal_products(int total_products) {
        this.total_products = total_products;
    }

    public Date getAddedDate() {
        return addedDate;
    }

    public void setAddedDate(Date addedDate) {
        this.addedDate = addedDate;
    }
}
