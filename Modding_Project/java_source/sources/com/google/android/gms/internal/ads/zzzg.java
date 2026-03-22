package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.Arrays;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzzg {
    private int zza;
    private int zzb;
    private int zzc = 0;
    private zzyz[] zzd = new zzyz[100];

    public zzzg(boolean z, int i) {
    }

    public final synchronized int zza() {
        return this.zzb * 65536;
    }

    public final synchronized zzyz zzb() {
        zzyz zzyzVar;
        try {
            this.zzb++;
            int i = this.zzc;
            if (i > 0) {
                zzyz[] zzyzVarArr = this.zzd;
                int i2 = i - 1;
                this.zzc = i2;
                zzyzVar = zzyzVarArr[i2];
                if (zzyzVar != null) {
                    zzyzVarArr[i2] = null;
                } else {
                    throw null;
                }
            } else {
                zzyzVar = new zzyz(new byte[65536], 0);
                int i3 = this.zzb;
                zzyz[] zzyzVarArr2 = this.zzd;
                int length = zzyzVarArr2.length;
                if (i3 > length) {
                    this.zzd = (zzyz[]) Arrays.copyOf(zzyzVarArr2, length + length);
                    return zzyzVar;
                }
            }
            return zzyzVar;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void zzc(zzyz zzyzVar) {
        zzyz[] zzyzVarArr = this.zzd;
        int i = this.zzc;
        this.zzc = i + 1;
        zzyzVarArr[i] = zzyzVar;
        this.zzb--;
        notifyAll();
    }

    public final synchronized void zzd(@Nullable zzza zzzaVar) {
        while (zzzaVar != null) {
            try {
                zzyz[] zzyzVarArr = this.zzd;
                int i = this.zzc;
                this.zzc = i + 1;
                zzyzVarArr[i] = zzzaVar.zzc();
                this.zzb--;
                zzzaVar = zzzaVar.zzd();
            } catch (Throwable th) {
                throw th;
            }
        }
        notifyAll();
    }

    public final synchronized void zze() {
        zzf(0);
    }

    public final synchronized void zzf(int i) {
        int i2 = this.zza;
        this.zza = i;
        if (i < i2) {
            zzg();
        }
    }

    public final synchronized void zzg() {
        int i = this.zza;
        String str = zzeu.zza;
        int max = Math.max(0, ((i + 65535) / 65536) - this.zzb);
        int i2 = this.zzc;
        if (max >= i2) {
            return;
        }
        Arrays.fill(this.zzd, max, i2, (Object) null);
        this.zzc = max;
    }
}
