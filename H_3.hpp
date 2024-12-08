#ifndef H_3_HPP

#define H_3_HPP

#include<string>
using namespace std;


class flower {

public:

int petal_length;

int petal_width;

string colour;

flower();

virtual int cost(){return 0;}

};


class rose : public flower {

string DNA;
public:

string origin;

int cost();


};


class tulip : public  flower {

string DNA;

public:

int cost();


};


#endif