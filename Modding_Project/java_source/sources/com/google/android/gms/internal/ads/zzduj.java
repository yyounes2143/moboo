package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzduj implements zzdcz {
    private final Bundle zza = new Bundle();

    @Override // com.google.android.gms.internal.ads.zzdcz
    public final synchronized void zzb(String str, String str2) {
        this.zza.putInt(str, 3);
    }

    @Override // com.google.android.gms.internal.ads.zzdcz
    public final synchronized void zzc(String str) {
        this.zza.putInt(str, 1);
    }

    @Override // com.google.android.gms.internal.ads.zzdcz
    public final synchronized void zzd(String str) {
        this.zza.putInt(str, 2);
    }

    public final synchronized Bundle zzg() {
        return new Bundle(this.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzdcz
    public final void zze() {
    }

    @Override // com.google.android.gms.internal.ads.zzdcz
    public final void zzf() {
    }

    @Override // com.google.android.gms.internal.ads.zzdcz
    public final void zza(String str) {
    }
}
