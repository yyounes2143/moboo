package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzfsq extends zzfts {
    @Nullable
    private final String zza;
    @Nullable
    private final String zzb;

    public /* synthetic */ zzfsq(String str, String str2, zzfsp zzfspVar) {
        this.zza = str;
        this.zzb = str2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzfts) {
            zzfts zzftsVar = (zzfts) obj;
            String str = this.zza;
            if (str != null ? str.equals(zzftsVar.zzb()) : zzftsVar.zzb() == null) {
                String str2 = this.zzb;
                if (str2 != null ? str2.equals(zzftsVar.zza()) : zzftsVar.zza() == null) {
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
        return "OverlayDisplayUpdateRequest{sessionToken=" + this.zza + ", appId=" + this.zzb + "}";
    }

    @Override // com.google.android.gms.internal.ads.zzfts
    @Nullable
    public final String zza() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzfts
    @Nullable
    public final String zzb() {
        return this.zza;
    }
}
