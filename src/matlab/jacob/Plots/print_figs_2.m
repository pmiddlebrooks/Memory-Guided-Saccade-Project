%function [] = print_figs( )

cd('/Users/elseyjg/Memory-Guided-Saccade-Project/src/matlab/jacob/Plots')

figs = dir('*.fig'); %give me all figures in the current directory
num_figs = length(figs); %give me the total number so I can loop

%loop over all figures, open, and print, and close
for i = 1:num_figs
    
    
    
    fig_name_i = figs(i).name; %give me the name of the ith figure

    open(fig_name_i)
    fig_name_i(end-2:end) = [];
    fig_name_i = [ fig_name_i , 'jpg' ];
    
    print(fig_name_i, '-djpeg')
    
    close()
    
end%for:figures

%end%function end
