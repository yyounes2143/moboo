package com.google.android.gms.internal.ads;

import java.util.NoSuchElementException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzhar extends zzgxd {
    final zzhat zza;
    zzgxf zzb = zzb();
    final /* synthetic */ zzhav zzc;

    public zzhar(zzhav zzhavVar) {
        this.zzc = zzhavVar;
        this.zza = new zzhat(zzhavVar, null);
    }

    private final zzgxf zzb() {
        zzhat zzhatVar = this.zza;
        if (zzhatVar.hasNext()) {
            return zzhatVar.next().iterator();
        }
        return null;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.zzb != null) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzgxf
    public final byte zza() {
        zzgxf zzgxfVar = this.zzb;
        if (zzgxfVar != null) {
            byte zza = zzgxfVar.zza();
            if (!this.zzb.hasNext()) {
                this.zzb = zzb();
            }
            return zza;
        }
        throw new NoSuchElementException();
    }
}
