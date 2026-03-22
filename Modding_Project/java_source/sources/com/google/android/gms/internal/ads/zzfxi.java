package com.google.android.gms.internal.ads;

import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzfxi extends zzfww {
    final /* synthetic */ zzfxl zza;
    private final Object zzb;
    private int zzc;

    public zzfxi(zzfxl zzfxlVar, int i) {
        this.zza = zzfxlVar;
        this.zzb = zzfxl.zzg(zzfxlVar, i);
        this.zzc = i;
    }

    private final void zza() {
        int zzw;
        int i = this.zzc;
        if (i != -1) {
            zzfxl zzfxlVar = this.zza;
            if (i < zzfxlVar.size() && zzfuz.zza(this.zzb, zzfxl.zzg(zzfxlVar, this.zzc))) {
                return;
            }
        }
        zzw = this.zza.zzw(this.zzb);
        this.zzc = zzw;
    }

    @Override // com.google.android.gms.internal.ads.zzfww, java.util.Map.Entry
    public final Object getKey() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzfww, java.util.Map.Entry
    public final Object getValue() {
        zzfxl zzfxlVar = this.zza;
        Map zzl = zzfxlVar.zzl();
        if (zzl != null) {
            return zzl.get(this.zzb);
        }
        zza();
        int i = this.zzc;
        if (i == -1) {
            return null;
        }
        return zzfxl.zzj(zzfxlVar, i);
    }

    @Override // com.google.android.gms.internal.ads.zzfww, java.util.Map.Entry
    public final Object setValue(Object obj) {
        zzfxl zzfxlVar = this.zza;
        Map zzl = zzfxlVar.zzl();
        if (zzl != null) {
            return zzl.put(this.zzb, obj);
        }
        zza();
        int i = this.zzc;
        if (i == -1) {
            zzfxlVar.put(this.zzb, obj);
            return null;
        }
        Object zzj = zzfxl.zzj(zzfxlVar, i);
        zzfxl.zzn(zzfxlVar, this.zzc, obj);
        return zzj;
    }
}
