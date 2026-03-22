package com.google.android.gms.internal.ads;

import android.view.InputEvent;
import javax.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdpi {
    @Nullable
    private volatile InputEvent zza;

    @Nullable
    public final InputEvent zza() {
        return this.zza;
    }

    public final void zzb(InputEvent inputEvent) {
        this.zza = inputEvent;
    }
}
