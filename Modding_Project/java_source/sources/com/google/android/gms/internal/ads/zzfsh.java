package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzfsh extends zzfss {
    @Nullable
    private final String zza;
    @Nullable
    private final String zzb;

    public /* synthetic */ zzfsh(String str, String str2, zzfsg zzfsgVar) {
        this.zza = str;
        this.zzb = str2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzfss) {
            zzfss zzfssVar = (zzfss) obj;
            String str = this.zza;
            if (str != null ? str.equals(zzfssVar.zzb()) : zzfssVar.zzb() == null) {
                String str2 = this.zzb;
                if (str2 != null ? str2.equals(zzfssVar.zza()) : zzfssVar.zza() == null) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode;
        String str = this.zza;
        int i = 0;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        String str2 = this.zzb;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return ((hashCode ^ 1000003) * 1000003) ^ i;
    }

    public final String toString() {
        return "OverlayDisplayDismissRequest{sessionToken=" + this.zza + ", appId=" + this.zzb + "}";
    }

    @Override // com.google.android.gms.internal.ads.zzfss
    @Nullable
    public final String zza() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzfss
    @Nullable
    public final String zzb() {
        return this.zza;
    }
}
