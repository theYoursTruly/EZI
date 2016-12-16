//This file should not be changed. If you want to add a new module - do it in EZI_modules addon.

class CfgPatches {
    class EZI {
        units[] = {};
        weapons[] = {};
        requiredVersion = 1.00;
        requiredAddons[] = {
            "a3_modules_f",
            "a3_ui_f_curator",
            "a3_data_f_curator",
            "a3_data_f_curator_characters",
            "a3_data_f_curator_eagle",
            "a3_data_f_curator_intel",
            "a3_data_f_curator_misc",
            "a3_data_f_curator_respawn",
            "a3_data_f_curator_virtual",
            "a3_functions_f_curator",
            "a3_language_f_curator",
            "a3_missions_f_curator",
            "a3_modules_f_curator",
            "a3_modules_f_curator_animals",
            "a3_modules_f_curator_cas",
            "a3_modules_f_curator_chemlights",
            "a3_modules_f_curator_curator",
            "a3_modules_f_curator_effects",
            "a3_modules_f_curator_environment",
            "a3_modules_f_curator_flares",
            "a3_modules_f_curator_intel",
            "a3_modules_f_curator_lightning",
            "a3_modules_f_curator_mines",
            "a3_modules_f_curator_misc",
            "a3_modules_f_curator_multiplayer",
            "a3_modules_f_curator_objectives",
            "a3_modules_f_curator_ordnance",
            "a3_modules_f_curator_respawn",
            "a3_modules_f_curator_smokeshells"
        };
        version = 1.0;
        author[] = {"YoursTruly"};
    };
};

class CfgFunctions {
    class EZI {
        class core {
            file = "\EZI\functions";
            class initServer { preInit = 1; };
            class initClient { postInit = 1; };
            class login;
            class logout;
            class onPlayerRespawn;
            class registerObjects;
        };
    };
};
