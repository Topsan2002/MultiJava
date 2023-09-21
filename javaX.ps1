param ($javaVersion, $perm)

switch ($javaVersion) {
	"Java 8" { $env:JAVA_HOME = "C:\Program Files\Java\jdk-1.8" }
}

if ($perm -eq "perm") {
  [Environment]::SetEnvironmentVariable("JAVA_HOME", $env:JAVA_HOME, [System.EnvironmentVariableTarget]::Machine)
}

$env:Path = $env:JAVA_HOME + '\bin;' + $env:Path

Write-Output "$javaVersion activated."
