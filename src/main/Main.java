package main;

import java.net.ServerSocket;
import java.net.Socket;

import networks.PooledConnectionHandler;
 

 

public class Main {

	protected int maxConnections;
	protected int listenPort;
	protected ServerSocket serverSocket;

	public Main(int aListenPort, int maxConnections) {

		listenPort = aListenPort;
		this.maxConnections = maxConnections;
	}

	public void acceptConnections() {
		try {

			@SuppressWarnings("resource")
			ServerSocket server = new ServerSocket(listenPort, maxConnections);
			Socket incomingConnection = null;
			while (true) {
				incomingConnection = server.accept();
				// System.out.println(incomingConnection);
				handleConnection(incomingConnection);
			}
		}
		catch (Exception e) {
			e.printStackTrace();
		}
	}

	protected void handleConnection(Socket connectionToHandle) {

		PooledConnectionHandler.processRequest(connectionToHandle);
	}

	public void setUpHandlers() {
		for (int i = 0; i < maxConnections; i++) {
			PooledConnectionHandler currentHandler = new PooledConnectionHandler();
			new Thread(currentHandler, "Handler " + i).start();
		}
	}
	 
	public static void main(String args[]) {

	
		Main server = new Main(6000, 50);
		server.setUpHandlers();
		server.acceptConnections();
	 
		

	}
}
