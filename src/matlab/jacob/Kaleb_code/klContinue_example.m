for i = 1:20,
    fprintf('Working on session %d of %d...\n',i,20);
    
    if mod(i,2) == 0,
        fprintf('Skipping session %d: it''s even\n',i);
        continue
    end
    fprintf('Pausing on odd numbers...');
    pause(3);
end