package com.google.android.gms.internal.ads;

import android.content.Context;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzeqb implements zzhfv {
    private final zzhge zza;
    private final zzhge zzb;

    public zzeqb(zzhge zzhgeVar, zzhge zzhgeVar2) {
        this.zza = zzhgeVar;
        this.zzb = zzhgeVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzhgk, com.google.android.gms.internal.ads.zzhgj
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzfyh zzn;
        zzeqz zzb = ((zzerb) this.zza).zzb();
        Context zza = ((zzchi) this.zzb).zza();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzlG)).booleanValue()) {
            com.google.android.gms.ads.internal.zzv.zzr();
            if (com.google.android.gms.ads.internal.util.zzs.zzC(zza)) {
                zzn = zzfyh.zzo(zzb);
                zzhgd.zzb(zzn);
                return zzn;
            }
        }
        zzn = zzfyh.zzn();
        zzhgd.zzb(zzn);
        return zzn;
    }
}
