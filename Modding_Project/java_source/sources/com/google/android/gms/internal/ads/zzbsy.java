package com.google.android.gms.internal.ads;

import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.nativead.NativeCustomFormatAd;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbsy {
    private final NativeCustomFormatAd.OnCustomFormatAdLoadedListener zza;
    @Nullable
    private final NativeCustomFormatAd.OnCustomClickListener zzb;
    @Nullable
    @GuardedBy("this")
    private NativeCustomFormatAd zzc;

    public zzbsy(NativeCustomFormatAd.OnCustomFormatAdLoadedListener onCustomFormatAdLoadedListener, @Nullable NativeCustomFormatAd.OnCustomClickListener onCustomClickListener) {
        this.zza = onCustomFormatAdLoadedListener;
        this.zzb = onCustomClickListener;
    }

    public final synchronized NativeCustomFormatAd zzf(zzbha zzbhaVar) {
        NativeCustomFormatAd nativeCustomFormatAd = this.zzc;
        if (nativeCustomFormatAd != null) {
            return nativeCustomFormatAd;
        }
        zzbsz zzbszVar = new zzbsz(zzbhaVar);
        this.zzc = zzbszVar;
        return zzbszVar;
    }

    @Nullable
    public final zzbhk zza() {
        if (this.zzb == null) {
            return null;
        }
        return new zzbsv(this, null);
    }

    public final zzbhn zzb() {
        return new zzbsw(this, null);
    }
}
