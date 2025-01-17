project "glm"
	kind "StaticLib"
	language "C++"
    staticruntime "off"

	targetdir ("../../Build/" .. OutputDir .. "/%{prj.name}")
	objdir ("../../Build/Intermediates/" .. OutputDir .. "/%{prj.name}")
	
	includedirs
	{
		"glm",
	}

	files
	{
        "**.hpp"
	}

	filter "system:windows"
		systemversion "latest"
		cppdialect "C++17"

	filter "system:linux"
		pic "On"
		systemversion "latest"
		cppdialect "C++17"

	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

	filter "configurations:Release"
		runtime "Release"
		optimize "on"

    filter "configurations:Dist"
		runtime "Release"
		optimize "on"
        symbols "off"