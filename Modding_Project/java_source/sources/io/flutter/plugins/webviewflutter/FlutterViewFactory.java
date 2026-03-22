package io.flutter.plugins.webviewflutter;

import android.content.Context;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.flutter.plugin.common.StandardMessageCodec;
import io.flutter.plugin.platform.PlatformView;
import io.flutter.plugin.platform.PlatformViewFactory;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
class FlutterViewFactory extends PlatformViewFactory {
    private final AndroidWebkitLibraryPigeonInstanceManager instanceManager;

    public FlutterViewFactory(AndroidWebkitLibraryPigeonInstanceManager androidWebkitLibraryPigeonInstanceManager) {
        super(StandardMessageCodec.INSTANCE);
        this.instanceManager = androidWebkitLibraryPigeonInstanceManager;
    }

    @Override // io.flutter.plugin.platform.PlatformViewFactory
    @NonNull
    public PlatformView create(Context context, int i, @Nullable Object obj) {
        Integer num = (Integer) obj;
        if (num != null) {
            final Object androidWebkitLibraryPigeonInstanceManager = this.instanceManager.getInstance(num.intValue());
            if (androidWebkitLibraryPigeonInstanceManager instanceof PlatformView) {
                return (PlatformView) androidWebkitLibraryPigeonInstanceManager;
            }
            if (androidWebkitLibraryPigeonInstanceManager instanceof View) {
                return new PlatformView() { // from class: io.flutter.plugins.webviewflutter.FlutterViewFactory.1
                    @Override // io.flutter.plugin.platform.PlatformView
                    public View getView() {
                        return (View) androidWebkitLibraryPigeonInstanceManager;
                    }

                    @Override // io.flutter.plugin.platform.PlatformView
                    public /* synthetic */ void onFlutterViewAttached(View view) {
                        io.flutter.plugin.platform.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, view);
                    }

                    @Override // io.flutter.plugin.platform.PlatformView
                    public /* synthetic */ void onFlutterViewDetached() {
                        io.flutter.plugin.platform.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
                    }

                    @Override // io.flutter.plugin.platform.PlatformView
                    public /* synthetic */ void onInputConnectionLocked() {
                        io.flutter.plugin.platform.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
                    }

                    @Override // io.flutter.plugin.platform.PlatformView
                    public /* synthetic */ void onInputConnectionUnlocked() {
                        io.flutter.plugin.platform.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
                    }

                    @Override // io.flutter.plugin.platform.PlatformView
                    public void dispose() {
                    }
                };
            }
            throw new IllegalStateException("Unable to find a PlatformView or View instance: " + obj + ", " + androidWebkitLibraryPigeonInstanceManager);
        }
        throw new IllegalStateException("An identifier is required to retrieve a View instance.");
    }
}
