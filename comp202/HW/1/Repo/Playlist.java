class Playlist
{
	Node head = null;
	Node tail = null;
	int length = 0;

	class Node
	{
		Song data;
		Node next;
		Node prev;
		Node(Song d)
		{
			data = d;
			next = null;
			prev = null;
		}
	}

	public void insertToEnd(Song song) {
		if (song == null) throw new NullPointerException("Null song entry!");
		if (length == 0) {
			init(song);
			return;
		}

		Node node = new Node(song);

		tail.next = node;
		node.prev = tail;
		head.prev = node;
		node.next = head;

		tail = node;

		length++;
	}

	public void insertToIndex(Song song, int index) {
		if (song == null) throw new NullPointerException("Null song entry!");
		if (index < 1 || index > length + 1) return;
		if (index == length + 1) {
			insertToEnd(song);
			return;
		}

		Node node = new Node(song);

		Node insertBefore = getNodeByIndex(index);
		Node insertAfter = insertBefore.prev;

		insertAfter.next = node;
		node.prev = insertAfter;
		insertBefore.prev = node;
		node.next = insertBefore;

		if (index == 1) head = node;

		length++;
	}

	public void removeSong(String songName){
		Node n = findNodeBySongName(songName);
		if (n == null) return;
		if (length == 1) {
			clear();
			return;
		}

		n.next.prev = n.prev;
		n.prev.next = n.next;

		// It cannot be the case that n is both the head and tail
		// The code won't reach this stage if that's the case
		if (n == head) head = n.next;
		else if (n == tail) tail = n.prev;

		length--;
	}

	public void move(String songName, int moveAmount ) {
		Node node = findNodeBySongName(songName);
		if (node == null) return;
		int index = getIndex(node);
		int distanceToHead = index - 1;
		if (distanceToHead < 1) return;
		if (moveAmount > distanceToHead) return;
		removeSong(songName);
		int newIndex = index - moveAmount;
		insertToIndex(node.data, newIndex);
	}

	public void reverseSequence(int start, int end){
		if (start >= end || length == 0) return;
		if (start < 1 || end > length) return;

		int movementsCount = end - start;

		for (int i = 0; i < movementsCount; i++) {
			Node endNode = getNodeByIndex(end);
			int moveAmount = movementsCount - i;
			move(endNode.data.getName(), moveAmount);
		}
	}

	//Your code here if you use helper methods

	// Helper method that initializes the playlist with a song
	// Can only be called if the playlist is empty
	private void init(Song song) {
		if (length != 0) return;

		Node node = new Node(song);
		node.prev = node;
		node.next = node;
		head = node;
		tail = node;

		length = 1;
	}


	private Node findNodeBySongName(String songName) {
		Node n = head;
		for (int i = 0; i < length; i++, n = n.next) {
			if (n.data.getName().equals(songName)) return n;
		}
		return null;
	}

	private int getIndex(Node node) {
		Node c = head;
		for (int i = 1; i <= length; i++, c = c.next) {
			if (c == node) return i;
		}
		return -1;
	}

	private void clear() {
		head = null;
		tail = null;
		length = 0;
	}
	
	private Node getNodeByIndex(int index) {
		Node n = head;
		for (int i = 1; i < index; i++) n = n.next;
		return n;
	}

	public void displayList() {
		Node temp = head;

		if (temp == null){
			System.out.println("Playlist is empty!");
			return;
		}

		while (temp.next != head)
		{
			temp.data.displaySong();
			temp = temp.next;
		}
		temp.data.displaySong();
	}
}
