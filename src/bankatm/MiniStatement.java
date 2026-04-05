package bankatm;

import javax.swing.*;
import java.awt.*;
import java.sql.*;
import java.awt.event.*;

public class MiniStatement extends ATMFrame implements ActionListener {

    JTextArea area;
    JButton back;
    String cardno;

    MiniStatement(String cardno) {
        this.cardno = cardno;

        // TEXT AREA (INSIDE SCREEN)
        area = new JTextArea();
        area.setBounds(50, 50, 500, 300);

        area.setBackground(Color.BLACK);
        area.setForeground(Color.GREEN);
        area.setFont(new Font("Monospaced", Font.BOLD, 14));

        screen.add(area);

        // BACK BUTTON (OUTSIDE SCREEN - LEFT SIDE)
        back = UIUtil.sideButton("Back", 20, 250);
        add(back);

        back.addActionListener(this);

        // LOAD DATA
        try {
            Conn c = new Conn();

            ResultSet rs = c.s.executeQuery(
                "SELECT * FROM bank WHERE cardno='" + cardno + "' ORDER BY date DESC LIMIT 10"
            );

            while (rs.next()) {
                area.append(
                        rs.getString("date") + "   "
                      + rs.getString("type") + "   ₹"
                      + rs.getString("amount") + "\n"
                );
            }

        } catch (Exception e) {
          e.printStackTrace();
        }

        setVisible(true); // 🔥 IMPORTANT
    }

    public void actionPerformed(ActionEvent e) {
        if (e.getSource() == back) {
            setVisible(false);
            new Transactions(cardno);
        }
    }
}