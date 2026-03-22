package com.google.android.gms.internal.ads;

import androidx.annotation.FloatRange;
import androidx.annotation.Nullable;
import java.math.RoundingMode;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ShortBuffer;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzcq implements zzcn {
    private int zzb;
    private float zzc = 1.0f;
    private float zzd = 1.0f;
    private zzcl zze;
    private zzcl zzf;
    private zzcl zzg;
    private zzcl zzh;
    private boolean zzi;
    @Nullable
    private zzcp zzj;
    private ByteBuffer zzk;
    private ShortBuffer zzl;
    private ByteBuffer zzm;
    private long zzn;
    private long zzo;
    private boolean zzp;

    public zzcq() {
        zzcl zzclVar = zzcl.zza;
        this.zze = zzclVar;
        this.zzf = zzclVar;
        this.zzg = zzclVar;
        this.zzh = zzclVar;
        ByteBuffer byteBuffer = zzcn.zza;
        this.zzk = byteBuffer;
        this.zzl = byteBuffer.asShortBuffer();
        this.zzm = byteBuffer;
        this.zzb = -1;
    }

    @Override // com.google.android.gms.internal.ads.zzcn
    public final zzcl zza(zzcl zzclVar) throws zzcm {
        if (zzclVar.zzd == 2) {
            int i = this.zzb;
            if (i == -1) {
                i = zzclVar.zzb;
            }
            this.zze = zzclVar;
            zzcl zzclVar2 = new zzcl(i, zzclVar.zzc, 2);
            this.zzf = zzclVar2;
            this.zzi = true;
            return zzclVar2;
        }
        throw new zzcm("Unhandled input format:", zzclVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcn
    public final ByteBuffer zzb() {
        int zza;
        zzcp zzcpVar = this.zzj;
        if (zzcpVar != null && (zza = zzcpVar.zza()) > 0) {
            if (this.zzk.capacity() < zza) {
                ByteBuffer order = ByteBuffer.allocateDirect(zza).order(ByteOrder.nativeOrder());
                this.zzk = order;
                this.zzl = order.asShortBuffer();
            } else {
                this.zzk.clear();
                this.zzl.clear();
            }
            zzcpVar.zzd(this.zzl);
            this.zzo += zza;
            this.zzk.limit(zza);
            this.zzm = this.zzk;
        }
        ByteBuffer byteBuffer = this.zzm;
        this.zzm = zzcn.zza;
        return byteBuffer;
    }

    @Override // com.google.android.gms.internal.ads.zzcn
    public final void zzc() {
        if (zzg()) {
            zzcl zzclVar = this.zze;
            this.zzg = zzclVar;
            zzcl zzclVar2 = this.zzf;
            this.zzh = zzclVar2;
            if (this.zzi) {
                this.zzj = new zzcp(zzclVar.zzb, zzclVar.zzc, this.zzc, this.zzd, zzclVar2.zzb);
            } else {
                zzcp zzcpVar = this.zzj;
                if (zzcpVar != null) {
                    zzcpVar.zzc();
                }
            }
        }
        this.zzm = zzcn.zza;
        this.zzn = 0L;
        this.zzo = 0L;
        this.zzp = false;
    }

    @Override // com.google.android.gms.internal.ads.zzcn
    public final void zzd() {
        zzcp zzcpVar = this.zzj;
        if (zzcpVar != null) {
            zzcpVar.zze();
        }
        this.zzp = true;
    }

    @Override // com.google.android.gms.internal.ads.zzcn
    public final void zze(ByteBuffer byteBuffer) {
        if (!byteBuffer.hasRemaining()) {
            return;
        }
        zzcp zzcpVar = this.zzj;
        zzcpVar.getClass();
        ShortBuffer asShortBuffer = byteBuffer.asShortBuffer();
        int remaining = byteBuffer.remaining();
        this.zzn += remaining;
        zzcpVar.zzf(asShortBuffer);
        byteBuffer.position(byteBuffer.position() + remaining);
    }

    @Override // com.google.android.gms.internal.ads.zzcn
    public final void zzf() {
        this.zzc = 1.0f;
        this.zzd = 1.0f;
        zzcl zzclVar = zzcl.zza;
        this.zze = zzclVar;
        this.zzf = zzclVar;
        this.zzg = zzclVar;
        this.zzh = zzclVar;
        ByteBuffer byteBuffer = zzcn.zza;
        this.zzk = byteBuffer;
        this.zzl = byteBuffer.asShortBuffer();
        this.zzm = byteBuffer;
        this.zzb = -1;
        this.zzi = false;
        this.zzj = null;
        this.zzn = 0L;
        this.zzo = 0L;
        this.zzp = false;
    }

    @Override // com.google.android.gms.internal.ads.zzcn
    public final boolean zzg() {
        if (this.zzf.zzb != -1) {
            if (Math.abs(this.zzc - 1.0f) >= 1.0E-4f || Math.abs(this.zzd - 1.0f) >= 1.0E-4f || this.zzf.zzb != this.zze.zzb) {
                return true;
            }
            return false;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzcn
    public final boolean zzh() {
        if (!this.zzp) {
            return false;
        }
        zzcp zzcpVar = this.zzj;
        if (zzcpVar != null && zzcpVar.zza() != 0) {
            return false;
        }
        return true;
    }

    public final long zzi(long j) {
        long j2 = this.zzo;
        if (j2 >= 1024) {
            long j3 = this.zzn;
            zzcp zzcpVar = this.zzj;
            zzcpVar.getClass();
            long zzb = j3 - zzcpVar.zzb();
            int i = this.zzh.zzb;
            int i2 = this.zzg.zzb;
            if (i == i2) {
                return zzeu.zzu(j, zzb, j2, RoundingMode.DOWN);
            }
            return zzeu.zzu(j, zzb * i, j2 * i2, RoundingMode.DOWN);
        }
        return (long) (this.zzc * j);
    }

    public final void zzj(@FloatRange(from = 0.0d, fromInclusive = false) float f) {
        boolean z;
        if (f > 0.0f) {
            z = true;
        } else {
            z = false;
        }
        zzdc.zzd(z);
        if (this.zzd != f) {
            this.zzd = f;
            this.zzi = true;
        }
    }

    public final void zzk(@FloatRange(from = 0.0d, fromInclusive = false) float f) {
        boolean z;
        if (f > 0.0f) {
            z = true;
        } else {
            z = false;
        }
        zzdc.zzd(z);
        if (this.zzc != f) {
            this.zzc = f;
            this.zzi = true;
        }
    }
}
