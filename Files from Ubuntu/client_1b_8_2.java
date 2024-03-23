import java.io.*;
import java.net.*;

public class client_1b_8_2 {
    private static final int MAX_SIZE = 100;

    public static void main(String[] args) {
        if (args.length < 2) {
            System.out.println("Usage: java client_1b_8 <Server IP> <Server Port>");
            return;
        }

        String serverIP = args[0];
        int serverPort = Integer.parseInt(args[1]);

        try {
            Socket socket = new Socket(serverIP, serverPort);
            System.out.println("Connected to server.");

            DataOutputStream out = new DataOutputStream(socket.getOutputStream());
            DataInputStream in = new DataInputStream(socket.getInputStream());

            BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));

            System.out.print("m = ");
            int m = Integer.parseInt(reader.readLine());
            out.writeShort((short) m);

            System.out.print("n = ");
            int n = Integer.parseInt(reader.readLine());
            out.writeShort((short) n);

            System.out.println("Enter " + m + " numbers for arr1:");
            for (int i = 0; i < m; i++) {
                int num = Integer.parseInt(reader.readLine());
                out.writeShort((short) num);
            }

            System.out.println("Enter " + n + " numbers for arr2:");
            for (int i = 0; i < n; i++) {
                int num = Integer.parseInt(reader.readLine());
                out.writeShort((short) num);
            }

            // Receive and display common numbers count and the common numbers
            int k = in.readShort();
            System.out.println("Common numbers: ");
            for (int i = 0; i < k; i++) {
                int commonNum = in.readShort();
                System.out.print(commonNum + " ");
            }

            // Gracefully close the socket after data exchange is completed
            out.close();
            in.close();
            socket.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
