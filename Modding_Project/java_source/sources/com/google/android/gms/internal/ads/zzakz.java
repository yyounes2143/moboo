package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.zip.Inflater;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzakz implements zzakl {
    private final zzek zza = new zzek();
    private final zzek zzb = new zzek();
    private final zzaky zzc = new zzaky();
    @Nullable
    private Inflater zzd;

    @Override // com.google.android.gms.internal.ads.zzakl
    public final void zza(byte[] bArr, int i, int i2, zzakk zzakkVar, zzdk zzdkVar) {
        zzek zzekVar = this.zza;
        zzekVar.zzJ(bArr, i2 + i);
        zzekVar.zzL(i);
        if (this.zzd == null) {
            this.zzd = new Inflater();
        }
        zzek zzekVar2 = this.zzb;
        if (zzeu.zzO(zzekVar, zzekVar2, this.zzd)) {
            zzekVar.zzJ(zzekVar2.zzN(), zzekVar2.zzd());
        }
        zzaky zzakyVar = this.zzc;
        zzakyVar.zze();
        ArrayList arrayList = new ArrayList();
        while (zzekVar.zza() >= 3) {
            int zzd = zzekVar.zzd();
            int zzm = zzekVar.zzm();
            int zzq = zzekVar.zzq();
            int zzc = zzekVar.zzc() + zzq;
            zzcu zzcuVar = null;
            if (zzc > zzd) {
                zzekVar.zzL(zzd);
            } else {
                if (zzm != 128) {
                    switch (zzm) {
                        case 20:
                            zzaky.zzd(zzakyVar, zzekVar, zzq);
                            break;
                        case 21:
                            zzaky.zzb(zzakyVar, zzekVar, zzq);
                            break;
                        case 22:
                            zzaky.zzc(zzakyVar, zzekVar, zzq);
                            break;
                    }
                } else {
                    zzcuVar = zzakyVar.zza();
                    zzakyVar.zze();
                }
                zzekVar.zzL(zzc);
            }
            if (zzcuVar != null) {
                arrayList.add(zzcuVar);
            }
        }
        zzdkVar.zza(new zzakd(arrayList, -9223372036854775807L, -9223372036854775807L));
    }
}
