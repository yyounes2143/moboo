package com.google.android.gms.internal.ads;

import android.os.Bundle;
import androidx.annotation.Nullable;
import androidx.media3.exoplayer.upstream.CmcdConfiguration;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzesj implements zzetu {
    @Nullable
    private final String zza;
    @Nullable
    private final Integer zzb;
    @Nullable
    private final String zzc;
    @Nullable
    private final String zzd;
    @Nullable
    private final String zze;
    @Nullable
    private final String zzf;

    public zzesj(@Nullable String str, @Nullable Integer num, @Nullable String str2, @Nullable String str3, @Nullable String str4, @Nullable String str5) {
        this.zza = str;
        this.zzb = num;
        this.zzc = str2;
        this.zzd = str3;
        this.zze = str4;
        this.zzf = str5;
    }

    @Override // com.google.android.gms.internal.ads.zzetu
    public final /* bridge */ /* synthetic */ void zza(Object obj) {
        Bundle bundle = ((zzcuv) obj).zzb;
        zzfdd.zzc(bundle, "pn", this.zza);
        zzfdd.zzc(bundle, CmcdConfiguration.KEY_DEADLINE, this.zzd);
    }

    @Override // com.google.android.gms.internal.ads.zzetu
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        Bundle bundle = ((zzcuv) obj).zza;
        zzfdd.zzc(bundle, "pn", this.zza);
        Integer num = this.zzb;
        if (num != null) {
            bundle.putInt("vc", num.intValue());
        }
        zzfdd.zzc(bundle, "vnm", this.zzc);
        zzfdd.zzc(bundle, CmcdConfiguration.KEY_DEADLINE, this.zzd);
        zzfdd.zzc(bundle, "ins_pn", this.zze);
        zzfdd.zzc(bundle, "ini_pn", this.zzf);
    }
}
