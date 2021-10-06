{
  inputs.flejk.url = "github:esselius/flejk/main";

  outputs = { self, nixpkgs, flejk }@inputs:
    flejk.lib.evalModule { inherit inputs; } {
      terraform.stack.stack1 = {
        global = { };
        environments = {
          env1 = { };
        };
        layers = {
          layer1 = { };
        };
      };

      outputs.overlay = a: b: { };
    };
}
