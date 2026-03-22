package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.Surface;
import androidx.annotation.FloatRange;
import androidx.annotation.Nullable;
import java.util.List;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzabb implements zzach {
    final /* synthetic */ zzabh zza;
    private zzfyc zzb;
    @Nullable
    private zzz zzc;
    private long zzd;

    public zzabb(zzabh zzabhVar, Context context, int i) {
        this.zza = zzabhVar;
        zzeu.zzL(context);
        this.zzb = zzfyc.zzn();
        this.zzd = -9223372036854775807L;
    }

    private static final void zza(zzz zzzVar) {
        zzk zzB;
        zzx zzb = zzzVar.zzb();
        zzB = zzabh.zzB(zzzVar.zzC);
        zzb.zzD(zzB);
        zzb.zzaj();
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzach
    public final boolean zzA(zzz zzzVar) throws zzacg {
        return zzabh.zzz(this.zza, zzzVar, 0);
    }

    @Override // com.google.android.gms.internal.ads.zzach
    public final boolean zzB() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzach
    public final boolean zzC() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzach
    public final boolean zzD(boolean z) {
        boolean zzD;
        zzD = this.zza.zzg.zzD(false);
        return zzD;
    }

    @Override // com.google.android.gms.internal.ads.zzach
    public final Surface zzb() {
        zzdc.zzf(false);
        throw null;
    }

    /* JADX WARN: Incorrect condition in loop: B:8:0x0021 */
    @Override // com.google.android.gms.internal.ads.zzach
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzh() {
        /*
            r11 = this;
            com.google.android.gms.internal.ads.zzabh r0 = r11.zza
            com.google.android.gms.internal.ads.zzeq r1 = com.google.android.gms.internal.ads.zzabh.zzd(r0)
            int r1 = r1.zza()
            if (r1 != 0) goto L10
            com.google.android.gms.internal.ads.zzabh.zzi(r0)
            return
        L10:
            com.google.android.gms.internal.ads.zzeq r1 = new com.google.android.gms.internal.ads.zzeq
            r2 = 10
            r1.<init>(r2)
            r2 = 1
            r3 = r2
        L19:
            com.google.android.gms.internal.ads.zzeq r4 = com.google.android.gms.internal.ads.zzabh.zzd(r0)
            int r4 = r4.zza()
            if (r4 <= 0) goto L4f
            com.google.android.gms.internal.ads.zzeq r4 = com.google.android.gms.internal.ads.zzabh.zzd(r0)
            java.lang.Object r4 = r4.zzb()
            com.google.android.gms.internal.ads.zzabf r4 = (com.google.android.gms.internal.ads.zzabf) r4
            r4.getClass()
            if (r3 == 0) goto L48
            int r3 = r4.zzb
            if (r3 == 0) goto L3d
            if (r3 != r2) goto L39
            goto L3d
        L39:
            com.google.android.gms.internal.ads.zzabh.zzi(r0)
            goto L48
        L3d:
            long r6 = r4.zza
            long r9 = r4.zzc
            com.google.android.gms.internal.ads.zzabf r5 = new com.google.android.gms.internal.ads.zzabf
            r8 = 0
            r5.<init>(r6, r8, r9)
            r4 = r5
        L48:
            long r5 = r4.zzc
            r1.zzd(r5, r4)
            r3 = 0
            goto L19
        L4f:
            com.google.android.gms.internal.ads.zzabh.zzh(r0, r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzabb.zzh():void");
    }

    @Override // com.google.android.gms.internal.ads.zzach
    public final void zzi() {
        this.zza.zzr();
    }

    @Override // com.google.android.gms.internal.ads.zzach
    public final void zzj(boolean z) {
        this.zzd = -9223372036854775807L;
        zzabh.zzj(this.zza, z);
    }

    @Override // com.google.android.gms.internal.ads.zzach
    public final void zzk(boolean z) {
        boolean z2;
        zzabh zzabhVar = this.zza;
        z2 = zzabhVar.zzf;
        if (z2) {
            zzabhVar.zzg.zzk(z);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzach
    public final void zzl(int i, zzz zzzVar, long j, int i2, List list) {
        long j2;
        zzeq zzeqVar;
        zzdc.zzf(false);
        this.zzb = zzfyc.zzl(list);
        this.zzc = zzzVar;
        zzabh zzabhVar = this.zza;
        zzabhVar.zzq = -9223372036854775807L;
        zza(zzzVar);
        long j3 = this.zzd;
        if (j3 == -9223372036854775807L) {
            j2 = 0;
        } else {
            j2 = 1 + j3;
        }
        long j4 = j2;
        zzeqVar = zzabhVar.zzj;
        zzeqVar.zzd(j4, new zzabf(j, i2, j4));
    }

    @Override // com.google.android.gms.internal.ads.zzach
    public final void zzn() {
        this.zza.zzs();
    }

    @Override // com.google.android.gms.internal.ads.zzach
    public final void zzo(long j, long j2) throws zzacg {
        this.zza.zzg.zzo(j, j2);
    }

    @Override // com.google.android.gms.internal.ads.zzach
    public final void zzp(long j) {
        this.zza.zzg.zzp(j);
    }

    @Override // com.google.android.gms.internal.ads.zzach
    public final void zzq(int i) {
        this.zza.zzg.zzq(i);
    }

    @Override // com.google.android.gms.internal.ads.zzach
    public final void zzs(Surface surface, zzel zzelVar) {
        this.zza.zzt(surface, zzelVar);
    }

    @Override // com.google.android.gms.internal.ads.zzach
    public final void zzt(@FloatRange(from = 0.0d, fromInclusive = false) float f) {
        this.zza.zzg.zzt(f);
    }

    @Override // com.google.android.gms.internal.ads.zzach
    public final void zzu(List list) {
        if (!this.zzb.equals(list)) {
            this.zzb = zzfyc.zzl(list);
            zzz zzzVar = this.zzc;
            if (zzzVar != null) {
                zza(zzzVar);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzach
    public final void zzv(zzabi zzabiVar) {
        this.zza.zzg.zzv(zzabiVar);
    }

    @Override // com.google.android.gms.internal.ads.zzach
    public final void zzw() {
        long j;
        long j2;
        zzabh zzabhVar = this.zza;
        zzabhVar.zzq = this.zzd;
        j = zzabhVar.zzp;
        j2 = zzabhVar.zzq;
        if (j >= j2) {
            zzabhVar.zzg.zzw();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzach
    public final void zzx() {
        boolean z;
        zzabh zzabhVar = this.zza;
        z = zzabhVar.zzf;
        if (z) {
            zzabhVar.zzv();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzach
    public final void zzy() {
        boolean z;
        zzabh zzabhVar = this.zza;
        z = zzabhVar.zzf;
        if (z) {
            zzabhVar.zzw();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzach
    public final boolean zzz(long j, zzacf zzacfVar) {
        zzdc.zzf(false);
        if (!zzabh.zzA(this.zza)) {
            return false;
        }
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzach
    public final void zzm() {
    }

    @Override // com.google.android.gms.internal.ads.zzach
    public final void zzr(zzace zzaceVar, Executor executor) {
    }
}
