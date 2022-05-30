// ignore_for_file: public_member_api_docs, sort_constructors_first
class LinkedList {
  _Node? _head;

  void add(int value) {
    // ignore: prefer_conditional_assignment
    if (_head == null) {
      _head = _getNode(value);
    } else {
      _Node node = _Node(value);
      node.next = _head;
      _head = node;
    }
  }

  void printList() {
    _Node? node = _head;
    while (node != null) {
      print(node.value);
      node = node.next;
    }
  }

  _Node _getNode(int value) {
    return _Node(value);
  }
}

class _Node {
  int value;
  _Node? next;

  _Node(this.value) : next = null;
}
