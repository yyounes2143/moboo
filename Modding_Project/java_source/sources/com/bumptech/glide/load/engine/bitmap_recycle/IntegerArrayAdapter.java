package com.bumptech.glide.load.engine.bitmap_recycle;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class IntegerArrayAdapter implements ArrayAdapterInterface<int[]> {
    @Override // com.bumptech.glide.load.engine.bitmap_recycle.ArrayAdapterInterface
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public int[] newArray(int i) {
        return new int[i];
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.ArrayAdapterInterface
    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww */
    public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int[] iArr) {
        return iArr.length;
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.ArrayAdapterInterface
    public int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return 4;
    }

    @Override // com.bumptech.glide.load.engine.bitmap_recycle.ArrayAdapterInterface
    public String getTag() {
        return "IntegerArrayPool";
    }
}
