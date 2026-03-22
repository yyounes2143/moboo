package com.tencent.liteav.videobase.frame;

import com.tencent.liteav.base.annotations.JNINamespace;
/* compiled from: Proguard */
@JNINamespace("liteav::video")
/* loaded from: classes6.dex */
public class MirrorInfo {
    public boolean isHorizontal;
    public boolean isVertical;

    public MirrorInfo() {
        this.isHorizontal = false;
        this.isVertical = false;
    }

    public MirrorInfo(boolean z, boolean z2) {
        this.isHorizontal = z;
        this.isVertical = z2;
    }
}
