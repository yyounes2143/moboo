package com.google.android.gms.internal.ads;

import androidx.media3.common.MimeTypes;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzanb implements zzamr {
    private zzaet zzc;
    private boolean zzd;
    private int zzf;
    private int zzg;
    private final String zza = MimeTypes.VIDEO_MP2T;
    private final zzek zzb = new zzek(10);
    private long zze = -9223372036854775807L;

    public zzanb(String str) {
    }

    @Override // com.google.android.gms.internal.ads.zzamr
    public final void zza(zzek zzekVar) {
        zzdc.zzb(this.zzc);
        if (!this.zzd) {
            return;
        }
        int zza = zzekVar.zza();
        int i = this.zzg;
        if (i < 10) {
            int min = Math.min(zza, 10 - i);
            byte[] zzN = zzekVar.zzN();
            int zzc = zzekVar.zzc();
            zzek zzekVar2 = this.zzb;
            System.arraycopy(zzN, zzc, zzekVar2.zzN(), this.zzg, min);
            if (this.zzg + min == 10) {
                zzekVar2.zzL(0);
                if (zzekVar2.zzm() == 73 && zzekVar2.zzm() == 68 && zzekVar2.zzm() == 51) {
                    zzekVar2.zzM(3);
                    this.zzf = zzekVar2.zzl() + 10;
                } else {
                    zzdx.zzf("Id3Reader", "Discarding invalid ID3 tag");
                    this.zzd = false;
                    return;
                }
            }
        }
        int min2 = Math.min(zza, this.zzf - this.zzg);
        this.zzc.zzr(zzekVar, min2);
        this.zzg += min2;
    }

    @Override // com.google.android.gms.internal.ads.zzamr
    public final void zzb(zzadq zzadqVar, zzaof zzaofVar) {
        zzaofVar.zzc();
        zzaet zzw = zzadqVar.zzw(zzaofVar.zza(), 5);
        this.zzc = zzw;
        zzx zzxVar = new zzx();
        zzxVar.zzO(zzaofVar.zzb());
        zzxVar.zzE(this.zza);
        zzxVar.zzad("application/id3");
        zzw.zzm(zzxVar.zzaj());
    }

    @Override // com.google.android.gms.internal.ads.zzamr
    public final void zzc(boolean z) {
        int i;
        boolean z2;
        zzdc.zzb(this.zzc);
        if (this.zzd && (i = this.zzf) != 0 && this.zzg == i) {
            if (this.zze != -9223372036854775807L) {
                z2 = true;
            } else {
                z2 = false;
            }
            zzdc.zzf(z2);
            this.zzc.zzt(this.zze, 1, this.zzf, 0, null);
            this.zzd = false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzamr
    public final void zzd(long j, int i) {
        if ((i & 4) == 0) {
            return;
        }
        this.zzd = true;
        this.zze = j;
        this.zzf = 0;
        this.zzg = 0;
    }

    @Override // com.google.android.gms.internal.ads.zzamr
    public final void zze() {
        this.zzd = false;
        this.zze = -9223372036854775807L;
    }
}
