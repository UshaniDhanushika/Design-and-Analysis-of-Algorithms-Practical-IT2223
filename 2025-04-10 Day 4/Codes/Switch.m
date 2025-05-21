day = input("Enter thr dsay(1-5) : ");

%if day == 1
%   disp('Monday!');
%elseif day == 2
%   disp('Tuesday!');
%elseif day == 3
%   disp('Wednesday!');
%elseif day == 4
%   disp('Thursday!');
%else
%   disp('Friday!');


switch day

    case 1
        disp('Monday!');
    case 2
        disp('Tuesday!');
    case 3
        disp('Wednesday!');
    case 4
        disp('Thursday!');
    case 5
        disp('Friday!');
    otherwise
        disp('Invalid day!');
end