#ifndef FLUTTER_PLUGIN_ZIICHAT_EDITOR_WEB_DESKTOP_PLUGIN_H_
#define FLUTTER_PLUGIN_ZIICHAT_EDITOR_WEB_DESKTOP_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace ziichat_editor_web_desktop {

class ZiichatEditorWebDesktopPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  ZiichatEditorWebDesktopPlugin();

  virtual ~ZiichatEditorWebDesktopPlugin();

  // Disallow copy and assign.
  ZiichatEditorWebDesktopPlugin(const ZiichatEditorWebDesktopPlugin&) = delete;
  ZiichatEditorWebDesktopPlugin& operator=(const ZiichatEditorWebDesktopPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace ziichat_editor_web_desktop

#endif  // FLUTTER_PLUGIN_ZIICHAT_EDITOR_WEB_DESKTOP_PLUGIN_H_
