package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzcpe implements zzhfv {
    private final zzhge zza;

    public zzcpe(zzcow zzcowVar, zzhge zzhgeVar) {
        this.zza = zzhgeVar;
    }

    @Override // com.google.android.gms.internal.ads.zzhgk, com.google.android.gms.internal.ads.zzhgj
    public final /* bridge */ /* synthetic */ Object zzb() {
        zzfyh zzn;
        zzcqh zzb = ((zzcqi) this.zza).zzb();
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzmQ)).booleanValue()) {
            zzn = zzfyh.zzo(new zzddq(zzb, zzcaa.zza));
        } else {
            zzn = zzfyh.zzn();
        }
        zzhgd.zzb(zzn);
        return zzn;
    }
}
