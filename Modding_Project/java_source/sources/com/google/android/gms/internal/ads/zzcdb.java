package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzcdb implements Iterable {
    private final List zza = new ArrayList();

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        return this.zza.iterator();
    }

    @Nullable
    public final zzcda zza(zzcbw zzcbwVar) {
        Iterator it = iterator();
        while (it.hasNext()) {
            zzcda zzcdaVar = (zzcda) it.next();
            if (zzcdaVar.zza == zzcbwVar) {
                return zzcdaVar;
            }
        }
        return null;
    }

    public final void zzb(zzcda zzcdaVar) {
        this.zza.add(zzcdaVar);
    }

    public final void zzc(zzcda zzcdaVar) {
        this.zza.remove(zzcdaVar);
    }

    public final boolean zzd(zzcbw zzcbwVar) {
        ArrayList arrayList = new ArrayList();
        Iterator it = iterator();
        while (it.hasNext()) {
            zzcda zzcdaVar = (zzcda) it.next();
            if (zzcdaVar.zza == zzcbwVar) {
                arrayList.add(zzcdaVar);
            }
        }
        int i = 0;
        if (arrayList.isEmpty()) {
            return false;
        }
        int size = arrayList.size();
        while (i < size) {
            Object obj = arrayList.get(i);
            i++;
            ((zzcda) obj).zzb.zzf();
        }
        return true;
    }
}
