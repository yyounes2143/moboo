package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.Collections;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzaod {
    public final int zza;
    @Nullable
    public final String zzb;
    public final int zzc;
    public final List zzd;
    public final byte[] zze;

    public zzaod(int i, @Nullable String str, int i2, @Nullable List list, byte[] bArr) {
        List unmodifiableList;
        this.zza = i;
        this.zzb = str;
        this.zzc = i2;
        if (list == null) {
            unmodifiableList = Collections.EMPTY_LIST;
        } else {
            unmodifiableList = Collections.unmodifiableList(list);
        }
        this.zzd = unmodifiableList;
        this.zze = bArr;
    }

    public final int zza() {
        int i = this.zzc;
        if (i != 2) {
            if (i != 3) {
                return 0;
            }
            return 512;
        }
        return 2048;
    }
}
