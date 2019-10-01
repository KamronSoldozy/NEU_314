img = imread("el-capitan.png")
imshow(img)
size(img) #reveals its a 360x640x4 matrix, rgb alpha

function partb(str)
    img = imread(str)
    imshow(img)
    r = img[:,:,1]
    g = img[:,:,2]
    b = img[:,:,3]
    return r, g, b;
end
