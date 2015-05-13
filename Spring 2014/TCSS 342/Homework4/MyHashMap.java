/**
 * Homework 4 MyHashMap class written by Ben Foster
 * TCSS 342 5/20/14
 */

//MyHashMap class creates a hash map.
public class MyHashMap<Key, Value> {

    //lists is a list of nodes where each
    //node is the header node of a singly linked list.
    private Node<Key, Value>[] lists;

    //tempLists is like lists but it is used when
    //rehashing only.
    private Node<Key, Value>[] tempLists;

    //numNodes keeps track of the number of
    //nodes put into the hashmap.
    private int numNodes;

    //no arg constructor creates a hashmap with
    //the number of lists being 16.
    public MyHashMap() {
        this(16);
    }

    //MyHashMap constructor takes in an int
    //and creates a list of nodes the size of the
    //int passed in.
    public MyHashMap(int numLists) {
        System.out.println("Ben Foster - Homework 4");
        numNodes = 0; //initialize numNodes.
        lists = new Node[numLists]; //create list of lists.
    }

    //put() method puts a value mapped to a key in the list of lists by
    //placing the key and value into a node. It returns a boolean only
    //to break out of the method once it adds a node or replaces a value.
    public boolean put(Key key, Value value) {
        //first, hash the key to figure out where to put new node.
        int whichList = myHashCode(key, lists.length);

        //header node is not empty.
        for(Node<Key, Value> p = lists[whichList]; p != null; p = p.next) {
            //if current node contains the same.
            if(p.key.equals(key)) {
                p.value = value;
                return true;
            //if next node is empty and current node is not the same.
            } else if(p.next == null) {
                p.next = new Node<Key, Value>(key, value);
                numNodes++;
                check();
                return true;
            }
        }
        //header node was empty.
        lists[whichList] = new Node<Key, Value>(key, value);
        numNodes++;
        check();
        return false;
    }

    //get() method takes a key and searches through the list to get
    //the value associated with the specific key.
    public Value get(Key key) {
        //figure out which linkedList its in.
        int whichList = myHashCode(key, lists.length);

        //go through each node in the linkedList and find the correct node.
        for(Node<Key, Value> n = lists[whichList]; n != null; n = n.next) {
            if(n.key.equals(key)) {
                return n.value;
            }
        }
        return null;
    }

    //check() method is a helper method for put() that checks
    //whether lists contains greater than two times the number
    //of nodes than the number of linkedLists.
    private void check() {
        //if the size is greater, then rehash
        if(numNodes > lists.length * 2) {
            //all code in the if statement is for rehashing.
            //create a temp list that is twice the size of the
            //original lists.
            tempLists = new Node[lists.length * 2];

            //go through every node in lists and rehash them into tempLists
            for(Node<Key, Value> node : lists) {
                while(node != null) {
                    putDiff(node.key, node.value, tempLists);
                    node = node.next;
                }
            }
            //set lists equal to tempLists.
            lists = tempLists;
        }
    }

    //putDiff is a helper method for rehashing. It is very similar to the
    //put method except it does not check the size and it does not increment the
    //number of nodes since all we're doing is replacing the nodes from one list
    //to another one of greater size.
    private boolean putDiff(Key key, Value value, Node<Key, Value>[] tempList) {
        int whichList = myHashCode(key, tempList.length);

        for(Node<Key, Value> n = tempList[whichList]; n != null; n = n.next) {
            if(n.key.equals(key)) {
                n.value = value;
                return true;
            } else if(n.next == null) {
                n.next = new Node<Key, Value>(key, value);
                return true;
            }
        }
        tempList[whichList] = new Node<Key, Value>(key, value);
        return false;
    }

    //myHashCode() method takes in a key and a length and hashes the key and then mods it
    //by the length size in order to figure out where to put a new mapping.
    private int myHashCode(Key key, int length) { return Math.abs(key.hashCode() % length); }

    //Node Class creates a node where each node has a key
    //and a value that is mapped to that key.
    private static class Node<Key, Value> {
        Node(Key k, Value v) {
            key = k;
            value = v;
        }

        Key key;
        Value value;
        Node<Key, Value> next;
    }
}
