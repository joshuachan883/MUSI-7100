function output = transposeKey(input, key)
    output = input;
    switch key
        case "A" 
            mask =(output < 9) & (output ~= -1);
            output(mask) = output(mask) + 12;
            mask = output ~= -1;
            output(mask) = output(mask) - 9;
        case "A#" 
            mask =(output < 10) & (output ~= -1);
            output(mask) = output(mask) + 12;
            mask = output ~= -1;
            output(mask) = output(mask) - 10;
        case "Bb" 
            mask =(output < 10) & (output ~= -1);
            output(mask) = output(mask) + 12;
            mask = output ~= -1;
            output(mask) = output(mask) - 10;              
        case "B"
            mask =(output < 11) & (output ~= -1);
            output(mask) = output(mask) + 12;
            mask = output ~= -1;
            output(mask) = output(mask) - 11;
        case "C"
            output = input;
        case "C#" 
            mask =(output < 1) & (output ~= -1);
            output(mask) = output(mask) + 12;
            mask = output ~= -1;
            output(mask) = output(mask) - 1;
        case "Db" 
            mask =(output < 1) & (output ~= -1);
            output(mask) = output(mask) + 12;
            mask = output ~= -1;
            output(mask) = output(mask) - 1;
        case "D" 
            mask =(output < 2) & (output ~= -1);
            output(mask) = output(mask) + 12;
            mask = output ~= -1;
            output(mask) = output(mask) - 2;               
        case "D#"
            mask =(output < 3) & (output ~= -1);
            output(mask) = output(mask) + 12;
            mask = output ~= -1;
            output(mask) = output(mask) - 3;
        case "Eb"
            mask =(output < 3) & (output ~= -1);
            output(mask) = output(mask) + 12;
            mask = output ~= -1;
            output(mask) = output(mask) - 3;
        case "E" 
            mask =(output < 4) & (output ~= -1);
            output(mask) = output(mask) + 12;
            mask = output ~= -1;
            output(mask) = output(mask) - 4;
        case "F" 
            mask =(output < 5) & (output ~= -1);
            output(mask) = output(mask) + 12;
            mask = output ~= -1;
            output(mask) = output(mask) - 5;
        case "F#" 
            mask =(output < 6) & (output ~= -1);
            output(mask) = output(mask) + 12;
            mask = output ~= -1;
            output(mask) = output(mask) - 6;               
        case "Gb"
            mask =(output < 6) & (output ~= -1);
            output(mask) = output(mask) + 12;
            mask = output ~= -1;
            output(mask) = output(mask) - 6;
        case "G"
            mask =(output < 7) & (output ~= -1);
            output(mask) = output(mask) + 12;
            mask = output ~= -1;
            output(mask) = output(mask) - 7;
        case "G#"
            mask =(output < 8) & (output ~= -1);
            output(mask) = output(mask) + 12;
            mask = output ~= -1;
            output(mask) = output(mask) - 8;
        case "Ab"
            mask =(output < 8) & (output ~= -1);
            output(mask) = output(mask) + 12;
            mask = output ~= -1;
            output(mask) = output(mask) - 8;
    end   
end