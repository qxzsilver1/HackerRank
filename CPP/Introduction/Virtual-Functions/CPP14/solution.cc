#include <cmath>
#include <cstdio>
#include <vector>
#include <iostream>
#include <algorithm>
using namespace std;

class Person {
    public:
        string name;
        int age;
    
    virtual void getdata() = 0;
    virtual void putdata() = 0;
};

static int studentID = 0;
static int professorID = 0;

class Professor:public Person {
    public:
        int publications;
        int cur_id;
    
    Professor() {
        ++professorID;
    }
    
    void getdata() {
        cin >> name;
        cin >> age;
        cin >> publications;
        cur_id = professorID;
    }
    
    void putdata() {
        cout << name << " " << age << " " << publications << " " << cur_id << endl;
    }
};

class Student:public Person {
    public:
        int marks[6];
        int cur_id;
    
    Student() {
        ++ studentID;
    }
    
    void getdata() {
        cin >> name;
        cin >> age;
        int i = 0;
        
        for (int i = 0; i < 6; i++)
            cin >> marks[i];
        
        cur_id = studentID;
    }
    
    void putdata() {
        int sum = 0;
        
        for (int i = 0; i < 6; i++)
            sum += marks[i];
        
        cout << name << " " << age << " " << sum << " " << cur_id << endl;        
    }
};

int main(){

    int n, val;
    cin>>n; //The number of objects that is going to be created.
    Person *per[n];

    for(int i = 0;i < n;i++){

        cin>>val;
        if(val == 1){
            // If val is 1 current object is of type Professor
            per[i] = new Professor;

        }
        else per[i] = new Student; // Else the current object is of type Student

        per[i]->getdata(); // Get the data from the user.

    }

    for(int i=0;i<n;i++)
        per[i]->putdata(); // Print the required output for each object.

    return 0;

}
