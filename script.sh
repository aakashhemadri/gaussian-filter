#!/usr/bin/octave -qf
argument_list = argv();
$pathin = argument_list{1};
$pathout = argument_list{2};
$fltr = argument_list{3};
$constraint = str2num(argument_list{4});
disp('Starting function..')
blur($pathin,$pathout,$fltr,$constraint);
disp('Bye Bye');