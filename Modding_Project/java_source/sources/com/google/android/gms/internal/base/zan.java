package com.google.android.gms.internal.base;

import android.os.Build;
import androidx.annotation.ChecksSdkIntAtLeast;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zan {
    @ChecksSdkIntAtLeast(api = 33)
    public static boolean zaa() {
        if (Build.VERSION.SDK_INT >= 33) {
            return true;
        }
        return false;
    }
}
