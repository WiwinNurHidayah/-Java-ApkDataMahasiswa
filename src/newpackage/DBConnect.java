/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package newpackage;
import com.mysql.jdbc.PreparedStatement;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;


/**
 *
 * @author Wiwin Nur Hidayah
 */
public class DBConnect {
  
    private Connection con;
    private Statement st;
    private ResultSet rs;

    public DBConnect() {
        String url = "jdbc:mysql://localhost:3306/";
        String dbName = "mahasiswa";
        String driver = "com.mysql.jdbc.Driver";
        String userName = "root";
        String password = "";
        
        try {
            Class.forName(driver).newInstance();
            con = DriverManager.getConnection(url + dbName, userName, password);
            st = (Statement) con.createStatement();
            System.out.println("Koneksi Sukses");

        } catch (Exception ex) {
            System.out.println("Error: " + ex);
        }
    }

    public int getCountMahasiswa() {
        int rowCount = 0;

        try {
            String q = "select count(*) as jum from data_ptik";
            rs = st.executeQuery(q);
            rs.next();
            rowCount = rs.getInt("jum");

        } catch (Exception ex) {
            System.out.println("Error: " + ex);
        }
        return rowCount;
        
        }

    public Object[][] getDataMahasiswa() {
        Object[][] row = new Object[1000][5];

        try {
            String query = "select * from data_ptik";
            rs = st.executeQuery(query);
            int i = 0;
            while (rs.next()) {
                row[i][0] = rs.getString("nim");
                row[i][1] = rs.getString("nama");
                row[i][2] = rs.getString("jalurMasuk");
                row[i][3] = rs.getString("asalDaerah");
                row[i][4] = rs.getString("noHp");
                i++;
            }

        } catch (Exception ex) {
            System.out.println("Error: " + ex);
        }
        return row;
        
    }

    public void setDataMahasiswa(String nim, String nama, String jalurMasuk, String asalDaerah, String noHp) {

        try {
            String q = "select max(id) as maks from data_ptik";
            rs = st.executeQuery(q);
            rs.next();
            int rowCount = rs.getInt("maks");
            rowCount = rowCount+1;
            String query = " insert into data_ptik (nim, nama, jalurMasuk, asalDaerah, noHp)"
                + " values (?, ?, ?, ?, ?)";

            PreparedStatement preparedStmt = (PreparedStatement) con.prepareStatement(query);
            
            preparedStmt.setInt(1, rowCount);
            preparedStmt.setString(2, nim);
            preparedStmt.setString(3, nama);
            preparedStmt.setString(4, jalurMasuk);
            preparedStmt.setString(5, asalDaerah);
            preparedStmt.setString(6, noHp);
            preparedStmt.setInt(7, 1);
            
            preparedStmt.execute();
        } catch (Exception ex) {
            System.out.println("Error: " + ex);
        }
        
         
    }

    public void deleteMahasiswa(String nm){

        try {
            String query = " delete from data_ptik where nim = ?";
            PreparedStatement preparedStmt = (PreparedStatement) con.prepareStatement(query);
            preparedStmt.setString(1, nm);
            preparedStmt.execute();
            preparedStmt.close();

        } catch (Exception ex) {
            System.out.println("Error: " + ex);
        }
    }

    public void updateMahasiswa(String nama, String jalurMasuk, String asalDaerah, String noHp, String nim) {

        try {

            String query = " update data_ptik set nama = ?, jalurMasuk = ?, asalDaerah = ?, noHp = ? where nim = ?";

            PreparedStatement preparedStmt = (PreparedStatement) con.prepareStatement(query);
            
            preparedStmt.setString(1, nama);
            preparedStmt.setString(2, jalurMasuk);
            preparedStmt.setString(3, asalDaerah);
            preparedStmt.setString(4, noHp);
            preparedStmt.setString(5, nim);
            preparedStmt.execute();
            preparedStmt.close();

        } catch (Exception ex) {
            System.out.println("Error: " + ex);
        }
    }

}
    

    
