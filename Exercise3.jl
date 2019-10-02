img = imread("el-capitan.png")
imshow(img)
size(img) #reveals its a 360x640x4 matrix, rgb alpha

function partb(str)
    img = imread(str)
    imshow(img)
    r = img[:,:,1]
    g = img[:,:,2]
    b = img[:,:,3]
    #println("BUG BUG BUG")
    println("reset with git reset --mixed")
    return r, g, b;
end

r, g, b = partb("el-capitan.png")
image2 = zeros(360, 640, 3)
image2[:,:,1] =g;
image2[:,:,2] =b;
image2[:,:,3] =r;
figure(figsize=[10, 3])
subplot(1, 2, 1);
imshow(img);
axis("off")
title("Original el-capitan")
subplot(1, 2, 2);
imshow(image2);
title("Revised el-captain")
axis("off")
