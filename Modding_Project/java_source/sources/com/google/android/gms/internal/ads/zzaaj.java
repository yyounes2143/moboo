package com.google.android.gms.internal.ads;

import androidx.media3.common.MimeTypes;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzaaj {
    final /* synthetic */ zzaal zza;
    private zzz zzb;

    public /* synthetic */ zzaaj(zzaal zzaalVar, zzaak zzaakVar) {
        this.zza = zzaalVar;
    }

    public final void zza(final zzcd zzcdVar) {
        zzx zzxVar = new zzx();
        zzxVar.zzai(zzcdVar.zzb);
        zzxVar.zzM(zzcdVar.zzc);
        zzxVar.zzad(MimeTypes.VIDEO_RAW);
        this.zzb = zzxVar.zzaj();
        zzaal.zzf(this.zza).execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzaai
            @Override // java.lang.Runnable
            public final void run() {
                zzaal.zzd(zzaaj.this.zza).zzd(zzcdVar);
            }
        });
    }

    public final void zzb(long j, long j2, boolean z) {
        if (z) {
            zzaal zzaalVar = this.zza;
            if (zzaal.zza(zzaalVar) != null) {
                zzaal.zzf(zzaalVar).execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzaag
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzaal.zzd(zzaaj.this.zza).zza();
                    }
                });
            }
        }
        zzz zzzVar = this.zzb;
        if (zzzVar == null) {
            zzzVar = new zzx().zzaj();
        }
        zzz zzzVar2 = zzzVar;
        zzaal zzaalVar2 = this.zza;
        zzaal.zzc(zzaalVar2).zzcT(j2, j, zzzVar2, null);
        ((zzacf) zzaal.zze(zzaalVar2).remove()).zza(j);
    }
}
