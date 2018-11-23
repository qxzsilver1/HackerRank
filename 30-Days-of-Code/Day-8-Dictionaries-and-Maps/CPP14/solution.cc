#include <cmath>
#include <cstdio>
#include <vector>
#include <iostream>
#include <algorithm>
#include <map>
using namespace std;

int main() {
  /* Enter your code here. Read input from STDIN. Print output to STDOUT */
  int n;
  cin >> n;
  cin.ignore();

  map<string, int> myMap;

  string line;
  string key;
  int val;
  vector<string> container;
  string delimiter = " ";

  for (int i = 0; i < n; i++) {
    getline(cin, line);

    // cout << line << endl;

    size_t pos = 0;
    std::string token;
    while ((pos = line.find(delimiter)) != std::string::npos) {
      token = line.substr(0, pos);
      // cout << token << endl;
      container.push_back(token);
      line.erase(0, pos + delimiter.length());
    }
    container.push_back(line);

    // cout << container.size() << endl;

    // cout << "Key : " << container.at(0) << " Value : " << container.at(1) <<
    // endl;

    myMap.insert(pair<string, int>(container[0], stoi(container[1])));

    // cout << "Key : " << container[0] << " Value: " << myMap[container[0]] <<
    // endl;

    vector<string>().swap(container);
  }

  string something;

  while (cin >> something) {
    if (myMap[something])
      cout << something << "=" << myMap[something] << endl;
    else
      printf("Not found\n");
  }

  return 0;
}
