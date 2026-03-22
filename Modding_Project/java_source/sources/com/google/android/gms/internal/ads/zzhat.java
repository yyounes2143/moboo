package com.google.android.gms.internal.ads;

import java.util.ArrayDeque;
import java.util.Iterator;
import java.util.NoSuchElementException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzhat implements Iterator {
    private final ArrayDeque zza;
    private zzgxg zzb;

    public /* synthetic */ zzhat(zzgxk zzgxkVar, zzhau zzhauVar) {
        zzgxk zzgxkVar2;
        if (zzgxkVar instanceof zzhav) {
            zzhav zzhavVar = (zzhav) zzgxkVar;
            ArrayDeque arrayDeque = new ArrayDeque(zzhavVar.zzf());
            this.zza = arrayDeque;
            arrayDeque.push(zzhavVar);
            zzgxkVar2 = zzhavVar.zzd;
            this.zzb = zzb(zzgxkVar2);
            return;
        }
        this.zza = null;
        this.zzb = (zzgxg) zzgxkVar;
    }

    private final zzgxg zzb(zzgxk zzgxkVar) {
        while (zzgxkVar instanceof zzhav) {
            zzhav zzhavVar = (zzhav) zzgxkVar;
            this.zza.push(zzhavVar);
            zzgxkVar = zzhavVar.zzd;
        }
        return (zzgxg) zzgxkVar;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.zzb != null) {
            return true;
        }
        return false;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Iterator
    /* renamed from: zza */
    public final zzgxg next() {
        zzgxg zzgxgVar;
        zzgxk zzgxkVar;
        zzgxg zzgxgVar2 = this.zzb;
        if (zzgxgVar2 != null) {
            do {
                ArrayDeque arrayDeque = this.zza;
                zzgxgVar = null;
                if (arrayDeque == null || arrayDeque.isEmpty()) {
                    break;
                }
                zzgxkVar = ((zzhav) arrayDeque.pop()).zze;
                zzgxgVar = zzb(zzgxkVar);
            } while (zzgxgVar.zzd() == 0);
            this.zzb = zzgxgVar;
            return zzgxgVar2;
        }
        throw new NoSuchElementException();
    }
}
