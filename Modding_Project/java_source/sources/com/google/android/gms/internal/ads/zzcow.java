package com.google.android.gms.internal.ads;

import android.view.View;
import androidx.annotation.Nullable;
import java.util.Set;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public class zzcow {
    private final zzcqv zza;
    private final View zzb;
    private final zzfbv zzc;
    @Nullable
    private final zzcfb zzd;

    public zzcow(View view, @Nullable zzcfb zzcfbVar, zzcqv zzcqvVar, zzfbv zzfbvVar) {
        this.zzb = view;
        this.zzd = zzcfbVar;
        this.zza = zzcqvVar;
        this.zzc = zzfbvVar;
    }

    public final View zza() {
        return this.zzb;
    }

    @Nullable
    public final zzcfb zzb() {
        return this.zzd;
    }

    public final zzcqv zzc() {
        return this.zza;
    }

    public zzcxf zzd(Set set) {
        return new zzcxf(set);
    }

    public final zzfbv zze() {
        return this.zzc;
    }
}
