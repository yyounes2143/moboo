package com.google.android.material.color;

import android.os.Build;
import androidx.annotation.Nullable;
import androidx.core.os.BuildCompat;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public final /* synthetic */ class Wwwwwwwwwwwwwwwwwwwwwwwwwwwww {
    @Nullable
    public static ColorResourcesOverride Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        int i = Build.VERSION.SDK_INT;
        if (30 <= i && i <= 33) {
            return ResourcesLoaderColorResourcesOverride.getInstance();
        }
        if (BuildCompat.isAtLeastU()) {
            return ResourcesLoaderColorResourcesOverride.getInstance();
        }
        return null;
    }
}
