#!/bin/bash

$(which glslc) shaders/simple_shader.vert -o shaders/simple_shader.vert.spv
$(which glslc) shaders/simple_shader.frag -o shaders/simple_shader.frag.spv
