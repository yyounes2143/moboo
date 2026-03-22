package com.google.android.engage.audio.datamodel;

import com.google.android.engage.common.datamodel.Image;
import com.google.android.engage.common.datamodel.zzs;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zza {
    private String zza;
    private String zzb;
    private Integer zzc;
    private Long zzd;
    private final zzs zze = new zzs();

    public final zza zza(Image image) {
        this.zze.zza(image);
        return this;
    }

    public final zza zzb(List list) {
        this.zze.zzb(list);
        return this;
    }

    public final zza zzc(String str) {
        this.zzb = str;
        return this;
    }

    public final zza zzd(String str) {
        this.zze.zzc(str);
        return this;
    }

    public final zza zze(long j) {
        this.zzd = Long.valueOf(j);
        return this;
    }

    public final zza zzf(String str) {
        this.zza = str;
        return this;
    }

    public final zza zzg(int i) {
        this.zzc = Integer.valueOf(i);
        return this;
    }
}
