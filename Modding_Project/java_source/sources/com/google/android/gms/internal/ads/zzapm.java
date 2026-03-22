package com.google.android.gms.internal.ads;

import android.text.TextUtils;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzapm {
    private final String zza;
    private final String zzb;

    public zzapm(String str, String str2) {
        this.zza = str;
        this.zzb = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzapm.class == obj.getClass()) {
            zzapm zzapmVar = (zzapm) obj;
            if (TextUtils.equals(this.zza, zzapmVar.zza) && TextUtils.equals(this.zzb, zzapmVar.zzb)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return (this.zza.hashCode() * 31) + this.zzb.hashCode();
    }

    public final String toString() {
        return "Header[name=" + this.zza + ",value=" + this.zzb + "]";
    }

    public final String zza() {
        return this.zza;
    }

    public final String zzb() {
        return this.zzb;
    }
}
