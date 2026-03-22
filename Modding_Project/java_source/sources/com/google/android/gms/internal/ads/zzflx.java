package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzflx {
    private static final zzflx zza = new zzflx();
    private final ArrayList zzb = new ArrayList();
    private final ArrayList zzc = new ArrayList();

    private zzflx() {
    }

    public static zzflx zza() {
        return zza;
    }

    public final Collection zzb() {
        return Collections.unmodifiableCollection(this.zzc);
    }

    public final Collection zzc() {
        return Collections.unmodifiableCollection(this.zzb);
    }

    public final void zzd(zzflf zzflfVar) {
        this.zzb.add(zzflfVar);
    }

    public final void zze(zzflf zzflfVar) {
        ArrayList arrayList = this.zzb;
        boolean zzg = zzg();
        arrayList.remove(zzflfVar);
        this.zzc.remove(zzflfVar);
        if (zzg && !zzg()) {
            zzfmf.zzb().zzg();
        }
    }

    public final void zzf(zzflf zzflfVar) {
        ArrayList arrayList = this.zzc;
        boolean zzg = zzg();
        arrayList.add(zzflfVar);
        if (!zzg) {
            zzfmf.zzb().zzf();
        }
    }

    public final boolean zzg() {
        if (this.zzc.size() > 0) {
            return true;
        }
        return false;
    }
}
