#include "include/ziichat_editor_web_desktop/ziichat_editor_web_desktop_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "ziichat_editor_web_desktop_plugin.h"

void ZiichatEditorWebDesktopPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  ziichat_editor_web_desktop::ZiichatEditorWebDesktopPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
