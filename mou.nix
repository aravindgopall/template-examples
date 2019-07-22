{ mkDerivation, base, extra, mustache, stdenv }:
mkDerivation {
  pname = "mou";
  version = "0.1.0.0";
  src = ./.;
  isLibrary = false;
  isExecutable = true;
  executableHaskellDepends = [ base mustache extra];
  license = stdenv.lib.licenses.bsd3;
  hydraPlatforms = stdenv.lib.platforms.none;
}
