#ifndef FLUTTER_PLUGIN_MILK_AUTHENTICATION_FRAMEWORK_PLUGIN_H_
#define FLUTTER_PLUGIN_MILK_AUTHENTICATION_FRAMEWORK_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace milk_authentication_framework {

class MilkAuthenticationFrameworkPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  MilkAuthenticationFrameworkPlugin();

  virtual ~MilkAuthenticationFrameworkPlugin();

  // Disallow copy and assign.
  MilkAuthenticationFrameworkPlugin(const MilkAuthenticationFrameworkPlugin&) = delete;
  MilkAuthenticationFrameworkPlugin& operator=(const MilkAuthenticationFrameworkPlugin&) = delete;

 private:
  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace milk_authentication_framework

#endif  // FLUTTER_PLUGIN_MILK_AUTHENTICATION_FRAMEWORK_PLUGIN_H_
