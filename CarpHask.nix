{ mkDerivation, ansi-terminal_0_9, base, blaze-html, blaze-markup
, cmark, cmdargs, containers, directory, edit-distance, filepath
, haskeline, HUnit, mtl, parsec, process, split, stdenv, text
}:
mkDerivation {
  pname = "CarpHask";
  version = "0.2.0.0";
  src = ./.;
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    ansi-terminal_0_9 base blaze-html blaze-markup cmark containers
    directory edit-distance filepath haskeline mtl parsec process split
    text
  ];
  executableHaskellDepends = [
    base cmdargs containers directory haskeline parsec process
  ];
  testHaskellDepends = [ base containers HUnit ];
  homepage = "https://github.com/eriksvedang/Carp";
  license = stdenv.lib.licenses.asl20;
}
