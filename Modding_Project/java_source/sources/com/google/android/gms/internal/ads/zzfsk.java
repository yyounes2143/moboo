package com.google.android.gms.internal.ads;

import android.os.IBinder;
import androidx.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzfsk extends zzftn {
    private final IBinder zza;
    @Nullable
    private final String zzb;
    private final int zzc;
    private final float zzd;
    private final int zze;
    @Nullable
    private final String zzf;

    public /* synthetic */ zzfsk(IBinder iBinder, String str, int i, float f, int i2, int i3, String str2, int i4, String str3, String str4, String str5, zzfsj zzfsjVar) {
        this.zza = iBinder;
        this.zzb = str;
        this.zzc = i;
        this.zzd = f;
        this.zze = i4;
        this.zzf = str4;
    }

    public final boolean equals(Object obj) {
        String str;
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzftn) {
            zzftn zzftnVar = (zzftn) obj;
            if (this.zza.equals(zzftnVar.zzf()) && ((str = this.zzb) != null ? str.equals(zzftnVar.zzh()) : zzftnVar.zzh() == null) && this.zzc == zzftnVar.zzc() && Float.floatToIntBits(this.zzd) == Float.floatToIntBits(zzftnVar.zza())) {
                zzftnVar.zzb();
                zzftnVar.zzd();
                zzftnVar.zzj();
                if (this.zze == zzftnVar.zze()) {
                    zzftnVar.zzi();
                    String str2 = this.zzf;
                    if (str2 != null ? str2.equals(zzftnVar.zzg()) : zzftnVar.zzg() == null) {
                        zzftnVar.zzk();
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode;
        int hashCode2 = this.zza.hashCode() ^ 1000003;
        String str = this.zzb;
        int i = 0;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int floatToIntBits = (((((hashCode2 * 1000003) ^ hashCode) * 1000003) ^ this.zzc) * 1000003) ^ Float.floatToIntBits(this.zzd);
        int i2 = this.zze;
        String str2 = this.zzf;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return ((((floatToIntBits * 1525764945) ^ i2) * (-721379959)) ^ i) * 1000003;
    }

    public final String toString() {
        String obj = this.zza.toString();
        return "OverlayDisplayShowRequest{windowToken=" + obj + ", appId=" + this.zzb + ", layoutGravity=" + this.zzc + ", layoutVerticalMargin=" + this.zzd + ", displayMode=0, triggerMode=0, sessionToken=null, windowWidthPx=" + this.zze + ", deeplinkUrl=null, adFieldEnifd=" + this.zzf + ", thirdPartyAuthCallerId=null}";
    }

    @Override // com.google.android.gms.internal.ads.zzftn
    public final float zza() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzftn
    public final int zzb() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzftn
    public final int zzc() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.ads.zzftn
    public final int zzd() {
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzftn
    public final int zze() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzftn
    public final IBinder zzf() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzftn
    @Nullable
    public final String zzg() {
        return this.zzf;
    }

    @Override // com.google.android.gms.internal.ads.zzftn
    @Nullable
    public final String zzh() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzftn
    @Nullable
    public final String zzi() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzftn
    @Nullable
    public final String zzj() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzftn
    @Nullable
    public final String zzk() {
        return null;
    }
}
