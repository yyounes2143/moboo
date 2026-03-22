package com.google.android.gms.internal.ads;

import android.os.SystemClock;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzrd implements zzql {
    final /* synthetic */ zzri zza;

    public /* synthetic */ zzrd(zzri zzriVar, zzrh zzrhVar) {
        this.zza = zzriVar;
    }

    @Override // com.google.android.gms.internal.ads.zzql
    public final void zza(long j) {
        zzdx.zzf("DefaultAudioSink", "Ignoring impossibly large audio latency: " + j);
    }

    @Override // com.google.android.gms.internal.ads.zzql
    public final void zzb(long j) {
        zzqf zzqfVar;
        zzqf zzqfVar2;
        zzqa zzqaVar;
        zzri zzriVar = this.zza;
        zzqfVar = zzriVar.zzo;
        if (zzqfVar != null) {
            zzqfVar2 = zzriVar.zzo;
            zzqaVar = ((zzrm) zzqfVar2).zza.zzc;
            zzqaVar.zzv(j);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzql
    public final void zzc(long j, long j2, long j3, long j4) {
        long zzL;
        long zzM;
        zzri zzriVar = this.zza;
        zzL = zzriVar.zzL();
        zzM = zzriVar.zzM();
        zzdx.zzf("DefaultAudioSink", "Spurious audio timestamp (frame position mismatch): " + j + ", " + j2 + ", " + j3 + ", " + j4 + ", " + zzL + ", " + zzM);
    }

    @Override // com.google.android.gms.internal.ads.zzql
    public final void zzd(long j, long j2, long j3, long j4) {
        long zzL;
        long zzM;
        zzri zzriVar = this.zza;
        zzL = zzriVar.zzL();
        zzM = zzriVar.zzM();
        zzdx.zzf("DefaultAudioSink", "Spurious audio timestamp (system clock mismatch): " + j + ", " + j2 + ", " + j3 + ", " + j4 + ", " + zzL + ", " + zzM);
    }

    @Override // com.google.android.gms.internal.ads.zzql
    public final void zze(int i, long j) {
        zzqf zzqfVar;
        long j2;
        zzqf zzqfVar2;
        zzqa zzqaVar;
        zzri zzriVar = this.zza;
        zzqfVar = zzriVar.zzo;
        if (zzqfVar != null) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            j2 = zzriVar.zzU;
            zzqfVar2 = zzriVar.zzo;
            zzqaVar = ((zzrm) zzqfVar2).zza.zzc;
            zzqaVar.zzx(i, j, elapsedRealtime - j2);
        }
    }
}
