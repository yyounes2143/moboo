package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import j$.util.Objects;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzags extends zzagx {
    public final String zza;
    public final String zzb;
    public final String zzc;

    public zzags(String str, String str2, String str3) {
        super("COMM");
        this.zza = str;
        this.zzb = str2;
        this.zzc = str3;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzags.class == obj.getClass()) {
            zzags zzagsVar = (zzags) obj;
            if (Objects.equals(this.zzb, zzagsVar.zzb) && Objects.equals(this.zza, zzagsVar.zza) && Objects.equals(this.zzc, zzagsVar.zzc)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i;
        int hashCode = ((this.zza.hashCode() + 527) * 31) + this.zzb.hashCode();
        String str = this.zzc;
        if (str != null) {
            i = str.hashCode();
        } else {
            i = 0;
        }
        return (hashCode * 31) + i;
    }

    @Override // com.google.android.gms.internal.ads.zzagx
    public final String toString() {
        return this.zzf + ": language=" + this.zza + ", description=" + this.zzb + ", text=" + this.zzc;
    }
}
