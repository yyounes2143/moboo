package com.google.android.gms.tasks;

import androidx.annotation.NonNull;
import java.util.concurrent.ExecutionException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzae<T> implements zzab<T> {
    private final Object zza = new Object();
    private final int zzb;
    private final zzw zzc;
    private int zzd;
    private int zze;
    private int zzf;
    private Exception zzg;
    private boolean zzh;

    public zzae(int i, zzw zzwVar) {
        this.zzb = i;
        this.zzc = zzwVar;
    }

    private final void zza() {
        int i = this.zzd + this.zze + this.zzf;
        int i2 = this.zzb;
        if (i == i2) {
            if (this.zzg != null) {
                zzw zzwVar = this.zzc;
                int i3 = this.zze;
                StringBuilder sb = new StringBuilder(String.valueOf(i3).length() + 8 + String.valueOf(i2).length() + 24);
                sb.append(i3);
                sb.append(" out of ");
                sb.append(i2);
                sb.append(" underlying tasks failed");
                zzwVar.zzc(new ExecutionException(sb.toString(), this.zzg));
            } else if (this.zzh) {
                this.zzc.zze();
            } else {
                this.zzc.zza(null);
            }
        }
    }

    @Override // com.google.android.gms.tasks.OnCanceledListener
    public final void onCanceled() {
        synchronized (this.zza) {
            this.zzf++;
            this.zzh = true;
            zza();
        }
    }

    @Override // com.google.android.gms.tasks.OnFailureListener
    public final void onFailure(@NonNull Exception exc) {
        synchronized (this.zza) {
            this.zze++;
            this.zzg = exc;
            zza();
        }
    }

    @Override // com.google.android.gms.tasks.OnSuccessListener
    public final void onSuccess(T t) {
        synchronized (this.zza) {
            this.zzd++;
            zza();
        }
    }
}
