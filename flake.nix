{
  inputs.flejk.url = "github:esselius/flejk/main";
  inputs.utils.url = "github:numtide/flake-utils";

  outputs = { self, flejk, utils }@inputs:
    utils.lib.eachDefaultSystem (system:
      flejk.lib.evalFlakeModules {
        inherit system;
        config = {
          terraform.stack.stack1 = {
            global = { };
            environments = {
              env1 = { };
            };
            layers = {
              layer1 = { };
            };
          };
        };
      });
}
