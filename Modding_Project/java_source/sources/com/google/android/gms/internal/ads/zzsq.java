package com.google.android.gms.internal.ads;

import androidx.annotation.IntRange;
import java.nio.ByteBuffer;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzsq extends zzhp {
    private long zzg;
    private int zzh;
    private int zzi;

    public zzsq() {
        super(2, 0);
        this.zzi = 32;
    }

    @Override // com.google.android.gms.internal.ads.zzhp, com.google.android.gms.internal.ads.zzhj
    public final void zzb() {
        super.zzb();
        this.zzh = 0;
    }

    public final int zzm() {
        return this.zzh;
    }

    public final long zzn() {
        return this.zzg;
    }

    public final void zzo(@IntRange(from = 1) int i) {
        this.zzi = i;
    }

    public final boolean zzp(zzhp zzhpVar) {
        ByteBuffer byteBuffer;
        zzdc.zzd(!zzhpVar.zzd(1073741824));
        zzdc.zzd(!zzhpVar.zzd(268435456));
        zzdc.zzd(!zzhpVar.zzd(4));
        if (zzq()) {
            if (this.zzh < this.zzi) {
                ByteBuffer byteBuffer2 = zzhpVar.zzc;
                if (byteBuffer2 != null && (byteBuffer = this.zzc) != null && byteBuffer.position() + byteBuffer2.remaining() > 3072000) {
                    return false;
                }
            } else {
                return false;
            }
        }
        int i = this.zzh;
        this.zzh = i + 1;
        if (i == 0) {
            this.zze = zzhpVar.zze;
            if (zzhpVar.zzd(1)) {
                zzc(1);
            }
        }
        ByteBuffer byteBuffer3 = zzhpVar.zzc;
        if (byteBuffer3 != null) {
            zzj(byteBuffer3.remaining());
            this.zzc.put(byteBuffer3);
        }
        this.zzg = zzhpVar.zze;
        return true;
    }

    public final boolean zzq() {
        if (this.zzh > 0) {
            return true;
        }
        return false;
    }
}
