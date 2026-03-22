package com.google.android.gms.internal.ads;

import j$.util.Objects;
import java.util.Arrays;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzfyg extends zzfxv {
    Object[] zzd;
    private int zze;

    public zzfyg() {
        super(4);
    }

    @Override // com.google.android.gms.internal.ads.zzfxv, com.google.android.gms.internal.ads.zzfxw
    public final /* bridge */ /* synthetic */ zzfxw zzb(Object obj) {
        zzf(obj);
        return this;
    }

    public final zzfyg zzf(Object obj) {
        obj.getClass();
        if (this.zzd != null) {
            int zzh = zzfyh.zzh(this.zzb);
            Object[] objArr = this.zzd;
            if (zzh <= objArr.length) {
                int length = objArr.length - 1;
                int hashCode = obj.hashCode();
                int zza = zzfxu.zza(hashCode);
                while (true) {
                    int i = zza & length;
                    Object[] objArr2 = this.zzd;
                    Object obj2 = objArr2[i];
                    if (obj2 == null) {
                        objArr2[i] = obj;
                        this.zze += hashCode;
                        super.zza(obj);
                        return this;
                    } else if (!obj2.equals(obj)) {
                        zza = i + 1;
                    } else {
                        return this;
                    }
                }
            }
        }
        this.zzd = null;
        super.zza(obj);
        return this;
    }

    public final zzfyg zzg(Object... objArr) {
        if (this.zzd != null) {
            for (int i = 0; i < 2; i++) {
                zzf(objArr[i]);
            }
            return this;
        }
        zzd(objArr, 2);
        return this;
    }

    public final zzfyg zzh(Iterable iterable) {
        iterable.getClass();
        if (this.zzd != null) {
            for (Object obj : iterable) {
                zzf(obj);
            }
            return this;
        }
        super.zzc(iterable);
        return this;
    }

    public final zzfyh zzi() {
        zzfyh zzv;
        boolean zzw;
        int i = this.zzb;
        if (i != 0) {
            if (i != 1) {
                if (this.zzd == null || zzfyh.zzh(i) != this.zzd.length) {
                    zzv = zzfyh.zzv(this.zzb, this.zza);
                    this.zzb = zzv.size();
                } else {
                    int i2 = this.zzb;
                    Object[] objArr = this.zza;
                    zzw = zzfyh.zzw(i2, objArr.length);
                    if (zzw) {
                        objArr = Arrays.copyOf(objArr, i2);
                    }
                    int i3 = this.zze;
                    Object[] objArr2 = this.zzd;
                    zzv = new zzfzu(objArr, i3, objArr2, objArr2.length - 1, this.zzb);
                }
                this.zzc = true;
                this.zzd = null;
                return zzv;
            }
            Object obj = this.zza[0];
            Objects.requireNonNull(obj);
            return new zzgaf(obj);
        }
        return zzfzu.zza;
    }

    public zzfyg(int i, boolean z) {
        super(i);
        this.zzd = new Object[zzfyh.zzh(i)];
    }
}
