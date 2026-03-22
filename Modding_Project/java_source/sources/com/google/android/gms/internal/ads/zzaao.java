package com.google.android.gms.internal.ads;

import android.view.Surface;
import androidx.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzaao extends zztb {
    public zzaao(Throwable th, @Nullable zztc zztcVar, @Nullable Surface surface) {
        super(th, zztcVar);
        System.identityHashCode(surface);
        if (surface != null) {
            surface.isValid();
        }
    }
}
