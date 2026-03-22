package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzey implements zzau {
    public final int zza;

    public zzey(int i) {
        this.zza = i;
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof zzey) && this.zza == ((zzey) obj).zza) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return this.zza;
    }

    public final String toString() {
        return "Mp4AlternateGroup: " + this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzau
    public final /* synthetic */ void zza(zzar zzarVar) {
    }
}
