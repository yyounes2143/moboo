package com.bumptech.glide.request.target;

import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.request.Request;
import com.bumptech.glide.util.Util;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public abstract class CustomTarget<T> implements Target<T> {
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Request f5102Wwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f5103Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f5104Wwwwwwwwwwwwwwwwwwwwwwwww;

    public CustomTarget() {
        this(Integer.MIN_VALUE, Integer.MIN_VALUE);
    }

    @Override // com.bumptech.glide.request.target.Target
    public final void Wwwwwwwwwwwwwwwwwwwwwwwww(@NonNull SizeReadyCallback sizeReadyCallback) {
        sizeReadyCallback.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f5104Wwwwwwwwwwwwwwwwwwwwwwwww, this.f5103Wwwwwwwwwwwwwwwwwwwwwwww);
    }

    @Override // com.bumptech.glide.request.target.Target
    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Request request) {
        this.f5102Wwwwwwwwwwwwwwwwwwwwwww = request;
    }

    @Override // com.bumptech.glide.request.target.Target
    @Nullable
    public final Request Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f5102Wwwwwwwwwwwwwwwwwwwwwww;
    }

    public CustomTarget(int i, int i2) {
        if (Util.Wwwwwwwwwwwwww(i, i2)) {
            this.f5104Wwwwwwwwwwwwwwwwwwwwwwwww = i;
            this.f5103Wwwwwwwwwwwwwwwwwwwwwwww = i2;
            return;
        }
        throw new IllegalArgumentException("Width and height must both be > 0 or Target#SIZE_ORIGINAL, but given width: " + i + " and height: " + i2);
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public void onDestroy() {
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public void onStart() {
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public void onStop() {
    }

    @Override // com.bumptech.glide.request.target.Target
    public void Wwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Drawable drawable) {
    }

    @Override // com.bumptech.glide.request.target.Target
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Drawable drawable) {
    }

    @Override // com.bumptech.glide.request.target.Target
    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull SizeReadyCallback sizeReadyCallback) {
    }
}
