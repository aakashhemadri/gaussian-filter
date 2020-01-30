function blur(pathin, pathout, fltr, constraint)
    pkg load image;
    filename = strsplit(pathin,'.');
    ext = strvcat(filename(2));
    filename = strvcat(filename(1));
    I = imread(pathin);
    imwrite(I,strcat(pathout, filename, '-in.', ext));
    switch fltr
        case 'Gaussian'
            Iblur = imsmooth(I, fltr, constraint);
        case 'Average'
            Iblur = imsmooth(I, fltr, const);
        case 'Disk'
            Iblur = imsmooth(I, fltr, const);
        case 'Median'
            Iblur = imsmooth(I, fltr, constraint);1
        case 'None'
            Iblur = I;x
    end
    imwrite(Iblur,strcat(pathout, filename, '-out.', ext));
endfunction