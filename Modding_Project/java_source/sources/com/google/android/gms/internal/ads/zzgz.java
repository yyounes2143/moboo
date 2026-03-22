package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.io.IOException;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgz extends zzgx {
    public final int zzc;

    public zzgz(int i, @Nullable String str, @Nullable IOException iOException, Map map, zzgl zzglVar, byte[] bArr) {
        super("Response code: " + i, iOException, zzglVar, 2004, 1);
        this.zzc = i;
    }
}
