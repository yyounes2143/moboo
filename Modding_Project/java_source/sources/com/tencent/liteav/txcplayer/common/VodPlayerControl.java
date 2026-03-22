package com.tencent.liteav.txcplayer.common;

import com.tencent.liteav.base.annotations.JNINamespace;
/* compiled from: Proguard */
@JNINamespace("liteav::licence")
/* loaded from: classes6.dex */
public class VodPlayerControl {
    public static native void nativeIncrementCheckCount();

    public static native boolean nativeIsCheckCountLEThreshold();

    public static native void nativeSetLicenseFlexibleValid(boolean z);
}
