package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.io.EOFException;
import java.io.IOException;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzahw implements zzadn {
    private final zzek zza;
    private final zzaef zzb;
    private final zzaeb zzc;
    private final zzaed zzd;
    private final zzaet zze;
    private zzadq zzf;
    private zzaet zzg;
    private zzaet zzh;
    private int zzi;
    @Nullable
    private zzav zzj;
    private long zzk;
    private long zzl;
    private long zzm;
    private long zzn;
    private int zzo;
    private zzahy zzp;
    private boolean zzq;

    public zzahw() {
        throw null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0104  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0164  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x01b4  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x01ba  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0235  */
    /* JADX WARN: Type inference failed for: r2v41, types: [com.google.android.gms.internal.ads.zzaib] */
    /* JADX WARN: Type inference failed for: r2v49 */
    /* JADX WARN: Type inference failed for: r2v54, types: [com.google.android.gms.internal.ads.zzahz] */
    @org.checkerframework.checker.nullness.qual.RequiresNonNull
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int zzg(com.google.android.gms.internal.ads.zzado r36) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 763
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzahw.zzg(com.google.android.gms.internal.ads.zzado):int");
    }

    private final long zzh(long j) {
        return this.zzk + ((j * 1000000) / this.zzb.zzd);
    }

    private final void zzj() {
        zzahy zzahyVar = this.zzp;
        if ((zzahyVar instanceof zzaht) && zzahyVar.zzh()) {
            long j = this.zzn;
            if (j != -1 && j != this.zzp.zzd()) {
                this.zzp = ((zzaht) this.zzp).zzf(this.zzn);
                zzadq zzadqVar = this.zzf;
                zzadqVar.getClass();
                zzadqVar.zzP(this.zzp);
                this.zzg.getClass();
                this.zzp.zza();
            }
        }
    }

    private static boolean zzk(int i, long j) {
        if ((i & (-128000)) == (j & (-128000))) {
            return true;
        }
        return false;
    }

    private final boolean zzl(zzado zzadoVar) throws IOException {
        zzahy zzahyVar = this.zzp;
        if (zzahyVar != null) {
            long zzd = zzahyVar.zzd();
            if (zzd != -1 && zzadoVar.zze() > zzd - 4) {
                return true;
            }
        }
        try {
            if (!zzadoVar.zzm(this.zza.zzN(), 0, 4, true)) {
                return true;
            }
            return false;
        } catch (EOFException unused) {
            return true;
        }
    }

    private final boolean zzm(zzado zzadoVar, boolean z) throws IOException {
        int i;
        int i2;
        int zzb;
        int i3;
        zzadoVar.zzj();
        if (zzadoVar.zzf() == 0) {
            zzav zza = this.zzd.zza(zzadoVar, null);
            this.zzj = zza;
            if (zza != null) {
                this.zzc.zzb(zza);
            }
            i = (int) zzadoVar.zze();
            if (!z) {
                zzadoVar.zzk(i);
            }
            i2 = 0;
        } else {
            i = 0;
            i2 = 0;
        }
        int i4 = i2;
        int i5 = i4;
        while (true) {
            if (zzl(zzadoVar)) {
                if (i4 <= 0) {
                    zzj();
                    throw new EOFException();
                }
            } else {
                zzek zzekVar = this.zza;
                zzekVar.zzL(0);
                int zzg = zzekVar.zzg();
                if ((i2 != 0 && !zzk(zzg, i2)) || (zzb = zzaeg.zzb(zzg)) == -1) {
                    if (true != z) {
                        i3 = 131072;
                    } else {
                        i3 = 32768;
                    }
                    int i6 = i5 + 1;
                    if (i5 == i3) {
                        if (z) {
                            return false;
                        }
                        zzj();
                        throw new EOFException();
                    }
                    if (z) {
                        zzadoVar.zzj();
                        zzadoVar.zzg(i + i6);
                    } else {
                        zzadoVar.zzk(1);
                    }
                    i2 = 0;
                    i5 = i6;
                    i4 = 0;
                } else {
                    i4++;
                    if (i4 == 1) {
                        this.zzb.zza(zzg);
                        i2 = zzg;
                    } else if (i4 == 4) {
                        break;
                    }
                    zzadoVar.zzg(zzb - 4);
                }
            }
        }
        if (z) {
            zzadoVar.zzk(i + i5);
        } else {
            zzadoVar.zzj();
        }
        this.zzi = i2;
        return true;
    }

    public final void zza() {
        this.zzq = true;
    }

    @Override // com.google.android.gms.internal.ads.zzadn
    public final int zzb(zzado zzadoVar, zzaej zzaejVar) throws IOException {
        zzdc.zzb(this.zzg);
        String str = zzeu.zza;
        int zzg = zzg(zzadoVar);
        if (zzg == -1 && (this.zzp instanceof zzahu)) {
            if (this.zzp.zza() != zzh(this.zzl)) {
                zzahu zzahuVar = (zzahu) this.zzp;
                throw null;
            }
        }
        return zzg;
    }

    @Override // com.google.android.gms.internal.ads.zzadn
    public final /* synthetic */ List zzd() {
        return zzfyc.zzn();
    }

    @Override // com.google.android.gms.internal.ads.zzadn
    public final void zze(zzadq zzadqVar) {
        this.zzf = zzadqVar;
        zzaet zzw = zzadqVar.zzw(0, 1);
        this.zzg = zzw;
        this.zzh = zzw;
        this.zzf.zzG();
    }

    @Override // com.google.android.gms.internal.ads.zzadn
    public final void zzf(long j, long j2) {
        this.zzi = 0;
        this.zzk = -9223372036854775807L;
        this.zzl = 0L;
        this.zzo = 0;
        if (!(this.zzp instanceof zzahu)) {
            return;
        }
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzadn
    public final boolean zzi(zzado zzadoVar) throws IOException {
        return zzm(zzadoVar, true);
    }

    public zzahw(int i) {
        this.zza = new zzek(10);
        this.zzb = new zzaef();
        this.zzc = new zzaeb();
        this.zzk = -9223372036854775807L;
        this.zzd = new zzaed();
        zzadj zzadjVar = new zzadj();
        this.zze = zzadjVar;
        this.zzh = zzadjVar;
        this.zzn = -1L;
    }

    @Override // com.google.android.gms.internal.ads.zzadn
    public final /* synthetic */ zzadn zzc() {
        return this;
    }
}
