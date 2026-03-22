package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.util.Date;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzark extends zzhfe {
    private Date zzg;
    private Date zzh;
    private long zzi;
    private long zzj;
    private double zzk;
    private float zzl;
    private zzhfo zzm;
    private long zzn;

    public zzark() {
        super("mvhd");
        this.zzk = 1.0d;
        this.zzl = 1.0f;
        this.zzm = zzhfo.zza;
    }

    public final String toString() {
        return "MovieHeaderBox[creationTime=" + this.zzg + ";modificationTime=" + this.zzh + ";timescale=" + this.zzi + ";duration=" + this.zzj + ";rate=" + this.zzk + ";volume=" + this.zzl + ";matrix=" + this.zzm + ";nextTrackId=" + this.zzn + "]";
    }

    public final long zzc() {
        return this.zzj;
    }

    public final long zzd() {
        return this.zzi;
    }

    @Override // com.google.android.gms.internal.ads.zzhfc
    public final void zze(ByteBuffer byteBuffer) {
        zzh(byteBuffer);
        if (zzg() == 1) {
            this.zzg = zzhfj.zza(zzarg.zzf(byteBuffer));
            this.zzh = zzhfj.zza(zzarg.zzf(byteBuffer));
            this.zzi = zzarg.zze(byteBuffer);
            this.zzj = zzarg.zzf(byteBuffer);
        } else {
            this.zzg = zzhfj.zza(zzarg.zze(byteBuffer));
            this.zzh = zzhfj.zza(zzarg.zze(byteBuffer));
            this.zzi = zzarg.zze(byteBuffer);
            this.zzj = zzarg.zze(byteBuffer);
        }
        this.zzk = zzarg.zzb(byteBuffer);
        byte[] bArr = new byte[2];
        byteBuffer.get(bArr);
        this.zzl = ((short) ((bArr[1] & 255) | ((short) (65280 & (bArr[0] << 8))))) / 256.0f;
        zzarg.zzd(byteBuffer);
        zzarg.zze(byteBuffer);
        zzarg.zze(byteBuffer);
        double zzb = zzarg.zzb(byteBuffer);
        double zzb2 = zzarg.zzb(byteBuffer);
        double zza = zzarg.zza(byteBuffer);
        this.zzm = new zzhfo(zzb, zzb2, zzarg.zzb(byteBuffer), zzarg.zzb(byteBuffer), zza, zzarg.zza(byteBuffer), zzarg.zza(byteBuffer), zzarg.zzb(byteBuffer), zzarg.zzb(byteBuffer));
        byteBuffer.getInt();
        byteBuffer.getInt();
        byteBuffer.getInt();
        byteBuffer.getInt();
        byteBuffer.getInt();
        byteBuffer.getInt();
        this.zzn = zzarg.zze(byteBuffer);
    }
}
