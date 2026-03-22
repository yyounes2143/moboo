package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzck {
    private final zzfyc zza;
    private final List zzb = new ArrayList();
    private ByteBuffer[] zzc = new ByteBuffer[0];
    private boolean zzd;

    public zzck(zzfyc zzfycVar) {
        this.zza = zzfycVar;
        zzcl zzclVar = zzcl.zza;
        this.zzd = false;
    }

    private final int zzi() {
        return this.zzc.length - 1;
    }

    private final void zzj(ByteBuffer byteBuffer) {
        boolean z;
        ByteBuffer byteBuffer2;
        do {
            z = false;
            for (int i = 0; i <= zzi(); i++) {
                if (!this.zzc[i].hasRemaining()) {
                    List list = this.zzb;
                    zzcn zzcnVar = (zzcn) list.get(i);
                    if (zzcnVar.zzh()) {
                        if (!this.zzc[i].hasRemaining() && i < zzi()) {
                            ((zzcn) list.get(i + 1)).zzd();
                        }
                    } else {
                        if (i > 0) {
                            byteBuffer2 = this.zzc[i - 1];
                        } else if (byteBuffer.hasRemaining()) {
                            byteBuffer2 = byteBuffer;
                        } else {
                            byteBuffer2 = zzcn.zza;
                        }
                        zzcnVar.zze(byteBuffer2);
                        this.zzc[i] = zzcnVar.zzb();
                        boolean z2 = true;
                        if (byteBuffer2.remaining() - byteBuffer2.remaining() <= 0 && !this.zzc[i].hasRemaining()) {
                            z2 = false;
                        }
                        z |= z2;
                    }
                }
            }
        } while (z);
    }

    public final boolean equals(@Nullable Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzck)) {
            return false;
        }
        zzfyc zzfycVar = this.zza;
        int size = zzfycVar.size();
        zzfyc zzfycVar2 = ((zzck) obj).zza;
        if (size != zzfycVar2.size()) {
            return false;
        }
        for (int i = 0; i < zzfycVar.size(); i++) {
            if (zzfycVar.get(i) != zzfycVar2.get(i)) {
                return false;
            }
        }
        return true;
    }

    public final int hashCode() {
        return this.zza.hashCode();
    }

    public final zzcl zza(zzcl zzclVar) throws zzcm {
        zzcl zzclVar2 = zzcl.zza;
        if (!zzclVar.equals(zzclVar2)) {
            int i = 0;
            while (true) {
                zzfyc zzfycVar = this.zza;
                if (i < zzfycVar.size()) {
                    zzcn zzcnVar = (zzcn) zzfycVar.get(i);
                    zzcl zza = zzcnVar.zza(zzclVar);
                    if (zzcnVar.zzg()) {
                        zzdc.zzf(!zza.equals(zzclVar2));
                        zzclVar = zza;
                    }
                    i++;
                } else {
                    return zzclVar;
                }
            }
        } else {
            throw new zzcm("Unhandled input format:", zzclVar);
        }
    }

    public final ByteBuffer zzb() {
        if (!zzh()) {
            return zzcn.zza;
        }
        ByteBuffer byteBuffer = this.zzc[zzi()];
        if (byteBuffer.hasRemaining()) {
            return byteBuffer;
        }
        zzj(zzcn.zza);
        return this.zzc[zzi()];
    }

    public final void zzc() {
        List list = this.zzb;
        list.clear();
        this.zzd = false;
        int i = 0;
        while (true) {
            zzfyc zzfycVar = this.zza;
            if (i >= zzfycVar.size()) {
                break;
            }
            zzcn zzcnVar = (zzcn) zzfycVar.get(i);
            zzcnVar.zzc();
            if (zzcnVar.zzg()) {
                list.add(zzcnVar);
            }
            i++;
        }
        this.zzc = new ByteBuffer[list.size()];
        for (int i2 = 0; i2 <= zzi(); i2++) {
            this.zzc[i2] = ((zzcn) list.get(i2)).zzb();
        }
    }

    public final void zzd() {
        if (zzh() && !this.zzd) {
            this.zzd = true;
            ((zzcn) this.zzb.get(0)).zzd();
        }
    }

    public final void zze(ByteBuffer byteBuffer) {
        if (zzh() && !this.zzd) {
            zzj(byteBuffer);
        }
    }

    public final void zzf() {
        int i = 0;
        while (true) {
            zzfyc zzfycVar = this.zza;
            if (i < zzfycVar.size()) {
                zzcn zzcnVar = (zzcn) zzfycVar.get(i);
                zzcnVar.zzc();
                zzcnVar.zzf();
                i++;
            } else {
                this.zzc = new ByteBuffer[0];
                zzcl zzclVar = zzcl.zza;
                this.zzd = false;
                return;
            }
        }
    }

    public final boolean zzg() {
        if (this.zzd && ((zzcn) this.zzb.get(zzi())).zzh() && !this.zzc[zzi()].hasRemaining()) {
            return true;
        }
        return false;
    }

    public final boolean zzh() {
        if (!this.zzb.isEmpty()) {
            return true;
        }
        return false;
    }
}
