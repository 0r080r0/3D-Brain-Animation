# 3D brian animation

# install packages & load libraries
install.packages("threeBrain")
library(threeBrain)

# generate viewer object
subject_code <- "N27"
subject_path <- "~/Downloads/N27"
brain <- freesurfer_brain2(subject_path, subject_code) # issues
print(brain)

# plot the brain in a browser online
brain$plot()

brain <- freesurfer_brain2(
  subject_path, subject_code, 
  surface_types = c('pial', 'smoothwm'), 
  atlas_types = 'aseg')

# refine plot with smoother white matter & more details
brain$plot(
  controllers = list(
    "Voxel Type" = "aseg",
    "Voxel Label" = "4,5,6,7",
    "Surface Type" = "smoothwm",
    "Left Opacity" = 0.4,
    "Overlay Coronal" = TRUE
  ), 
  control_display = FALSE,
  camera_pos = c(0, -500, 0)
)