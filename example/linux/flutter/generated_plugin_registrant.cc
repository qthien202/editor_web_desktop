//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <editor_web_desktop/ziichat_editor_web_desktop_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) editor_web_desktop_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "ZiichatEditorWebDesktopPlugin");
  ziichat_editor_web_desktop_plugin_register_with_registrar(editor_web_desktop_registrar);
}
