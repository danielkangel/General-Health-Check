%%%%%%%%%%%%%%%
%Forward Pass Simple
%%%%%%%%%%%%%%%
#include '../Immunizations.lp'.

%%%%%%%%%%%%%%%
% Patient One Test Case
%%%%%%%%%%%%%%%

% ALWAYS LEAVE THESE FACTS UNCOMMENTED. 
% Later test cases depend on them
meningitis.
polio. 
bcg. 
hepatitis_b. 
rubella.

% Uncomment each query and run the file with
% 'scasp ForwardPass.lp'

%?- vaccinated(A).
%Answer = no.

%%%%%%%%%%%%%%%%

%?- missing_vaccines(A,B).
%Answer = [flu, tetanus, measles]

%%%%%%%%%%%%%%

%%%%%%%%%%%%%%%
%Patient Two Test Case
%%%%%%%%%%%%%%%

%Make sure to uncomment each fact before querying

%flu_shot.   
%measles. 
%tetanus.

% Uncomment each query and run the file with
% 'scasp ForwardPass.lp'

%?- vaccinated(A).
%Answer = yes.
%%%%%%%%%%%%%%%

%?- missing_vaccines(A,B).
%Answer = [].

%%%%%%%%%%%%%%%


#show flu_shot/0.
#show meningitis/0.
#show measles/0.
#show bcg/0.
#show rubella/0.
#show polio/0.
#show hepatitis_b/0.
#show tetanus/0.