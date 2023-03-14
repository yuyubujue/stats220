library(magick) #import magick

f1 <- image_read("images/frame-1.jpg") #read frames
f2 <- image_read("images/frame-2.jpg")
f3 <- image_read("images/frame-3.jpg")
f4 <- image_read("images/frame-4.jpg")
f5 <- image_read("images/frame-5.jpg")
f6 <- image_read("images/frame-6.jpg")
gif <- image_animate(c(f1,f2,f3,f4,f5,f6)) #use image_animate to create a 6-frame gif

print(gif)
image_write(gif, "my_animation.gif") #save my gif