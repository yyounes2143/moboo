package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import j$.util.Objects;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzahd extends zzagx {
    @Nullable
    public final String zza;
    public final String zzb;

    public zzahd(String str, @Nullable String str2, String str3) {
        super(str);
        this.zza = str2;
        this.zzb = str3;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzahd.class == obj.getClass()) {
            zzahd zzahdVar = (zzahd) obj;
            if (this.zzf.equals(zzahdVar.zzf) && Objects.equals(this.zza, zzahdVar.zza) && Objects.equals(this.zzb, zzahdVar.zzb)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i;
        int hashCode = this.zzf.hashCode() + 527;
        String str = this.zza;
        if (str != null) {
            i = str.hashCode();
        } else {
            i = 0;
        }
        return (((hashCode * 31) + i) * 31) + this.zzb.hashCode();
    }

    @Override // com.google.android.gms.internal.ads.zzagx
    public final String toString() {
        return this.zzf + ": url=" + this.zzb;
    }
}
