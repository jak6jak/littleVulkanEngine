add_requires("glm", "glfw", "tinyobjloader")

target('littlevulkanengine')
    set_kind('binary')
    add_files('src/**.cpp')
    add_headerfiles('src/**.hpp')

    add_packages("glm", "glfw", "tinyobjloader")

    add_syslinks("vulkan")
    