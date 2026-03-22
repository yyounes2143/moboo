package com.bumptech.glide.request.target;

import androidx.annotation.NonNull;
import com.bumptech.glide.util.Util;
/* compiled from: Proguard */
@Deprecated
/* loaded from: classes3.dex */
public abstract class SimpleTarget<Z> extends BaseTarget<Z> {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f5136Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f5137Wwwwwwwwwwwwwwwwwwwwwwww;

    public SimpleTarget() {
        this(Integer.MIN_VALUE, Integer.MIN_VALUE);
    }

    @Override // com.bumptech.glide.request.target.Target
    public final void Wwwwwwwwwwwwwwwwwwwwwwwww(@NonNull SizeReadyCallback sizeReadyCallback) {
        if (Util.Wwwwwwwwwwwwww(this.f5137Wwwwwwwwwwwwwwwwwwwwwwww, this.f5136Wwwwwwwwwwwwwwwwwwwwwww)) {
            sizeReadyCallback.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f5137Wwwwwwwwwwwwwwwwwwwwwwww, this.f5136Wwwwwwwwwwwwwwwwwwwwwww);
            return;
        }
        throw new IllegalArgumentException("Width and height must both be > 0 or Target#SIZE_ORIGINAL, but given width: " + this.f5137Wwwwwwwwwwwwwwwwwwwwwwww + " and height: " + this.f5136Wwwwwwwwwwwwwwwwwwwwwww + ", either provide dimensions in the constructor or call override()");
    }

    public SimpleTarget(int i, int i2) {
        this.f5137Wwwwwwwwwwwwwwwwwwwwwwww = i;
        this.f5136Wwwwwwwwwwwwwwwwwwwwwww = i2;
    }

    @Override // com.bumptech.glide.request.target.Target
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull SizeReadyCallback sizeReadyCallback) {
    }
}
