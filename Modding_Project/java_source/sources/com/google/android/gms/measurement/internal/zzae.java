package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.os.Looper;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzae {
    public zzae(Context context) {
    }

    public static final boolean zza() {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            return true;
        }
        return false;
    }
}
