package com.bumptech.glide.util;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.util.Collection;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class Preconditions {
    @NonNull
    public static <T> T Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable T t, @NonNull String str) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(str);
    }

    @NonNull
    public static <T> T Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable T t) {
        return (T) Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(t, "Argument must not be null");
    }

    @NonNull
    public static <T extends Collection<Y>, Y> T Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull T t) {
        if (!t.isEmpty()) {
            return t;
        }
        throw new IllegalArgumentException("Must not be empty.");
    }

    @NonNull
    public static String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable String str) {
        if (!TextUtils.isEmpty(str)) {
            return str;
        }
        throw new IllegalArgumentException("Must not be null or empty");
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(boolean z, @NonNull String str) {
        if (z) {
            return;
        }
        throw new IllegalArgumentException(str);
    }
}
