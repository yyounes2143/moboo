package com.google.android.gms.internal.ads;

import android.app.Activity;
import androidx.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzebk extends zzecg {
    private final Activity zza;
    @Nullable
    private final com.google.android.gms.ads.internal.overlay.zzm zzb;
    @Nullable
    private final String zzc;
    @Nullable
    private final String zzd;

    public /* synthetic */ zzebk(Activity activity, com.google.android.gms.ads.internal.overlay.zzm zzmVar, String str, String str2, zzebj zzebjVar) {
        this.zza = activity;
        this.zzb = zzmVar;
        this.zzc = str;
        this.zzd = str2;
    }

    public final boolean equals(Object obj) {
        com.google.android.gms.ads.internal.overlay.zzm zzmVar;
        String str;
        String str2;
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzecg) {
            zzecg zzecgVar = (zzecg) obj;
            if (this.zza.equals(zzecgVar.zza()) && ((zzmVar = this.zzb) != null ? zzmVar.equals(zzecgVar.zzb()) : zzecgVar.zzb() == null) && ((str = this.zzc) != null ? str.equals(zzecgVar.zzc()) : zzecgVar.zzc() == null) && ((str2 = this.zzd) != null ? str2.equals(zzecgVar.zzd()) : zzecgVar.zzd() == null)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode;
        int hashCode2;
        int hashCode3 = this.zza.hashCode() ^ 1000003;
        com.google.android.gms.ads.internal.overlay.zzm zzmVar = this.zzb;
        int i = 0;
        if (zzmVar == null) {
            hashCode = 0;
        } else {
            hashCode = zzmVar.hashCode();
        }
        int i2 = ((hashCode3 * 1000003) ^ hashCode) * 1000003;
        String str = this.zzc;
        if (str == null) {
            hashCode2 = 0;
        } else {
            hashCode2 = str.hashCode();
        }
        int i3 = (i2 ^ hashCode2) * 1000003;
        String str2 = this.zzd;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return i3 ^ i;
    }

    public final String toString() {
        com.google.android.gms.ads.internal.overlay.zzm zzmVar = this.zzb;
        String obj = this.zza.toString();
        String valueOf = String.valueOf(zzmVar);
        return "OfflineUtilsParams{activity=" + obj + ", adOverlay=" + valueOf + ", gwsQueryId=" + this.zzc + ", uri=" + this.zzd + "}";
    }

    @Override // com.google.android.gms.internal.ads.zzecg
    public final Activity zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzecg
    @Nullable
    public final com.google.android.gms.ads.internal.overlay.zzm zzb() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzecg
    @Nullable
    public final String zzc() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzecg
    @Nullable
    public final String zzd() {
        return this.zzd;
    }
}
