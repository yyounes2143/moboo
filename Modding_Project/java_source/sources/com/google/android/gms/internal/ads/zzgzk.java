package com.google.android.gms.internal.ads;

import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzgzk implements Map.Entry {
    private final Map.Entry zza;

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.zza.getKey();
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        if (((zzgzn) this.zza.getValue()) == null) {
            return null;
        }
        throw null;
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        if (obj instanceof zzhad) {
            return ((zzgzn) this.zza.getValue()).zzc((zzhad) obj);
        }
        throw new IllegalArgumentException("LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite");
    }

    public final zzgzn zza() {
        return (zzgzn) this.zza.getValue();
    }
}
