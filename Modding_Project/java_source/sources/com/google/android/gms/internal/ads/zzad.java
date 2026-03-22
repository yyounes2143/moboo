package com.google.android.gms.internal.ads;

import android.net.Uri;
import androidx.annotation.Nullable;
import java.util.Collections;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzad {
    @Nullable
    private String zza;
    @Nullable
    private Uri zzb;
    private final zzae zzc = new zzae();
    private final List zzd;
    private final zzfyc zze;
    private final zzai zzf;
    private final zzam zzg;

    public zzad() {
        zzfyc.zzn();
        this.zzd = Collections.EMPTY_LIST;
        this.zze = zzfyc.zzn();
        this.zzf = new zzai();
        this.zzg = zzam.zza;
    }

    public final zzad zza(String str) {
        this.zza = str;
        return this;
    }

    public final zzad zzb(@Nullable Uri uri) {
        this.zzb = uri;
        return this;
    }

    public final zzap zzc() {
        zzak zzakVar;
        Uri uri = this.zzb;
        if (uri != null) {
            zzakVar = new zzak(uri, null, null, null, this.zzd, null, this.zze, null, -9223372036854775807L, null);
        } else {
            zzakVar = null;
        }
        String str = this.zza;
        if (str == null) {
            str = "";
        }
        return new zzap(str, new zzag(this.zzc, null), zzakVar, new zzaj(this.zzf, null), zzat.zza, this.zzg, null);
    }
}
