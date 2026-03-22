package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.List;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzajr implements zzadn {
    private zzadq zza;
    private zzajz zzb;
    private boolean zzc;

    @EnsuresNonNullIf
    private final boolean zza(zzado zzadoVar) throws IOException {
        zzajt zzajtVar = new zzajt();
        if (zzajtVar.zzb(zzadoVar, true) && (zzajtVar.zza & 2) == 2) {
            int min = Math.min(zzajtVar.zze, 8);
            zzek zzekVar = new zzek(min);
            zzadoVar.zzh(zzekVar.zzN(), 0, min);
            zzekVar.zzL(0);
            if (zzekVar.zza() >= 5 && zzekVar.zzm() == 127 && zzekVar.zzu() == 1179402563) {
                this.zzb = new zzajq();
            } else {
                zzekVar.zzL(0);
                try {
                    if (zzaez.zzd(1, zzekVar, true)) {
                        this.zzb = new zzakb();
                    }
                } catch (zzaz unused) {
                }
                zzekVar.zzL(0);
                if (zzajv.zzd(zzekVar)) {
                    this.zzb = new zzajv();
                }
            }
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzadn
    public final int zzb(zzado zzadoVar, zzaej zzaejVar) throws IOException {
        zzdc.zzb(this.zza);
        if (this.zzb == null) {
            if (zza(zzadoVar)) {
                zzadoVar.zzj();
            } else {
                throw zzaz.zza("Failed to determine bitstream type", null);
            }
        }
        if (!this.zzc) {
            zzaet zzw = this.zza.zzw(0, 1);
            this.zza.zzG();
            this.zzb.zzh(this.zza, zzw);
            this.zzc = true;
        }
        return this.zzb.zze(zzadoVar, zzaejVar);
    }

    @Override // com.google.android.gms.internal.ads.zzadn
    public final /* synthetic */ List zzd() {
        return zzfyc.zzn();
    }

    @Override // com.google.android.gms.internal.ads.zzadn
    public final void zze(zzadq zzadqVar) {
        this.zza = zzadqVar;
    }

    @Override // com.google.android.gms.internal.ads.zzadn
    public final void zzf(long j, long j2) {
        zzajz zzajzVar = this.zzb;
        if (zzajzVar != null) {
            zzajzVar.zzj(j, j2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzadn
    public final boolean zzi(zzado zzadoVar) throws IOException {
        try {
            return zza(zzadoVar);
        } catch (zzaz unused) {
            return false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzadn
    public final /* synthetic */ zzadn zzc() {
        return this;
    }
}
