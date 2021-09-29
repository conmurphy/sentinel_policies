module "tfplan-functions" {
    source = "../common-functions/tfplan-functions/tfplan-functions.sentinel"
}

module "tfstate-functions" {
    source = "../common-functions/tfstate-functions/tfstate-functions.sentinel"
}

module "tfconfig-functions" {
    source = "../common-functions/tfconfig-functions/tfconfig-functions.sentinel"
}

module "tfrun-functions" {
    source = "../common-functions/tfrun-functions/tfrun-functions.sentinel"
}


policy "allowed-resources" {
    source = "./allowed-resources.sentinel"
    enforcement_level = "advisory"
}


policy "prevent-destruction-of-prohibited-resources" {
    source = "./prevent-destruction-of-prohibited-resources.sentinel"
    enforcement_level = "advisory"
}


policy "restrict-resources-by-module-source" {
    source = "./restrict-resources-by-module-source.sentinel"
    enforcement_level = "advisory"
}
