package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzanq {
    private final zzamr zza;
    private final zzer zzb;
    private final zzej zzc = new zzej(new byte[64], 64);
    private boolean zzd;
    private boolean zze;
    private boolean zzf;

    public zzanq(zzamr zzamrVar, zzer zzerVar) {
        this.zza = zzamrVar;
        this.zzb = zzerVar;
    }

    public final void zza(zzek zzekVar) throws zzaz {
        long j;
        char c;
        zzej zzejVar = this.zzc;
        zzekVar.zzH(zzejVar.zza, 0, 3);
        zzejVar.zzl(0);
        zzejVar.zzn(8);
        this.zzd = zzejVar.zzp();
        this.zze = zzejVar.zzp();
        zzejVar.zzn(6);
        zzekVar.zzH(zzejVar.zza, 0, zzejVar.zzd(8));
        zzejVar.zzl(0);
        if (this.zzd) {
            zzejVar.zzn(4);
            long zzd = zzejVar.zzd(3);
            zzejVar.zzn(1);
            int zzd2 = zzejVar.zzd(15) << 15;
            zzejVar.zzn(1);
            long zzd3 = zzejVar.zzd(15);
            zzejVar.zzn(1);
            if (!this.zzf && this.zze) {
                zzejVar.zzn(4);
                zzejVar.zzn(1);
                zzejVar.zzn(1);
                c = 30;
                zzejVar.zzn(1);
                this.zzb.zzb((zzejVar.zzd(3) << 30) | (zzejVar.zzd(15) << 15) | zzejVar.zzd(15));
                this.zzf = true;
            } else {
                c = 30;
            }
            j = this.zzb.zzb((zzd << c) | zzd2 | zzd3);
        } else {
            j = 0;
        }
        zzamr zzamrVar = this.zza;
        zzamrVar.zzd(j, 4);
        zzamrVar.zza(zzekVar);
        zzamrVar.zzc(false);
    }

    public final void zzb() {
        this.zzf = false;
        this.zza.zze();
    }
}
