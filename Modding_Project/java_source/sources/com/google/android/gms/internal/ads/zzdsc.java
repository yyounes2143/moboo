package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.firebase.analytics.FirebaseAnalytics;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzdsc {
    final /* synthetic */ zzdsd zza;
    private final Map zzb = new ConcurrentHashMap();

    @VisibleForTesting
    public zzdsc(zzdsd zzdsdVar) {
        this.zza = zzdsdVar;
    }

    public static /* bridge */ /* synthetic */ zzdsc zza(zzdsc zzdscVar) {
        zzdscVar.zzb.putAll(zzdsd.zzc(zzdscVar.zza));
        return zzdscVar;
    }

    public final zzdsc zzb(String str, @Nullable String str2) {
        if (!TextUtils.isEmpty(str) && !TextUtils.isEmpty(str2)) {
            this.zzb.put(str, str2);
        }
        return this;
    }

    public final zzdsc zzc(zzfbu zzfbuVar) {
        zzb("aai", zzfbuVar.zzw);
        zzb("request_id", zzfbuVar.zzan);
        zzb(FirebaseAnalytics.Param.AD_FORMAT, zzfbu.zza(zzfbuVar.zzb));
        return this;
    }

    public final zzdsc zzd(zzfbx zzfbxVar) {
        zzb("gqi", zzfbxVar.zzb);
        return this;
    }

    public final String zze() {
        return zzdsd.zzb(this.zza).zzb(this.zzb);
    }

    public final void zzi() {
        zzdsd.zzd(this.zza).execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdsb
            @Override // java.lang.Runnable
            public final void run() {
                zzdsd.zzb(r0.zza).zze(zzdsc.this.zzb);
            }
        });
    }

    public final void zzj() {
        zzdsd.zzd(this.zza).execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdrz
            @Override // java.lang.Runnable
            public final void run() {
                zzdsd.zzb(r0.zza).zzg(zzdsc.this.zzb);
            }
        });
    }

    public final void zzk() {
        zzdsd.zzd(this.zza).execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdsa
            @Override // java.lang.Runnable
            public final void run() {
                zzdsd.zzb(r0.zza).zzf(zzdsc.this.zzb);
            }
        });
    }
}
