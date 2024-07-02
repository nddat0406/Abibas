/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import Model.Account;
import Model.Category;
import Model.Color;
import Model.Product;
import Model.Size;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author HP
 */
public class ProductDAO extends DBContext {

    public List<Product> getAllProduct() {
        String sql = "select  p.id, p.name,p.image,p.quantity, p.price,p.description,c.name from Category c inner join Product p on c.id=p.cate_id";
        List<Product> list = new ArrayList<>();
        try {
            PreparedStatement pre = connection.prepareStatement(sql);
            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
                Category cate = new Category(rs.getString(7));
                list.add(new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4),
                        rs.getFloat(5), rs.getString(6), cate));
            }
            return list;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public List<Product> getTop10NewProduct() {
        List<Product> list = new ArrayList<>();
        String sql = "SELECT TOP 10 p.id , p.name,p.image,  p.quantity, p.price, p.description FROM product p ORDER BY NEWID()";
        try {
            PreparedStatement pre = connection.prepareStatement(sql);
            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4),
                        rs.getFloat(5), rs.getString(6)));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Product> getTrendProduct() {
        List<Product> list = new ArrayList<>();
        String sql = "";
        try {
            PreparedStatement pre = connection.prepareStatement(sql);
            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4),
                        rs.getFloat(5), rs.getString(6)));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public Product getProductByID(int id) {
        String sql = "select p.*, c.name from Category c inner join Product p on p.cate_id=c.id where p.id=?";
        try {
            PreparedStatement pre = connection.prepareStatement(sql);
            pre.setInt(1, id);
            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
                Category cate = new Category(rs.getInt(7), rs.getString(8));
                return new Product(rs.getInt(1), rs.getString(2), rs.getString(3),
                        rs.getInt(4), rs.getFloat(5), rs.getString(6), cate);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public List<Size> getSizeByID(int id) {
        List<Size> list = new ArrayList<>();
        String sql = "select * from product_size where product_id=?";
        try {
            PreparedStatement pre = connection.prepareStatement(sql);
            pre.setInt(1, id);
            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
                list.add(new Size(rs.getInt(1), rs.getString(2)));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Color> getColorByID(int id) {
        List<Color> list = new ArrayList<>();
        String sql = "select * from product_color where product_id=?";
        try {
            PreparedStatement pre = connection.prepareStatement(sql);
            pre.setInt(1, id);
            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
                list.add(new Color(rs.getInt(1), rs.getString(2)));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<String> getAllColor() {
        List<String> list = new ArrayList<>();
        String sql = "select distinct color from product_color";
        try {
            PreparedStatement pre = connection.prepareStatement(sql);
            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
                list.add(rs.getString(1));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Product> getProductByCategory(int category_id) {
        List<Product> list = new ArrayList<>();
        String sql = "select p.*,c.name from Product p inner join Category c on p.cate_id=c.id where c.id=?";
        try {
            PreparedStatement pre = connection.prepareStatement(sql);
            pre.setInt(1, category_id);
            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
                Category c = new Category(rs.getInt(7), rs.getString(8));
                list.add(new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4),
                        rs.getFloat(5), rs.getString(6), c));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Category> getAllCategory() {
        String sql = "select c.id,c.name from Category c";
        List<Category> list = new ArrayList<>();
        try {
            PreparedStatement pre = connection.prepareStatement(sql);
            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
                list.add(new Category(rs.getInt(1), rs.getString(2)));
            }
            return list;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public List<Product> getListByPage(List<Product> list,
            int start, int end) {
        List<Product> arr = new ArrayList<>();
        for (int i = start; i < end; i++) {
            arr.add(list.get(i));
        }
        return arr;
    }

    public List<Product> sortListProduct(List<Product> list,
            String sortBy) {
        if (sortBy.equals("default")) {
            list.sort((Product o1, Product o2) -> Integer.compare(o2.getProductID(), o1.getProductID()));
        }
        if (sortBy.equals("nameAZ")) {
            list.sort((Product o1, Product o2) -> o1.getProductName().compareTo(o2.getProductName()));
        }
        if (sortBy.equals("nameZA")) {
            list.sort((Product o1, Product o2) -> -(o1.getProductName().compareTo(o2.getProductName())));
        }
        if (sortBy.equals("priceAcs")) {
            list.sort((Product o1, Product o2) -> Float.compare(o1.getProductPriceFloat(), o2.getProductPriceFloat()));
        }
        if (sortBy.equals("priceDec")) {
            list.sort((Product o1, Product o2) -> -Float.compare(o1.getProductPriceFloat(), o2.getProductPriceFloat()));
        }
        return list;
    }

    public List<Product> getProductsByFilter(String searchKey, int cateID, float minPrice, float maxPrice, String sizeRaw, String colorRaw) {
        StringBuilder sql = new StringBuilder("""
                                              SELECT distinct p.*,c.name as cateName
                                              FROM Product p  
                                              inner join 
                                              Category c
                                              on p.cate_id=c.id
                                              inner join
                                              product_size pz 
                                              on p.id = pz.product_id
                                              inner join product_color pc
                                              on pc.product_id=p.id  
                                              WHERE 1=1 """);
        List<Product> list = new ArrayList<>();
        boolean hasCondition = false;
        // Add conditions to the SQL query
        if (searchKey != null) {
            sql.append(" AND LOWER(p.name) LIKE ?");
            hasCondition = true;
        }
        if (cateID > 0) {
            sql.append(" AND c.id = ?");
            hasCondition = true;
        }
        if (minPrice >= 0) {
            sql.append(" AND  p.price >= ?");
            hasCondition = true;
        }
        if (maxPrice >= 0) {
            sql.append(" AND  p.price <= ?");
            hasCondition = true;
        }
        String[] size = new String[]{};
        String[] color = new String[]{};
        if (sizeRaw != null && !sizeRaw.isEmpty()) {
            size = sizeRaw.split(",");
            if (size != null && size.length > 0) {
                sql.append(" AND  pz.size IN (");
                for (int i = 0; i < size.length; i++) {
                    sql.append("?");
                    if (i < size.length - 1) {
                        sql.append(", ");
                    }
                }
                sql.append(")");
            }
            hasCondition = true;
        }
        if (colorRaw != null && !colorRaw.isEmpty()) {
            color = colorRaw.split(",");
            if (color != null && color.length > 0) {
                sql.append(" AND pc.color IN (");
                for (int i = 0; i < color.length; i++) {
                    sql.append("?");
                    if (i < color.length - 1) {
                        sql.append(", ");
                    }
                }
                sql.append(")");
            }
            hasCondition = true;
        }
        if (!hasCondition) {
            sql.append(" AND 1=0");
        }
        try {
            PreparedStatement pre = connection.prepareStatement(sql.toString());
            // Set parameters based on the conditions
            int paramIndex = 1;
            if (searchKey != null) {
                pre.setString(paramIndex++, "%" + searchKey.toLowerCase() + "%");
            }
            if (cateID > 0) {
                pre.setInt(paramIndex++, cateID);
            }
            if (minPrice >= 0) {
                pre.setFloat(paramIndex++, minPrice);
            }
            if (maxPrice >= 0) {
                pre.setFloat(paramIndex++, maxPrice);
            }
            if (size != null && size.length > 0) {
                for (String s : size) {
                    pre.setString(paramIndex++, s);
                }
            }
            if (color != null && color.length > 0) {
                for (String c : color) {
                    pre.setString(paramIndex++, c);
                }
            }
            ResultSet rs = pre.executeQuery();
            while (rs.next()) {
                Category cate = new Category(rs.getString(7));
                list.add(new Product(rs.getInt(1), rs.getString(2), rs.getString(3), rs.getInt(4),
                        rs.getFloat(5), rs.getString(6), cate));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        System.out.println(sql);
        return list;
    }
}
