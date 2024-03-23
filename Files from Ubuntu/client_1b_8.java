import java.io.*;
import java.net.*;

public class client_1b_8 {
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

            System.out.print("m = ");
            BufferedReader reader = new BufferedReader(new InputStreamReader(System.in));
            int m = Integer.parseInt(reader.readLine());

            out.writeShort(m);

	                System.out.print("n = ");
            int n = Integer.parseInt(reader.readLine());
            out.writeShort(n);


            System.out.println("Enter " + m + " numbers for arr1:");
            for (int i = 0; i < m; i++) {
                int num = Integer.parseInt(reader.readLine());
		
		System.out.println("\n");
		System.out.println(i);
                out.writeShort(num);
            }

	
            System.out.println("Enter " + n + " numbers for arr2:");
            for (int i = 0; i < n; i++) {
                int num = Integer.parseInt(reader.readLine());
                out.writeShort(num);
            }

            // Receiving common numbers count and the common numbers
            int k = in.readShort();
		System.out.println(k);
            System.out.println("Common numbers: ");
            for (int i = 0; i < k; i++) {
                int commonNum = in.readShort();
                System.out.print(commonNum + " ");
            }
	    out.close();
	    in.close();
            socket.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}
