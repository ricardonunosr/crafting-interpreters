#include <stdio.h>
#include <stdlib.h>

typedef struct Node Node;
struct Node {
    int value;
    Node* next;
    Node* prev;
};

int main()
{
    printf("Hello World!\n");
    Node * root = malloc(sizeof(Node));
    root->value = 0;
    root->next = NULL;
    root->prev = NULL;
    Node* current_node = root;
    for(int i=1; i<10; i++){
        Node* new_node = malloc(sizeof(Node));
        new_node->value = i;
        new_node->next = NULL;
        new_node->prev = current_node;
        current_node->next = new_node;
        // Go next
        current_node = new_node;
    }

    // Print doubly link
    Node * node = root;
    for(int i=0; i<10; i++){
        printf("Value: %d\n", node->value);
        node = node->next;
    }
}