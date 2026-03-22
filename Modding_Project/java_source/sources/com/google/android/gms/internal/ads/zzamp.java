package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import androidx.media3.common.MimeTypes;
import j$.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzamp implements zzamr {
    private final zzek zza;
    @Nullable
    private final String zzc;
    private final int zzd;
    private String zzf;
    private zzaet zzg;
    private int zzi;
    private int zzj;
    private long zzk;
    private zzz zzl;
    private int zzm;
    private int zzn;
    private int zzh = 0;
    private long zzq = -9223372036854775807L;
    private final AtomicInteger zzb = new AtomicInteger();
    private int zzo = -1;
    private int zzp = -1;
    private final String zze = MimeTypes.VIDEO_MP2T;

    public zzamp(@Nullable String str, int i, int i2, String str2) {
        this.zza = new zzek(new byte[i2]);
        this.zzc = str;
        this.zzd = i;
    }

    @RequiresNonNull
    private final void zzf(zzadk zzadkVar) {
        int i;
        zzx zzb;
        int i2 = zzadkVar.zzb;
        if (i2 != -2147483647 && (i = zzadkVar.zzc) != -1) {
            zzz zzzVar = this.zzl;
            if (zzzVar == null || i != zzzVar.zzE || i2 != zzzVar.zzF || !Objects.equals(zzadkVar.zza, zzzVar.zzo)) {
                zzz zzzVar2 = this.zzl;
                if (zzzVar2 == null) {
                    zzb = new zzx();
                } else {
                    zzb = zzzVar2.zzb();
                }
                zzb.zzO(this.zzf);
                zzb.zzE(this.zze);
                zzb.zzad(zzadkVar.zza);
                zzb.zzB(i);
                zzb.zzae(i2);
                zzb.zzS(this.zzc);
                zzb.zzab(this.zzd);
                zzz zzaj = zzb.zzaj();
                this.zzl = zzaj;
                this.zzg.zzm(zzaj);
            }
        }
    }

    private final boolean zzg(zzek zzekVar, byte[] bArr, int i) {
        int min = Math.min(zzekVar.zza(), i - this.zzi);
        zzekVar.zzH(bArr, this.zzi, min);
        int i2 = this.zzi + min;
        this.zzi = i2;
        if (i2 == i) {
            return true;
        }
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:68:0x01c9  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01d1  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01f3  */
    @Override // com.google.android.gms.internal.ads.zzamr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(com.google.android.gms.internal.ads.zzek r23) throws com.google.android.gms.internal.ads.zzaz {
        /*
            Method dump skipped, instructions count: 686
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzamp.zza(com.google.android.gms.internal.ads.zzek):void");
    }

    @Override // com.google.android.gms.internal.ads.zzamr
    public final void zzb(zzadq zzadqVar, zzaof zzaofVar) {
        zzaofVar.zzc();
        this.zzf = zzaofVar.zzb();
        this.zzg = zzadqVar.zzw(zzaofVar.zza(), 1);
    }

    @Override // com.google.android.gms.internal.ads.zzamr
    public final void zzd(long j, int i) {
        this.zzq = j;
    }

    @Override // com.google.android.gms.internal.ads.zzamr
    public final void zze() {
        this.zzh = 0;
        this.zzi = 0;
        this.zzj = 0;
        this.zzq = -9223372036854775807L;
        this.zzb.set(0);
    }

    @Override // com.google.android.gms.internal.ads.zzamr
    public final void zzc(boolean z) {
    }
}
