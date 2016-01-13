package com.scrumers.entity;

public class User extends AbstractEntity {

    private static final long serialVersionUID = 1L;

    private String login;

    private String passwd;

    private String fname;

    private String Sname;

    private String avatar;

    private String email;

    private String phone;

    private Long actualOrganization;

    private Long actualProduct;

    private Long actualIteration;

    private boolean isFirst;

    public final String getName() {
        return login;
    }

    public final void setName(final String name) {
        this.login = name;
    }

    public final String getPasswd() {
        return passwd;
    }

    public final void setPasswd(final String passwd) {
        this.passwd = passwd;
    }

    @Override
    public final String toString() {
        return "user {id:" + getId() + " name:" + getName() + "}";
    }

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getSname() {
        return Sname;
    }

    public void setSname(String sname) {
        Sname = sname;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public Long getActualOrganization() {
        return actualOrganization;
    }

    public void setActualOrganization(Long actualOrganization) {
        this.actualOrganization = actualOrganization;
    }

    public boolean isFirst() {
        return isFirst;
    }

    public void setFirst(boolean isFirst) {
        this.isFirst = isFirst;
    }

    public Long getActualProduct() {
        return actualProduct;
    }

    public void setActualProduct(Long actualProduct) {
        this.actualProduct = actualProduct;
    }

    public Long getActualIteration() {
        return actualIteration;
    }

    public void setActualIteration(Long actualIteration) {
        this.actualIteration = actualIteration;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }
}
