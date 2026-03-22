package com.google.android.gms.measurement.internal;

import androidx.annotation.WorkerThread;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public abstract class zzg extends zzf {
    private boolean zza;

    public zzg(zzic zzicVar) {
        super(zzicVar);
        this.zzu.zzF();
    }

    public final boolean zza() {
        if (this.zza) {
            return true;
        }
        return false;
    }

    public final void zzb() {
        if (zza()) {
            return;
        }
        throw new IllegalStateException("Not initialized");
    }

    public final void zzc() {
        if (!this.zza) {
            if (!zze()) {
                this.zzu.zzG();
                this.zza = true;
                return;
            }
            return;
        }
        throw new IllegalStateException("Can't initialize twice");
    }

    public final void zzd() {
        if (!this.zza) {
            zzf();
            this.zzu.zzG();
            this.zza = true;
            return;
        }
        throw new IllegalStateException("Can't initialize twice");
    }

    public abstract boolean zze();

    @WorkerThread
    public void zzf() {
    }
}
