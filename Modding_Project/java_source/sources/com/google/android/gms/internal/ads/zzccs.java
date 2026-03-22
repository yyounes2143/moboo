package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Iterator;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzccs {
    private long zza;

    public final long zza(ByteBuffer byteBuffer) {
        zzark zzarkVar;
        zzarj zzarjVar;
        long j = this.zza;
        if (j > 0) {
            return j;
        }
        try {
            ByteBuffer duplicate = byteBuffer.duplicate();
            duplicate.flip();
            Iterator it = new zzarf(new zzccr(duplicate), zzccv.zzb).zzd().iterator();
            while (true) {
                zzarkVar = null;
                if (it.hasNext()) {
                    zzarh zzarhVar = (zzarh) it.next();
                    if (zzarhVar instanceof zzarj) {
                        zzarjVar = (zzarj) zzarhVar;
                        break;
                    }
                } else {
                    zzarjVar = null;
                    break;
                }
            }
            Iterator it2 = zzarjVar.zzd().iterator();
            while (true) {
                if (!it2.hasNext()) {
                    break;
                }
                zzarh zzarhVar2 = (zzarh) it2.next();
                if (zzarhVar2 instanceof zzark) {
                    zzarkVar = (zzark) zzarhVar2;
                    break;
                }
            }
            long zzc = (zzarkVar.zzc() * 1000) / zzarkVar.zzd();
            this.zza = zzc;
            return zzc;
        } catch (IOException | RuntimeException unused) {
            return 0L;
        }
    }
}
