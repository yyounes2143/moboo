package com.google.android.gms.ads.nonagon.signalgeneration;

import androidx.annotation.Nullable;
import com.google.android.gms.internal.ads.zzbca;
import com.google.android.gms.internal.ads.zzbyz;
import java.util.HashSet;
import java.util.Locale;
import java.util.Set;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzaz {
    private final String zza;
    @Nullable
    private final String zzb;
    @Nullable
    private final zzbyz zzc;

    public /* synthetic */ zzaz(zzax zzaxVar, zzay zzayVar) {
        String str;
        String str2;
        zzbyz zzbyzVar;
        str = zzaxVar.zza;
        this.zza = str;
        str2 = zzaxVar.zzb;
        this.zzb = str2;
        zzbyzVar = zzaxVar.zzc;
        this.zzc = zzbyzVar;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public final zzbca.zza.EnumC0040zza zza() {
        char c;
        String str = this.zza;
        switch (str.hashCode()) {
            case -1999289321:
                if (str.equals("NATIVE")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case -1372958932:
                if (str.equals("INTERSTITIAL")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 543046670:
                if (str.equals("REWARDED")) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case 1951953708:
                if (str.equals("BANNER")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        if (c != 0) {
            if (c != 1) {
                if (c != 2) {
                    if (c != 3) {
                        return zzbca.zza.EnumC0040zza.AD_INITIATER_UNSPECIFIED;
                    }
                    return zzbca.zza.EnumC0040zza.REWARD_BASED_VIDEO_AD;
                }
                return zzbca.zza.EnumC0040zza.AD_LOADER;
            }
            return zzbca.zza.EnumC0040zza.INTERSTITIAL;
        }
        return zzbca.zza.EnumC0040zza.BANNER;
    }

    @Nullable
    public final zzbyz zzb() {
        return this.zzc;
    }

    public final String zzc() {
        return this.zza.toLowerCase(Locale.ROOT);
    }

    @Nullable
    public final String zzd() {
        return this.zzb;
    }

    public final Set zze() {
        HashSet hashSet = new HashSet();
        hashSet.add(this.zza.toLowerCase(Locale.ROOT));
        return hashSet;
    }
}
