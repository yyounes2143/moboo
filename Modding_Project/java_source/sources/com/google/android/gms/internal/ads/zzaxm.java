package com.google.android.gms.internal.ads;

import java.lang.reflect.InvocationTargetException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzaxm extends zzayb {
    private final zzavr zzh;
    private final long zzi;
    private final long zzj;

    public zzaxm(zzawo zzawoVar, String str, String str2, zzask zzaskVar, int i, int i2, zzavr zzavrVar, long j, long j2) {
        super(zzawoVar, "Q2alXHIIp2vvtZN4ZNw4W3dXvS5FZxkSx8F3noC2XP6gq0/XB0ulYQV32h8ZSW0i", "bHzouddPHTqhUNsOeni/FRK++KVVMe5yU+yUqilZ/gg=", zzaskVar, i, 11);
        this.zzh = zzavrVar;
        this.zzi = j;
        this.zzj = j2;
    }

    @Override // com.google.android.gms.internal.ads.zzayb
    public final void zza() throws IllegalAccessException, InvocationTargetException {
        zzavr zzavrVar = this.zzh;
        if (zzavrVar != null) {
            zzavp zzavpVar = new zzavp((String) this.zze.invoke(null, zzavrVar.zzb(), Long.valueOf(this.zzi), Long.valueOf(this.zzj)));
            zzask zzaskVar = this.zzd;
            synchronized (zzaskVar) {
                try {
                    zzaskVar.zzx(zzavpVar.zza.longValue());
                    if (zzavpVar.zzb.longValue() >= 0) {
                        zzaskVar.zzO(zzavpVar.zzb.longValue());
                    }
                    if (zzavpVar.zzc.longValue() >= 0) {
                        zzaskVar.zzf(zzavpVar.zzc.longValue());
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }
}
