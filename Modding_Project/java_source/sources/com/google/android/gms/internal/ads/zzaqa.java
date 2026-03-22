package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzaqa {
    @Nullable
    public final Object zza;
    @Nullable
    public final zzapd zzb;
    @Nullable
    public final zzaqd zzc;
    public boolean zzd;

    private zzaqa(zzaqd zzaqdVar) {
        this.zzd = false;
        this.zza = null;
        this.zzb = null;
        this.zzc = zzaqdVar;
    }

    public static zzaqa zza(zzaqd zzaqdVar) {
        return new zzaqa(zzaqdVar);
    }

    public static zzaqa zzb(@Nullable Object obj, @Nullable zzapd zzapdVar) {
        return new zzaqa(obj, zzapdVar);
    }

    public final boolean zzc() {
        if (this.zzc == null) {
            return true;
        }
        return false;
    }

    private zzaqa(@Nullable Object obj, @Nullable zzapd zzapdVar) {
        this.zzd = false;
        this.zza = obj;
        this.zzb = zzapdVar;
        this.zzc = null;
    }
}
