package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzez extends zzfc {
    public final long zza;
    public final List zzb;
    public final List zzc;

    public zzez(int i, long j) {
        super(i, null);
        this.zza = j;
        this.zzb = new ArrayList();
        this.zzc = new ArrayList();
    }

    @Override // com.google.android.gms.internal.ads.zzfc
    public final String toString() {
        List list = this.zzb;
        String zze = zzfc.zze(this.zzd);
        String arrays = Arrays.toString(list.toArray());
        String arrays2 = Arrays.toString(this.zzc.toArray());
        return zze + " leaves: " + arrays + " containers: " + arrays2;
    }

    @Nullable
    public final zzez zza(int i) {
        List list = this.zzc;
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            zzez zzezVar = (zzez) list.get(i2);
            if (zzezVar.zzd == i) {
                return zzezVar;
            }
        }
        return null;
    }

    @Nullable
    public final zzfa zzb(int i) {
        List list = this.zzb;
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            zzfa zzfaVar = (zzfa) list.get(i2);
            if (zzfaVar.zzd == i) {
                return zzfaVar;
            }
        }
        return null;
    }

    public final void zzc(zzez zzezVar) {
        this.zzc.add(zzezVar);
    }

    public final void zzd(zzfa zzfaVar) {
        this.zzb.add(zzfaVar);
    }
}
