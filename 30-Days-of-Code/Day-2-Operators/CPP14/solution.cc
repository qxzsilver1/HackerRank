#include <iostream>
#include <iomanip>
#include <limits>
#include <cmath>

using namespace std;

int main() {
    
    double mealCost;
    int tipPercent;
    int taxPercent;

    std::cin >> mealCost;
    std::cin >> tipPercent;
    std::cin >> taxPercent;

    double tip = mealCost * ((double)tipPercent/((double)100));
    double tax = mealCost * ((double)taxPercent/((double)100));
    double totalCost = tip + tax + mealCost;
    
    std::cout << fixed << std::setprecision(0) << "The total meal cost is " << round(totalCost) << " dollars." << endl;

    return 0;
}
