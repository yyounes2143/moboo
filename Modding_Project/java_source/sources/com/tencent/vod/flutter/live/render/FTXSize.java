package com.tencent.vod.flutter.live.render;
/* compiled from: Proguard */
/* loaded from: classes6.dex */
public class FTXSize {
    public int height;
    public int width;

    public FTXSize() {
    }

    public void swap() {
        int i = this.width;
        this.width = this.height;
        this.height = i;
    }

    public FTXSize(int i, int i2) {
        this.width = i;
        this.height = i2;
    }
}
