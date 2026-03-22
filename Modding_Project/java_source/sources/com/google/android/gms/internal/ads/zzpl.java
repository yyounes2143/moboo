package com.google.android.gms.internal.ads;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzpl {
    private boolean zza;
    private boolean zzb;
    private boolean zzc;

    public final zzpl zza(boolean z) {
        this.zza = true;
        return this;
    }

    public final zzpl zzb(boolean z) {
        this.zzb = z;
        return this;
    }

    public final zzpl zzc(boolean z) {
        this.zzc = z;
        return this;
    }

    public final zzpn zzd() {
        if (!this.zza && (this.zzb || this.zzc)) {
            throw new IllegalStateException("Secondary offload attribute fields are true but primary isFormatSupported is false");
        }
        return new zzpn(this, null);
    }
}
