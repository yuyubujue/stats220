library(magick) #import magick

meme<- image_read("images/frame-4.jpg")   #use image_read()

new_meme <- image_blank(10,164,"yellow")  #use image_blank()



new_meme <- image_append(c(meme,new_meme)) %>%  # use pipe,image_append() and c()
  image_rotate(5) %>%
  image_blur(2, 1) %>%
  image_annotate("You",color = "white",location ='+45+35',size = 30,boxcolor = "pink") %>%
  image_annotate("Life",color = "white",location ='+120+30',size = 30,boxcolor = "pink")

print(new_meme)
image_info(new_meme)
image_write(new_meme,"new_meme.png")