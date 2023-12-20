model; 
set Terminal;
set Flight within (Terminal  cross Terminal); 

param Profit{Flight};
param CostOpening{Terminal};

var Open{Terminal} binary;
var QuantityFlight{Flight} integer >=0;

maximize TotalCost: sum{(i,j) in Flight} Profit[i,j]*QuantityFlight[i,j] - sum{i in Terminal} CostOpening[i]*Open[i];

subject to LimitTerminals:
sum {i in Terminal} Open[i] <= 4;

subject to LimitFlightsC:
sum {(i,j) in Flight} QuantityFlight[i,j] == 10;

subject to LimitFlight1 {(i,j) in Flight}:
QuantityFlight[i,j] <= 4*Open[i];

subject to LimitFlight2 {(i,j) in Flight}:
QuantityFlight[i,j] <= 4*Open[j];

subject to LimitFlightRB1:
QuantityFlight['Rome','Berlin'] <= 3*Open['Rome'];

subject to LimitFlightRB2:
QuantityFlight['Rome','Berlin'] <= 3*Open['Berlin'];

subject to LimitParis:
sum{(i,'Paris') in Flight} QuantityFlight[i,'Paris'] >= 4; 
