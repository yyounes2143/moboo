package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzgr extends zzfxs {
    private final Map zza;

    public zzgr(Map map) {
        this.zza = map;
    }

    @Override // com.google.android.gms.internal.ads.zzfxs, java.util.Map
    public final boolean containsKey(@Nullable Object obj) {
        if (obj != null && super.containsKey(obj)) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzfxs, java.util.Map
    public final boolean containsValue(@Nullable Object obj) {
        return super.zzd(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzfxs, java.util.Map
    public final Set entrySet() {
        return zzgae.zzc(this.zza.entrySet(), new zzfvd() { // from class: com.google.android.gms.internal.ads.zzgp
            @Override // com.google.android.gms.internal.ads.zzfvd
            public final boolean zza(Object obj) {
                if (((Map.Entry) obj).getKey() != null) {
                    return true;
                }
                return false;
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzfxs, java.util.Map
    public final boolean equals(@Nullable Object obj) {
        if (obj != null && super.zze(obj)) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzfxs, java.util.Map
    @Nullable
    public final /* synthetic */ Object get(@Nullable Object obj) {
        if (obj == null) {
            return null;
        }
        return (List) this.zza.get(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzfxs, java.util.Map
    public final int hashCode() {
        return super.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzfxs, java.util.Map
    public final boolean isEmpty() {
        if (this.zza.isEmpty()) {
            return true;
        }
        if (super.size() == 1 && super.containsKey(null)) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzfxs, java.util.Map
    public final Set keySet() {
        return zzgae.zzc(this.zza.keySet(), new zzfvd() { // from class: com.google.android.gms.internal.ads.zzgq
            @Override // com.google.android.gms.internal.ads.zzfvd
            public final boolean zza(Object obj) {
                if (((String) obj) != null) {
                    return true;
                }
                return false;
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzfxs, java.util.Map
    public final int size() {
        return super.size() - (super.containsKey(null) ? 1 : 0);
    }

    @Override // com.google.android.gms.internal.ads.zzfxs, com.google.android.gms.internal.ads.zzfxt
    public final /* synthetic */ Object zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzfxs
    public final Map zzb() {
        return this.zza;
    }
}
