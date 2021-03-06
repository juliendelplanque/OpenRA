if (!(Test-Path "nuget.exe"))
{
	echo "Fetching NuGet."
	Invoke-WebRequest "http://nuget.org/nuget.exe" -OutFile "nuget.exe"
}

if (!(Test-Path "StyleCop.dll"))
{
	echo "Fetching StyleCop files from NuGet."
	./nuget.exe install StyleCop.MSBuild -Version 4.7.49.0
	cp StyleCop.MSBuild.4.7.49.0/tools/StyleCop*.dll .
	rmdir StyleCop.MSBuild.4.7.49.0 -Recurse
}

if (!(Test-Path "ICSharpCode.SharpZipLib.dll"))
{
	echo "Fetching ICSharpCode.SharpZipLib from NuGet."
	./nuget.exe install SharpZipLib -Version 0.86.0
	cp SharpZipLib.0.86.0/lib/20/ICSharpCode.SharpZipLib.dll .
	rmdir SharpZipLib.0.86.0 -Recurse
}

if (!(Test-Path "MaxMind.GeoIP2.dll"))
{
	echo "Fetching MaxMind.GeoIP2 from NuGet."
	./nuget.exe install MaxMind.GeoIP2 -Version 2.1.0
	cp MaxMind.Db.1.0.0.0/lib/net40/MaxMind.Db.* .
	rmdir MaxMind.Db.1.0.0.0 -Recurse
	cp MaxMind.GeoIP2.2.1.0.0/lib/net40/MaxMind.GeoIP2* .
	rmdir MaxMind.GeoIP2.2.1.0.0 -Recurse
	cp Newtonsoft.Json.6.0.5/lib/net40/Newtonsoft.Json* .
	rmdir Newtonsoft.Json.6.0.5 -Recurse
	cp RestSharp.105.0.0/lib/net4-client/RestSharp* .
	rmdir RestSharp.105.0.0 -Recurse
}

if (!(Test-Path "SharpFont.dll"))
{
	echo "Fetching SharpFont from NuGet."
	./nuget.exe install SharpFont -Version 2.5.3
	cp SharpFont.2.5.3.0/lib/net20/SharpFont* .
	cp SharpFont.2.5.3.0/Content/SharpFont.dll.config .
	cp SharpFont.2.5.3.0/Content/freetype6.dll ./windows/
	rmdir SharpFont.2.5.3.0 -Recurse
}

if (!(Test-Path "nunit.framework.dll"))
{
	echo "Fetching NUnit from NuGet."
	./nuget.exe install NUnit -Version 2.6.4
	cp NUnit.2.6.4/lib/nunit.framework* .
	rmdir NUnit.2.6.4 -Recurse
}

if (!(Test-Path "windows/SDL2.dll"))
{
	echo "Fetching SDL2 from NuGet."
	./nuget.exe install sdl2 -Version 2.0.3
	cp sdl2.redist.2.0.3/build/native/bin/Win32/dynamic/SDL2.dll ./windows/
	rmdir sdl2.2.0.3 -Recurse
	rmdir sdl2.redist.2.0.3 -Recurse
}

if (!(Test-Path "Mono.Nat.dll"))
{
	echo "Fetching Mono.Nat from NuGet."
	./nuget.exe install Mono.Nat -Version 1.2.21
	cp Mono.Nat.1.2.21.0/lib/net40/Mono.Nat.dll .
	rmdir  Mono.Nat.1.2.21.0 -Recurse
}