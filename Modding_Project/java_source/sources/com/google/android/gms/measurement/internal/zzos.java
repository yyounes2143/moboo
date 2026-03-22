package com.google.android.gms.measurement.internal;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public abstract class zzos extends zzol {
    private boolean zza;

    public zzos(zzpg zzpgVar) {
        super(zzpgVar);
        this.zzg.zzae();
    }

    public final boolean zzav() {
        if (this.zza) {
            return true;
        }
        return false;
    }

    public final void zzaw() {
        if (zzav()) {
            return;
        }
        throw new IllegalStateException("Not initialized");
    }

    public final void zzax() {
        if (!this.zza) {
            zzbb();
            this.zzg.zzaf();
            this.zza = true;
            return;
        }
        throw new IllegalStateException("Can't initialize twice");
    }

    public abstract boolean zzbb();
}
