package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import androidx.annotation.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzegt {
    final String zza;
    final String zzb;
    int zzc;
    long zzd;
    @Nullable
    final Integer zze;

    public zzegt(String str, String str2, int i, long j, @Nullable Integer num) {
        this.zza = str;
        this.zzb = str2;
        this.zzc = i;
        this.zzd = j;
        this.zze = num;
    }

    public final String toString() {
        Integer num;
        String str = this.zza + "." + this.zzc + "." + this.zzd;
        String str2 = this.zzb;
        if (!TextUtils.isEmpty(str2)) {
            str = str + "." + str2;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzbO)).booleanValue() && (num = this.zze) != null && !TextUtils.isEmpty(str2)) {
            return str + "." + num;
        }
        return str;
    }
}
