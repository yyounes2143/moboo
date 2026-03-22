package com.tencent.vod.flutter.live.egl;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public interface EGLHelper<T> {
    void destroy();

    T getContext();

    void makeCurrent();

    boolean swapBuffers();

    void unmakeCurrent();
}
