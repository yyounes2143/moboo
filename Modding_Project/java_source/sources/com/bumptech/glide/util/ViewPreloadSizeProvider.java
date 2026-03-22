package com.bumptech.glide.util;

import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.ListPreloader;
import com.bumptech.glide.request.target.CustomViewTarget;
import com.bumptech.glide.request.target.SizeReadyCallback;
import com.bumptech.glide.request.transition.Transition;
import java.util.Arrays;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public class ViewPreloadSizeProvider<T> implements ListPreloader.PreloadSizeProvider<T>, SizeReadyCallback {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public SizeViewTarget f5214Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int[] f5215Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    @Override // com.bumptech.glide.request.target.SizeReadyCallback
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i, int i2) {
        this.f5215Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new int[]{i, i2};
        this.f5214Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = null;
    }

    @Override // com.bumptech.glide.ListPreloader.PreloadSizeProvider
    @Nullable
    public int[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull T t, int i, int i2) {
        int[] iArr = this.f5215Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (iArr == null) {
            return null;
        }
        return Arrays.copyOf(iArr, iArr.length);
    }

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public static final class SizeViewTarget extends CustomViewTarget<View, Object> {
        @Override // com.bumptech.glide.request.target.CustomViewTarget
        public void Wwwwwwwwwwwwwwwwwwwwwww(@Nullable Drawable drawable) {
        }

        @Override // com.bumptech.glide.request.target.Target
        public void Wwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Drawable drawable) {
        }

        @Override // com.bumptech.glide.request.target.Target
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Object obj, @Nullable Transition<? super Object> transition) {
        }
    }
}
