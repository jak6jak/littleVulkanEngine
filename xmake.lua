-- =========================
-- Project information:
-- =========================
add_rules("mode.debug", "mode.release")

add_requires("glm", "glfw", "tinyobjloader", "vulkan-headers", "vulkan-loader")

target('littlevulkanengine')
    set_kind('binary')
    add_files('src/**.cpp')
    add_headerfiles('src/**.hpp')

    set_languages("cxx20")

    add_packages("glm", "glfw", "tinyobjloader", "vulkan-headers", "vulkan-loader")
    