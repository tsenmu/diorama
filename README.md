# About

Diorama is a framework that allows quick prototyping of real-time or
offline computer vision/graphics algorithms.

Typically, prototyping new algorithms requires writing lots of code
that are only orthogonally related to the algorithm. For example, real-time
3D human pose tracking from depth sensors (e.g.: Kinect) typically has
many goals: (1) run the core algorithm as fast as possible, 
(2) render the tracked results using OpenGL or some other graphics library,
(3) Additionally, one may want to load configuration files, have a GUI for
adjusting parameters on the fly, run in headless mode (i.e. no GUI) etc.

In my experience (2) and (3) take a disproportionately large amount of time.
This is frustrating because, as a researcher, I find (1) is the most
exciting part that I want to spend my time on.

Diorama aims to make (2) and (3) less time consuming by providing a
framework that can be reused for different projects and that automates
many of the mundane GUI, OpenGL, config file loading, etc. functionality.

At this stage, the expectation is that Diorama will follow some variant of the
Model-View-Controller/Presenter software design pattern.
Diorama exposes just a methods for you to get started with your project.

```Draw()``` - A separate thread that draws to a OpenGL window
```Step()``` - A separate thread that does the core processing (of algorithm)

# Dependencies

C++11 is used extensively, so please use a compiler that supports all
of its features. It also depends on:

- cmake (2.8+)
- OpenGL
- Qt (4.8.0+, probably not Qt 5)

# Installation

Coming soon...

# Contact

Srinath Sridhar (srinaths@umich.edu)
Max Planck Institute for Informatics
