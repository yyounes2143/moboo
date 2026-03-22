package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzxe {
    public static final zzxe zza = new zzxe(new zzbm[0]);
    public final int zzb;
    private final zzfyc zzc;
    private int zzd;

    static {
        String str = zzeu.zza;
        Integer.toString(0, 36);
    }

    public zzxe(zzbm... zzbmVarArr) {
        this.zzc = zzfyc.zzm(zzbmVarArr);
        this.zzb = zzbmVarArr.length;
        int i = 0;
        while (i < this.zzc.size()) {
            int i2 = i + 1;
            for (int i3 = i2; i3 < this.zzc.size(); i3++) {
                if (((zzbm) this.zzc.get(i)).equals(this.zzc.get(i3))) {
                    zzdx.zzd("TrackGroupArray", "", new IllegalArgumentException("Multiple identical TrackGroups added to one TrackGroupArray."));
                }
            }
            i = i2;
        }
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzxe.class == obj.getClass()) {
            zzxe zzxeVar = (zzxe) obj;
            if (this.zzb == zzxeVar.zzb && this.zzc.equals(zzxeVar.zzc)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = this.zzd;
        if (i == 0) {
            int hashCode = this.zzc.hashCode();
            this.zzd = hashCode;
            return hashCode;
        }
        return i;
    }

    public final String toString() {
        return this.zzc.toString();
    }

    public final int zza(zzbm zzbmVar) {
        int indexOf = this.zzc.indexOf(zzbmVar);
        if (indexOf >= 0) {
            return indexOf;
        }
        return -1;
    }

    public final zzbm zzb(int i) {
        return (zzbm) this.zzc.get(i);
    }

    public final zzfyc zzc() {
        return zzfyc.zzl(zzfys.zzb(this.zzc, new zzfur() { // from class: com.google.android.gms.internal.ads.zzxd
            @Override // com.google.android.gms.internal.ads.zzfur
            public final Object apply(Object obj) {
                zzxe zzxeVar = zzxe.zza;
                return Integer.valueOf(((zzbm) obj).zzc);
            }
        }));
    }
}
