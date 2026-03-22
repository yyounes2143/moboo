package com.bumptech.glide.request.transition;

import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public interface Transition<R> {

    /* compiled from: Proguard */
    /* loaded from: classes3.dex */
    public interface ViewAdapter {
        @Nullable
        Drawable Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();

        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Drawable drawable);

        View getView();
    }

    boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(R r, ViewAdapter viewAdapter);
}
