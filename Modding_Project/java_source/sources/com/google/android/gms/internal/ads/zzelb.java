package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzelb implements zzelg {
    final /* synthetic */ zzelc zza;

    public zzelb(zzelc zzelcVar) {
        this.zza = zzelcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzelg
    public final void zza() {
        synchronized (this.zza) {
        }
    }

    @Override // com.google.android.gms.internal.ads.zzelg
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzcqx zzcqxVar = (zzcqx) obj;
        zzelc zzelcVar = this.zza;
        synchronized (zzelcVar) {
            zzelcVar.zzc = zzcqxVar.zzl();
            zzcqxVar.zzk();
        }
    }
}
