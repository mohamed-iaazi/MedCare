package com.medo.doctorrv.dao;

import com.medo.doctorrv.model.Doctor;
import com.medo.doctorrv.model.Patient;
import com.medo.doctorrv.model.User;
import com.medo.doctorrv.utils.ConnectionUtils;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class RegisterDao extends ConnectionUtils {

    public  void  CreateAccount(User user,String specialisation){
        Doctor doctor= (Doctor) user;

        try (PreparedStatement PrsForUser = geConnection().prepareStatement
                ("insert into user (username , email , password , numberPhone,Role)" +
                     " values(?,?,?,?,?)",Statement.RETURN_GENERATED_KEYS );
             PreparedStatement PrsForPatient = geConnection().prepareStatement("insert into patient (userid) values(?)") ;
             PreparedStatement PrsForDoctor= geConnection().prepareStatement("Insert into docotr (userid , specialisation) values(?,?)")


        ) {
            PrsForUser.setString(1, user.getUsername());
            PrsForUser.setString(2, user.getEmail());
            PrsForUser.setString(3, user.getPassword());
            PrsForUser.setInt(4, user.getNumberPhone());
            PrsForUser.setString(5, user.getRole().getType());

            PrsForUser.executeUpdate();

            ResultSet generatedKeys = PrsForUser.getGeneratedKeys();

            if (user.getRole().getType().equals("Doctor")){
                if (generatedKeys.next()) {
                    int userId = generatedKeys.getInt(1);
                    PrsForDoctor.setInt(1, userId);
                    PrsForDoctor.setString(2, specialisation);
                    PrsForDoctor.executeUpdate();
                    System.out.println("UserId: " + userId +"Spea"+specialisation);
                }

            }
            else {
                if (generatedKeys.next()) {
                    int userId = generatedKeys.getInt(1);
                    PrsForPatient.setInt(1, userId);
                    PrsForPatient.executeUpdate();
                    System.out.println("UserId: " + userId);
                }
            }






            } catch (Exception e) {
            throw new RuntimeException(e);
        }

    }
}
