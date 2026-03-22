package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzejw implements zzelg {
    final /* synthetic */ zzejx zza;

    public zzejw(zzejx zzejxVar) {
        this.zza = zzejxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzelg
    public final void zza() {
        zzejx zzejxVar = this.zza;
        synchronized (zzejxVar) {
            zzejxVar.zzi = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzelg
    public final /* bridge */ /* synthetic */ void zzb(Object obj) {
        zzcop zzcopVar;
        zzcop zzcopVar2;
        zzcop zzcopVar3;
        zzejx zzejxVar = this.zza;
        zzcop zzcopVar4 = (zzcop) obj;
        synchronized (zzejxVar) {
            try {
                zzcopVar = zzejxVar.zzi;
                if (zzcopVar != null) {
                    zzcopVar3 = zzejxVar.zzi;
                    zzcopVar3.zzb();
                }
                zzejxVar.zzi = zzcopVar4;
                zzcopVar2 = zzejxVar.zzi;
                zzcopVar2.zzk();
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
