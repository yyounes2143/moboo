package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public abstract class zzfz implements zzgg {
    private final boolean zza;
    private final ArrayList zzb = new ArrayList(1);
    private int zzc;
    @Nullable
    private zzgl zzd;

    public zzfz(boolean z) {
        this.zza = z;
    }

    @Override // com.google.android.gms.internal.ads.zzgg
    public /* synthetic */ Map zze() {
        return Collections.EMPTY_MAP;
    }

    @Override // com.google.android.gms.internal.ads.zzgg
    public final void zzf(zzhg zzhgVar) {
        zzhgVar.getClass();
        ArrayList arrayList = this.zzb;
        if (!arrayList.contains(zzhgVar)) {
            arrayList.add(zzhgVar);
            this.zzc++;
        }
    }

    public final void zzg(int i) {
        zzgl zzglVar = this.zzd;
        String str = zzeu.zza;
        for (int i2 = 0; i2 < this.zzc; i2++) {
            ((zzhg) this.zzb.get(i2)).zza(this, zzglVar, this.zza, i);
        }
    }

    public final void zzh() {
        zzgl zzglVar = this.zzd;
        String str = zzeu.zza;
        for (int i = 0; i < this.zzc; i++) {
            ((zzhg) this.zzb.get(i)).zzb(this, zzglVar, this.zza);
        }
        this.zzd = null;
    }

    public final void zzi(zzgl zzglVar) {
        for (int i = 0; i < this.zzc; i++) {
            ((zzhg) this.zzb.get(i)).zzc(this, zzglVar, this.zza);
        }
    }

    public final void zzj(zzgl zzglVar) {
        this.zzd = zzglVar;
        for (int i = 0; i < this.zzc; i++) {
            ((zzhg) this.zzb.get(i)).zzd(this, zzglVar, this.zza);
        }
    }
}
