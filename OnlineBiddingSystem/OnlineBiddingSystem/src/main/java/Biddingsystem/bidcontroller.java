package Biddingsystem;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class bidcontroller {
    private static boolean isSuccess;
    private static Connection con = null;
    private static Statement stmt = null;
    private static ResultSet rs = null;

    // Insert bid data into the database
    public static boolean insertData(String fullname, String bidnumber, String date, double price) {
        boolean isSuccess = false;
        PreparedStatement pstmt = null;

        try {
            // DB CONNECTION CALL
            con = DBconnection.getConnection();

            // SQL Query 
            String sql = "INSERT INTO biddingsystem.placeabid (fullname, bidnumber, date, price) VALUES (?, ?, ?, ?)";
            pstmt = con.prepareStatement(sql);
            pstmt.setString(1, fullname);
            pstmt.setString(2, bidnumber);
            pstmt.setString(3, date);
            pstmt.setDouble(4, price);

            int rowsAffected = pstmt.executeUpdate();
            isSuccess = rowsAffected > 0; // Check if insert was successful

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            // Close resources
            try {
                if (pstmt != null) pstmt.close();
                if (con != null) con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return isSuccess;
    }

    // Retrieve bid by ID
    public static List<bidmodel> getByID(int bidId) {
        int convertID = bidId;
        ArrayList<bidmodel> bidList = new ArrayList<>();

        try {
            // DB Connection 
            con = DBconnection.getConnection();

            // SQL query to fetch bid by ID
            String sql = "SELECT * FROM biddingsystem.placeabid WHERE bidId = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, convertID);

            // Execute the query
            rs = ps.executeQuery();

            // Process the result set
            while (rs.next()) {
                int bidId1 = rs.getInt(1);
                String fullname = rs.getString(2);
                String bidnumber = rs.getString(3);
                String date = rs.getString(4);
                double price = rs.getDouble(5);
;

                // Create a BidModel object and add it to the list
                bidmodel bid = new bidmodel(bidId, fullname, bidnumber, date, price);
                bidList.add(bid);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            // Close resources
            try {
                if (rs != null) rs.close();
                if (con != null) con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return bidList;
    }

    // Retrieve all bids
    public static List<bidmodel> getAllBids() {
        ArrayList<bidmodel> bids = new ArrayList<>();

        try {
            // DB Connection 
            con = DBconnection.getConnection();
            stmt = con.createStatement();

            // SQL query to fetch all bids
            String sql = "SELECT * FROM biddingsystem.placeabid";
            rs = stmt.executeQuery(sql);

            // Process the result set
            while (rs.next()) {
                int bidId = rs.getInt(1);
                String fullname = rs.getString(2);
                String bidnumber = rs.getString(3);
                String date = rs.getString(4);
                double price = rs.getDouble(5);


                // Create a BidModel object and add it to the list
                bidmodel bid = new bidmodel(bidId, fullname, bidnumber, date, price);
                bids.add(bid);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            // Close resources
            try {
                if (rs != null) rs.close();
                if (con != null) con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return bids;
    }

    // Update bid data
    public static boolean updateData(int bidId, String fullname, String bidnumber, String date, double price) {
        try {
            // DB Connection
            con = DBconnection.getConnection();

            // SQL query to update the bid by ID
            String sql = "UPDATE biddingsystem.placeabid SET fullname = ?, bidnumber = ?, date = ?, price = ? WHERE bidId = ?";
            PreparedStatement ps = con.prepareStatement(sql);

            // Prepare the statement and bind parameters
            ps.setString(1, fullname);
            ps.setString(2, bidnumber);
            ps.setString(3, date);
            ps.setDouble(4, price);
            ps.setInt(5, bidId);

            // Execute the update query
            int rowsUpdated = ps.executeUpdate();
            isSuccess = (rowsUpdated > 0); // Check if the update was successful

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            // Close resources
            try {
                if (con != null) con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return isSuccess;
    }

    // Delete bid data
    public static boolean deleteData(int bidId) {
    	int convID = bidId;

        
    


        try {
            // DB Connection
            con = DBconnection.getConnection();

            // SQL query to delete the bid by ID
            String sql = "DELETE FROM biddingsystem.placeabid WHERE bidId = ?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, convID);

            int rowsAffected = ps.executeUpdate();
            isSuccess = rowsAffected > 0; // Check if deletion was successful

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            // Close resources
            try {
                if (con != null) con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return isSuccess;
    }



	
	
}
