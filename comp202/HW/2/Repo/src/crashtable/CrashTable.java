package crashtable;

import java.util.Arrays;

public class CrashTable {
    private static final int HASHING_PRIME = 89;
    private static final int MAX_CONFLICTS = 10;
    private static final int INITIAL_TABLE_SIZE = 8;
    private EntryNode[] table;
    private int size;

    private int hash(String key, int limit) {
        var hash = 0;
        var power = 1;
        for (int i = 0; i < key.length(); i++) {
            var c = key.charAt(i);
            hash = (hash + ((int) c) * power) % limit;
            power = (power * HASHING_PRIME) % limit;
        }
        return hash;
    }

    public CrashTable() {
        table = new EntryNode[INITIAL_TABLE_SIZE];
        size = 0;
    }

    private static class EntryNode {
        private final String key;
        private Object value;
        private EntryNode next;

        public EntryNode(String key, Object value, EntryNode next) {
            this.key = key;
            this.value = value;
            this.next = next;
        }

        public String getKey() {
            return key;
        }

        public Object getValue() {
            return value;
        }

        public void setValue(Object value) {
            this.value = value;
        }

        public EntryNode getNext() {
            return next;
        }

        public void setNext(EntryNode next) {
            this.next = next;
        }
    }

    private EntryNode getNode(String key) {
        var hash = hash(key, table.length);
        var node = table[hash];
        if (node == null) return null;
        do {
            if (node.getKey().equals(key)) return node;
            node = node.getNext();
        } while (node != null);
        return null;
    }

    private EntryNode[] toNodeArray() {
        var array = new EntryNode[size];
        var i = 0;
        for (var node : table) {
            while (node != null) {
                array[i++] = node;
                node = node.getNext();
            }
        }
        return array;
    }

	public Object get(String key) {
        var node = getNode(key);
        return node != null ? node.getValue() : null;
	}

	public Object get(String key, Object def) {
        var value = get(key);
        return value != null ? value : def;
	}

    private int getBucketSize(int index) {
        if (table[index] == null) return 0;
        var x = table[index];
        var size = 1;
        while (x.getNext() != null) {
            size++;
            x = x.getNext();
        }
        return size;
    }

	public Object put(String key, Object value, boolean allowResize) {
        var hash = hash(key, table.length);
        var node = getNode(key);
        if (node == null) {
            table[hash] = new EntryNode(key, value, table[hash]);
            size++;
            if (getBucketSize(hash) > MAX_CONFLICTS && allowResize) resize();
            return null;
        }
        var oldValue = node.getValue();
        node.setValue(value);
        return oldValue;
	}

    public Object put(String key, Object value) {
        return put(key, value, true);
    }

	public Object remove(String key) {
        var hash = hash(key, table.length);
        var node = getNode(key);
        if (node == null) return null;
        if (node == table[hash]) {
            table[hash] = node.getNext();
        } else {
            var searchNode = table[hash];
            while (searchNode.getNext() != node) searchNode = searchNode.getNext();
            searchNode.setNext(node.getNext());
        }
        size--;
        return node.getValue();
	}

	public String[] getKeys() {
        return (String[]) Arrays.stream(toNodeArray())
                .map(EntryNode::getKey)
                .toArray();
	}

    public void resize() {
        resize(table.length * 2);
    }

	public void resize(int newSize) {
        var nodes = toNodeArray();
        table = new EntryNode[newSize];
        size = 0;
        for (var node : nodes) {
            put(node.getKey(), node.getValue(), false);
        }
	}

    public int getSize() {
        return size;
    }

    public int getCapacity() {
        return table.length;
    }
}
