function output = pitchClass(input)
    output = [];
    [row, column] = size(input);
    input = reshape(input',1,[]);
    while(~isempty(input))
        switch input(1)
            case "A" 
                output = [output 9];
            case "A#" 
                output = [output 10];
            case "Bb" 
                output = [output 10];                
            case "B"
                output = [output 11];
            case "C"
                output = [output 0]; 
            case "C#" 
                output = [output 1];
            case "Db" 
                output = [output 1];
            case "D" 
                output = [output 2];                
            case "D#"
                output = [output 3];
            case "Eb"
                output = [output 3];
            case "E" 
                output = [output 4];
            case "F" 
                output = [output 5];
            case "F#" 
                output = [output 6];                
            case "Gb"
                output = [output 6];
            case "G"
                output = [output 7];
            case "G#"
                output = [output 8];
            case "Ab"
                output = [output 8];
            otherwise
                output = [output -1];
        end
    input = input(2:end);
    end
    output = reshape(output,[column,row]);
    output = output';
end