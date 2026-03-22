package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.io.IOException;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzagb implements zzadn {
    private zzadq zzb;
    private int zzc;
    private int zzd;
    private int zze;
    @Nullable
    private zzahe zzg;
    private zzado zzh;
    private zzage zzi;
    @Nullable
    private zzajb zzj;
    private final zzek zza = new zzek(6);
    private long zzf = -1;

    private final int zza(zzado zzadoVar) throws IOException {
        zzek zzekVar = this.zza;
        zzekVar.zzI(2);
        ((zzadd) zzadoVar).zzm(zzekVar.zzN(), 0, 2, false);
        return zzekVar.zzq();
    }

    private final void zzg() {
        zzadq zzadqVar = this.zzb;
        zzadqVar.getClass();
        zzadqVar.zzG();
        this.zzb.zzP(new zzael(-9223372036854775807L, 0L));
        this.zzc = 6;
    }

    /* JADX WARN: Removed duplicated region for block: B:84:0x018e  */
    @Override // com.google.android.gms.internal.ads.zzadn
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zzb(com.google.android.gms.internal.ads.zzado r27, com.google.android.gms.internal.ads.zzaej r28) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 490
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzagb.zzb(com.google.android.gms.internal.ads.zzado, com.google.android.gms.internal.ads.zzaej):int");
    }

    @Override // com.google.android.gms.internal.ads.zzadn
    public final /* synthetic */ List zzd() {
        return zzfyc.zzn();
    }

    @Override // com.google.android.gms.internal.ads.zzadn
    public final void zze(zzadq zzadqVar) {
        this.zzb = zzadqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzadn
    public final void zzf(long j, long j2) {
        if (j == 0) {
            this.zzc = 0;
            this.zzj = null;
        } else if (this.zzc == 5) {
            zzajb zzajbVar = this.zzj;
            zzajbVar.getClass();
            zzajbVar.zzf(j, j2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzadn
    public final boolean zzi(zzado zzadoVar) throws IOException {
        if (zza(zzadoVar) != 65496) {
            return false;
        }
        int zza = zza(zzadoVar);
        this.zzd = zza;
        if (zza == 65504) {
            zzek zzekVar = this.zza;
            zzekVar.zzI(2);
            zzadd zzaddVar = (zzadd) zzadoVar;
            zzaddVar.zzm(zzekVar.zzN(), 0, 2, false);
            zzaddVar.zzl(zzekVar.zzq() - 2, false);
            zza = zza(zzadoVar);
            this.zzd = zza;
        }
        if (zza == 65505) {
            zzadd zzaddVar2 = (zzadd) zzadoVar;
            zzaddVar2.zzl(2, false);
            zzek zzekVar2 = this.zza;
            zzekVar2.zzI(6);
            zzaddVar2.zzm(zzekVar2.zzN(), 0, 6, false);
            if (zzekVar2.zzu() == 1165519206 && zzekVar2.zzq() == 0) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzadn
    public final /* synthetic */ zzadn zzc() {
        return this;
    }
}
