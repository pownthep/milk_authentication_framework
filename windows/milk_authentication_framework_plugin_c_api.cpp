#include "include/milk_authentication_framework/milk_authentication_framework_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "milk_authentication_framework_plugin.h"

void MilkAuthenticationFrameworkPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  milk_authentication_framework::MilkAuthenticationFrameworkPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
