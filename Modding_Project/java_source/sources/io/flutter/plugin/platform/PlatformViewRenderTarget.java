package io.flutter.plugin.platform;

import android.view.Surface;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public interface PlatformViewRenderTarget {
    int getHeight();

    long getId();

    Surface getSurface();

    int getWidth();

    boolean isReleased();

    void release();

    void resize(int i, int i2);

    void scheduleFrame();
}
