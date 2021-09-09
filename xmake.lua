-- =========================
-- Project information:
-- =========================
add_rules("mode.debug", "mode.release")

add_repositories("local-repo xmake/repos")

add_requires("glm", "glfw", "tinyobjloader", "vulkan-loader")

target('littlevulkanengine')
    set_kind('binary')
    add_files('src/**.cpp')
    add_headerfiles('src/**.hpp')

    add_packages("glm", "glfw", "tinyobjloader", "vulkan-loader")
    