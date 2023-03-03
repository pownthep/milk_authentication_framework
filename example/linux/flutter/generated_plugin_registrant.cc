//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <milk_authentication_framework/milk_authentication_framework_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) milk_authentication_framework_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "MilkAuthenticationFrameworkPlugin");
  milk_authentication_framework_plugin_register_with_registrar(milk_authentication_framework_registrar);
}
