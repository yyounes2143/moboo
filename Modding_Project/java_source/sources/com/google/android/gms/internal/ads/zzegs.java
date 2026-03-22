package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.Clock;
import java.util.LinkedHashMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzegs implements zzgcu {
    final /* synthetic */ long zza;
    final /* synthetic */ zzfbx zzb;
    final /* synthetic */ zzfbu zzc;
    final /* synthetic */ String zzd;
    final /* synthetic */ zzfjn zze;
    final /* synthetic */ zzfcg zzf;
    final /* synthetic */ zzegu zzg;

    public zzegs(zzegu zzeguVar, long j, zzfbx zzfbxVar, zzfbu zzfbuVar, String str, zzfjn zzfjnVar, zzfcg zzfcgVar) {
        this.zza = j;
        this.zzb = zzfbxVar;
        this.zzc = zzfbuVar;
        this.zzd = str;
        this.zze = zzfjnVar;
        this.zzf = zzfcgVar;
        this.zzg = zzeguVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:60:0x0064 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.zzgcu
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(java.lang.Throwable r14) {
        /*
            Method dump skipped, instructions count: 246
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzegs.zza(java.lang.Throwable):void");
    }

    @Override // com.google.android.gms.internal.ads.zzgcu
    public final void zzb(Object obj) {
        Clock clock;
        boolean z;
        long j;
        boolean z2;
        boolean zzq;
        LinkedHashMap linkedHashMap;
        zzedk zzedkVar;
        LinkedHashMap linkedHashMap2;
        zzegw zzegwVar;
        zzegu zzeguVar = this.zzg;
        clock = zzeguVar.zza;
        long elapsedRealtime = clock.elapsedRealtime() - this.zza;
        synchronized (zzeguVar) {
            try {
                z = zzeguVar.zze;
                if (z) {
                    zzegwVar = zzeguVar.zzb;
                    j = elapsedRealtime;
                    zzegwVar.zza(this.zzb, this.zzc, 0, null, j);
                } else {
                    j = elapsedRealtime;
                }
                z2 = zzeguVar.zzg;
                if (z2) {
                    return;
                }
                zzfbu zzfbuVar = this.zzc;
                zzq = zzeguVar.zzq(zzfbuVar);
                if (zzq) {
                    linkedHashMap2 = zzeguVar.zzd;
                    ((zzegt) linkedHashMap2.get(zzfbuVar)).zzd = j;
                } else {
                    linkedHashMap = zzeguVar.zzd;
                    long j2 = j;
                    j = j2;
                    linkedHashMap.put(zzfbuVar, new zzegt(this.zzd, zzfbuVar.zzaf, 0, j2, null));
                }
                zzedkVar = zzeguVar.zzf;
                zzedkVar.zzg(zzfbuVar, j, null);
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
