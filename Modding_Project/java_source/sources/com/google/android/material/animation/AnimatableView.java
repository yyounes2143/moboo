package com.google.android.material.animation;

import androidx.annotation.NonNull;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public interface AnimatableView {

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public interface Listener {
        void onAnimationEnd();
    }

    void startAnimation(@NonNull Listener listener);

    void stopAnimation();
}
