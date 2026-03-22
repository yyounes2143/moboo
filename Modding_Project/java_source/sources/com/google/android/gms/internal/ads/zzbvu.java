package com.google.android.gms.internal.ads;

import com.google.android.gms.common.internal.Objects;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbvu extends zzbvw {
    private final String zza;
    private final int zzb;

    public zzbvu(String str, int i) {
        this.zza = str;
        this.zzb = i;
    }

    public final boolean equals(Object obj) {
        if (obj != null && (obj instanceof zzbvu)) {
            zzbvu zzbvuVar = (zzbvu) obj;
            if (Objects.equal(this.zza, zzbvuVar.zza)) {
                if (Objects.equal(Integer.valueOf(this.zzb), Integer.valueOf(zzbvuVar.zzb))) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzbvx
    public final int zzb() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzbvx
    public final String zzc() {
        return this.zza;
    }
}
