package io.flutter.plugins.googlemobileads;

import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import io.flutter.plugin.platform.PlatformView;
import io.flutter.plugin.platform.Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
class FlutterPlatformView implements PlatformView {
    @Nullable
    private View view;

    public FlutterPlatformView(@NonNull View view) {
        this.view = view;
    }

    @Override // io.flutter.plugin.platform.PlatformView
    public void dispose() {
        this.view = null;
    }

    @Override // io.flutter.plugin.platform.PlatformView
    public View getView() {
        return this.view;
    }

    @Override // io.flutter.plugin.platform.PlatformView
    public /* synthetic */ void onFlutterViewAttached(View view) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this, view);
    }

    @Override // io.flutter.plugin.platform.PlatformView
    public /* synthetic */ void onFlutterViewDetached() {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
    }

    @Override // io.flutter.plugin.platform.PlatformView
    public /* synthetic */ void onInputConnectionLocked() {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
    }

    @Override // io.flutter.plugin.platform.PlatformView
    public /* synthetic */ void onInputConnectionUnlocked() {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this);
    }
}
