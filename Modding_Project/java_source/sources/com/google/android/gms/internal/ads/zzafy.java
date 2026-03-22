package com.google.android.gms.internal.ads;

import androidx.media3.common.MimeTypes;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzafy extends zzafx {
    private final zzek zzb;
    private final zzek zzc;
    private int zzd;
    private boolean zze;
    private boolean zzf;
    private int zzg;

    public zzafy(zzaet zzaetVar) {
        super(zzaetVar);
        this.zzb = new zzek(zzfs.zza);
        this.zzc = new zzek(4);
    }

    @Override // com.google.android.gms.internal.ads.zzafx
    public final boolean zza(zzek zzekVar) throws zzafw {
        int zzm = zzekVar.zzm();
        int i = zzm >> 4;
        int i2 = zzm & 15;
        if (i2 == 7) {
            this.zzg = i;
            if (i != 5) {
                return true;
            }
            return false;
        }
        throw new zzafw("Video format not supported: " + i2);
    }

    @Override // com.google.android.gms.internal.ads.zzafx
    public final boolean zzb(zzek zzekVar, long j) throws zzaz {
        int i;
        int i2;
        int zzm = zzekVar.zzm();
        long zzh = zzekVar.zzh();
        if (zzm == 0) {
            if (!this.zze) {
                zzek zzekVar2 = new zzek(new byte[zzekVar.zza()]);
                zzekVar.zzH(zzekVar2.zzN(), 0, zzekVar.zza());
                zzacs zza = zzacs.zza(zzekVar2);
                this.zzd = zza.zzb;
                zzx zzxVar = new zzx();
                zzxVar.zzE(MimeTypes.VIDEO_FLV);
                zzxVar.zzad("video/avc");
                zzxVar.zzC(zza.zzl);
                zzxVar.zzai(zza.zzc);
                zzxVar.zzM(zza.zzd);
                zzxVar.zzZ(zza.zzk);
                zzxVar.zzP(zza.zza);
                this.zza.zzm(zzxVar.zzaj());
                this.zze = true;
                return false;
            }
        } else if (zzm == 1 && this.zze) {
            if (this.zzg == 1) {
                i = 1;
            } else {
                i = 0;
            }
            if (!this.zzf) {
                if (i != 0) {
                    i2 = 1;
                }
            } else {
                i2 = i;
            }
            zzek zzekVar3 = this.zzc;
            byte[] zzN = zzekVar3.zzN();
            zzN[0] = 0;
            zzN[1] = 0;
            zzN[2] = 0;
            int i3 = 4 - this.zzd;
            int i4 = 0;
            while (zzekVar.zza() > 0) {
                zzekVar.zzH(zzekVar3.zzN(), i3, this.zzd);
                zzekVar3.zzL(0);
                zzek zzekVar4 = this.zzb;
                int zzp = zzekVar3.zzp();
                zzekVar4.zzL(0);
                zzaet zzaetVar = this.zza;
                zzaetVar.zzr(zzekVar4, 4);
                zzaetVar.zzr(zzekVar, zzp);
                i4 = i4 + 4 + zzp;
            }
            this.zza.zzt(j + (zzh * 1000), i2, i4, 0, null);
            this.zzf = true;
            return true;
        }
        return false;
    }
}
