import java.io.*;
import java.net.*;

public class client_1b_8_3 {
    private static final int MAX_SIZE = 100;

    public static void main(String[] args) {
        if (args.length < 2) {
            System.out.println("Usage: java client_1b_8 <Server IP> <Server Port>");
            return;
        }

        String serverIP = args[0];
        int serverPort = Integer.parseInt(args[1]);

try{        
            Socket socket = new Socket(serverIP, serverPort);
            System.out.println("Connected to server.");

            DataOutputStream out = new DataOutputStream(socket.getOutputStream());
            DataInputStream in = new DataInputStream(socket.getInputStream());

            BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));

            System.out.print("m = ");
            short m = Short.parseShort(reader.readLine());
            out.writeShort(m);

            System.out.print("n = ");
            short n = Short.parseShort(reader.readLine());
            out.writeShort(n);

            System.out.println("Enter " + m + " numbers for arr1:");
            for (int i = 0; i < m; i++) {
                short num = Short.parseShort(reader.readLine());
                out.writeShort(num);
            }

            System.out.println("Enter " + n + " numbers for arr2:");
            for (int i = 0; i < n; i++) {
                short num = Short.parseShort(reader.readLine());
                out.writeShort(num);
            }

          
            short k = in.readShort();
	    System.out.println(k);
	    System.out.println("AJuTOR");
            System.out.println("Common numbers: ");
            for (int i = 0; i < k; i++) {
                short commonNum = in.readShort();
                System.out.print(commonNum + " ");
            }

            // Gracefully close the socket after data exchange is completed
            out.close();
            in.close();
            socket.close();
     }
	catch(IOException e){
	e.printStackTrace();}   
    }
}
