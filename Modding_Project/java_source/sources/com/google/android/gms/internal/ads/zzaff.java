package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.io.IOException;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzaff implements zzadn {
    private final zzek zza;
    private final zzafd zzb;
    private final boolean zzc;
    private final zzakj zzd;
    private int zze;
    private zzadq zzf;
    private zzafg zzg;
    private long zzh;
    private zzafi[] zzi;
    private long zzj;
    @Nullable
    private zzafi zzk;
    private int zzl;
    private long zzm;
    private long zzn;
    private int zzo;
    private boolean zzp;

    @Deprecated
    public zzaff() {
        this(1, zzakj.zza);
    }

    @Nullable
    private final zzafi zzg(int i) {
        zzafi[] zzafiVarArr;
        for (zzafi zzafiVar : this.zzi) {
            if (zzafiVar.zzf(i)) {
                return zzafiVar;
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x002f A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0030  */
    @Override // com.google.android.gms.internal.ads.zzadn
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zzb(com.google.android.gms.internal.ads.zzado r22, com.google.android.gms.internal.ads.zzaej r23) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 906
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzaff.zzb(com.google.android.gms.internal.ads.zzado, com.google.android.gms.internal.ads.zzaej):int");
    }

    @Override // com.google.android.gms.internal.ads.zzadn
    public final /* synthetic */ List zzd() {
        return zzfyc.zzn();
    }

    @Override // com.google.android.gms.internal.ads.zzadn
    public final void zze(zzadq zzadqVar) {
        this.zze = 0;
        if (this.zzc) {
            zzadqVar = new zzakm(zzadqVar, this.zzd);
        }
        this.zzf = zzadqVar;
        this.zzj = -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzadn
    public final void zzf(long j, long j2) {
        this.zzj = -1L;
        this.zzk = null;
        int i = 0;
        for (zzafi zzafiVar : this.zzi) {
            zzafiVar.zze(j);
        }
        if (j == 0) {
            if (this.zzi.length != 0) {
                i = 3;
            }
            this.zze = i;
            return;
        }
        this.zze = 6;
    }

    @Override // com.google.android.gms.internal.ads.zzadn
    public final boolean zzi(zzado zzadoVar) throws IOException {
        zzek zzekVar = this.zza;
        zzadoVar.zzh(zzekVar.zzN(), 0, 12);
        zzekVar.zzL(0);
        if (zzekVar.zzi() != 1179011410) {
            return false;
        }
        zzekVar.zzM(4);
        if (zzekVar.zzi() != 541677121) {
            return false;
        }
        return true;
    }

    public zzaff(int i, zzakj zzakjVar) {
        this.zzd = zzakjVar;
        this.zzc = 1 == (i ^ 1);
        this.zza = new zzek(12);
        this.zzb = new zzafd(null);
        this.zzf = new zzaeh();
        this.zzi = new zzafi[0];
        this.zzm = -1L;
        this.zzn = -1L;
        this.zzl = -1;
        this.zzh = -9223372036854775807L;
    }

    @Override // com.google.android.gms.internal.ads.zzadn
    public final /* synthetic */ zzadn zzc() {
        return this;
    }
}
