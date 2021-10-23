module "tfplan-functions" {
    source = "../../common_functions/tfplan-functions/tfplan-functions.sentinel"
}

module "tfstate-functions" {
    source = "../../common_functions/tfstate-functions/tfstate-functions.sentinel"
}

module "tfconfig-functions" {
    source = "../../common_functions/tfconfig-functions/tfconfig-functions.sentinel"
}

module "tfrun-functions" {
    source = "../../common_functions/tfrun-functions/tfrun-functions.sentinel"
}


policy "allowed-resources" {
    source = "./allowed-resources.sentinel"
    enforcement_level = "advisory"
}


policy "prevent-destruction-of-prohibited-resources" {
    source = "./prevent-destruction-of-prohibited-resources.sentinel"
    #enforcement_level = "advisory"
    enforcement_level = "soft-mandatory"
}


policy "require-all-resources-from-private-module-registry" {
    source = "./require-all-resources-from-pmr.sentinel"
    enforcement_level = "advisory"
}
