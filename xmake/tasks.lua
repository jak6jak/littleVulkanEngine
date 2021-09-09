task("shader")
    -- Set the run script
    on_run(function ()
        -- Import parameter option module
        import("core.project.config")
        -- Loading configuration
        config.load()

        -- Get the GLSLC binary path
        glslc_path = config.get("glslc_path")
        if config.get("glslc_path") == "" then
            glslc_path = "/usr/bin/glslc"
            config.set("glslc_path", glslc_path)
            config.save()
        end

        if os.exists(glslc_path) then
            os.execv(glslc_path, { "shaders/simple_shader.vert", "-o", "shaders/simple_shader.vert.spv" })
            os.execv(glslc_path, { "shaders/simple_shader.frag", "-o", "shaders/simple_shader.frag.spv" })
            
            cprint("${green}Shader built successfully!${clear}")
        else
            os.raise(format("${red} GLSLC path doesn't exists: %s", glslc_path))
        end
    end)

    set_menu{
        -- Settings menu usage
        usage = "xmake shader",

        -- Setup menu description
        description = "Build shaders",

        -- Setup menu options
        {}
    }
task_end()