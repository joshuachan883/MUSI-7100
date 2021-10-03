function output = baseline(input,key) %enter a matrix and a string
    pc = pitchClass(input);
    pc = transposeKey(pc,key);
    [row, ~] = size(pc);
    output = zeros(1,row);
    priority = [1,5,4,6,2,3,7];
    for i = 1:row
        singleRow = pc(i,:);
        sum0 = sum(singleRow == 0);
        sum1 = sum(singleRow == 1);
        sum2 = sum(singleRow == 2);
        sum3 = sum(singleRow == 3);
        sum4 = sum(singleRow == 4);
        sum5 = sum(singleRow == 5);        
        sum6 = sum(singleRow == 6);
        sum7 = sum(singleRow == 7);
        sum8 = sum(singleRow == 8);
        sum9 = sum(singleRow == 9);
        sum10 = sum(singleRow == 10);
        sum11 = sum(singleRow == 11);
        countComp = zeros(1,7);  %7 different roman numeral given a key
        countComp(1) = sum0 + sum4 + sum7;
        countComp(2) = sum2 + sum5 +sum9;
        countComp(3) = sum4 + sum7 + sum11;
        countComp(4) = sum0 + sum5 + sum9;
        countComp(5) = sum2 + sum7 + sum11;
        countComp(6) = sum0 + sum4 + sum9;
        countComp(7) = sum11 + sum2 + sum5;
        index = [1 5 4 6 2 3 7];
        sorted = countComp(index);
        [maxCount, place] = max(sorted);
        output(i) = place;        
    end 
end
