package com.bumptech.glide.request.target;

import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.manager.LifecycleListener;
import com.bumptech.glide.request.Request;
import com.bumptech.glide.request.transition.Transition;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public interface Target<R> extends LifecycleListener {
    void Wwwwwwwwwwwwwwwwwwwwwwwww(@NonNull SizeReadyCallback sizeReadyCallback);

    void Wwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Drawable drawable);

    void Wwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Request request);

    void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull R r, @Nullable Transition<? super R> transition);

    void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Drawable drawable);

    void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable Drawable drawable);

    void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull SizeReadyCallback sizeReadyCallback);

    @Nullable
    Request Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
}
