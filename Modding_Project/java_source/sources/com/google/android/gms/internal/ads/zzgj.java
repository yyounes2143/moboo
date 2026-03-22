package com.google.android.gms.internal.ads;

import android.net.Uri;
import androidx.annotation.Nullable;
import java.util.Collections;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgj {
    @Nullable
    private Uri zza;
    private Map zzb;
    private long zzc;
    private final long zzd;
    private int zze;

    public /* synthetic */ zzgj(zzgl zzglVar, zzgk zzgkVar) {
        this.zza = zzglVar.zza;
        this.zzb = zzglVar.zzd;
        this.zzc = zzglVar.zze;
        this.zzd = zzglVar.zzf;
        this.zze = zzglVar.zzg;
    }

    public final zzgj zza(int i) {
        this.zze = 6;
        return this;
    }

    public final zzgj zzb(Map map) {
        this.zzb = map;
        return this;
    }

    public final zzgj zzc(long j) {
        this.zzc = j;
        return this;
    }

    public final zzgj zzd(Uri uri) {
        this.zza = uri;
        return this;
    }

    public final zzgl zze() {
        if (this.zza != null) {
            return new zzgl(this.zza, this.zzb, this.zzc, this.zzd, this.zze);
        }
        throw new IllegalStateException("The uri must be set.");
    }

    public zzgj() {
        this.zzb = Collections.EMPTY_MAP;
        this.zzd = -1L;
    }
}
