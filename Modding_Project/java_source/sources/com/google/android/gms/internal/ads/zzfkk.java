package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.google.android.gms.ads.AdFormat;
import j$.util.Objects;
import java.util.Locale;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfkk {
    private final String zza;
    @Nullable
    private final AdFormat zzb;

    public /* synthetic */ zzfkk(zzfki zzfkiVar, zzfkj zzfkjVar) {
        String str;
        AdFormat adFormat;
        str = zzfkiVar.zza;
        this.zza = str;
        adFormat = zzfkiVar.zzb;
        this.zzb = adFormat;
    }

    public final boolean equals(@Nullable Object obj) {
        AdFormat adFormat;
        AdFormat adFormat2;
        if (obj instanceof zzfkk) {
            zzfkk zzfkkVar = (zzfkk) obj;
            if (this.zza.equals(zzfkkVar.zza) && (adFormat = this.zzb) != null && (adFormat2 = zzfkkVar.zzb) != null && adFormat.equals(adFormat2)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(this.zza, this.zzb);
    }

    public final String zza() {
        AdFormat adFormat = this.zzb;
        if (adFormat == null) {
            return "unknown";
        }
        return adFormat.name().toLowerCase(Locale.ENGLISH);
    }

    public final String zzb() {
        return this.zza;
    }
}
