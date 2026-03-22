package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.nio.ByteBuffer;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public abstract class zzhfc implements zzarh {
    private static final zzhfn zzg = zzhfn.zzb(zzhfc.class);
    protected final String zza;
    long zzd;
    zzhfh zzf;
    private ByteBuffer zzh;
    long zze = -1;
    boolean zzc = true;
    boolean zzb = true;

    public zzhfc(String str) {
        this.zza = str;
    }

    private final synchronized void zzc() {
        String str;
        try {
            if (!this.zzc) {
                try {
                    zzhfn zzhfnVar = zzg;
                    String str2 = this.zza;
                    if (str2.length() != 0) {
                        str = "mem mapping ".concat(str2);
                    } else {
                        str = new String("mem mapping ");
                    }
                    zzhfnVar.zza(str);
                    this.zzh = this.zzf.zzd(this.zzd, this.zze);
                    this.zzc = true;
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzarh
    public final String zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzarh
    public final void zzb(zzhfh zzhfhVar, ByteBuffer byteBuffer, long j, zzare zzareVar) throws IOException {
        this.zzd = zzhfhVar.zzb();
        byteBuffer.remaining();
        this.zze = j;
        this.zzf = zzhfhVar;
        zzhfhVar.zze(zzhfhVar.zzb() + j);
        this.zzc = false;
        this.zzb = false;
        zzf();
    }

    public abstract void zze(ByteBuffer byteBuffer);

    public final synchronized void zzf() {
        String str;
        try {
            zzc();
            zzhfn zzhfnVar = zzg;
            String str2 = this.zza;
            if (str2.length() != 0) {
                str = "parsing details of ".concat(str2);
            } else {
                str = new String("parsing details of ");
            }
            zzhfnVar.zza(str);
            ByteBuffer byteBuffer = this.zzh;
            if (byteBuffer != null) {
                this.zzb = true;
                byteBuffer.rewind();
                zze(byteBuffer);
                if (byteBuffer.remaining() > 0) {
                    byteBuffer.slice();
                }
                this.zzh = null;
            }
        } catch (Throwable th) {
            throw th;
        }
    }
}
