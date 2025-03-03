#ifndef FLUTTER_PLUGIN_ZIICHAT_EDITOR_WEB_DESKTOP_PLUGIN_H_
#define FLUTTER_PLUGIN_ZIICHAT_EDITOR_WEB_DESKTOP_PLUGIN_H_

#include <flutter_linux/flutter_linux.h>

G_BEGIN_DECLS

#ifdef FLUTTER_PLUGIN_IMPL
#define FLUTTER_PLUGIN_EXPORT __attribute__((visibility("default")))
#else
#define FLUTTER_PLUGIN_EXPORT
#endif

typedef struct _ZiichatEditorWebDesktopPlugin ZiichatEditorWebDesktopPlugin;
typedef struct {
  GObjectClass parent_class;
} ZiichatEditorWebDesktopPluginClass;

FLUTTER_PLUGIN_EXPORT GType ziichat_editor_web_desktop_plugin_get_type();

FLUTTER_PLUGIN_EXPORT void ziichat_editor_web_desktop_plugin_register_with_registrar(
    FlPluginRegistrar* registrar);

G_END_DECLS

#endif  // FLUTTER_PLUGIN_ZIICHAT_EDITOR_WEB_DESKTOP_PLUGIN_H_
