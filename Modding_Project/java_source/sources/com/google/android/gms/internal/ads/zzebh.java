package com.google.android.gms.internal.ads;

import android.graphics.drawable.Drawable;
import androidx.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzebh extends zzebl {
    @Nullable
    private final String zza;
    private final String zzb;
    @Nullable
    private final Drawable zzc;

    public zzebh(@Nullable String str, String str2, @Nullable Drawable drawable) {
        this.zza = str;
        if (str2 != null) {
            this.zzb = str2;
            this.zzc = drawable;
            return;
        }
        throw new NullPointerException("Null imageUrl");
    }

    public final boolean equals(Object obj) {
        Drawable drawable;
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzebl) {
            zzebl zzeblVar = (zzebl) obj;
            String str = this.zza;
            if (str != null ? str.equals(zzeblVar.zzb()) : zzeblVar.zzb() == null) {
                if (this.zzb.equals(zzeblVar.zzc()) && ((drawable = this.zzc) != null ? drawable.equals(zzeblVar.zza()) : zzeblVar.zza() == null)) {
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
        int hashCode2 = ((hashCode ^ 1000003) * 1000003) ^ this.zzb.hashCode();
        Drawable drawable = this.zzc;
        if (drawable != null) {
            i = drawable.hashCode();
        }
        return (hashCode2 * 1000003) ^ i;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.zzc);
        return "OfflineAdAssets{advertiserName=" + this.zza + ", imageUrl=" + this.zzb + ", icon=" + valueOf + "}";
    }

    @Override // com.google.android.gms.internal.ads.zzebl
    @Nullable
    public final Drawable zza() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzebl
    @Nullable
    public final String zzb() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzebl
    public final String zzc() {
        return this.zzb;
    }
}
