package com.google.android.gms.internal.ads;

import android.os.Bundle;
import androidx.annotation.Nullable;
import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzedk {
    private final String zzc;
    @Nullable
    private zzfbx zzd = null;
    @Nullable
    private zzfbu zze = null;
    @Nullable
    private com.google.android.gms.ads.internal.client.zzv zzf = null;
    private final Map zzb = DesugarCollections.synchronizedMap(new HashMap());
    private final List zza = Collections.synchronizedList(new ArrayList());

    public zzedk(String str) {
        this.zzc = str;
    }

    private static String zzj(zzfbu zzfbuVar) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzdR)).booleanValue()) {
            return zzfbuVar.zzap;
        }
        return zzfbuVar.zzw;
    }

    private final synchronized void zzk(zzfbu zzfbuVar, int i) {
        Map map = this.zzb;
        String zzj = zzj(zzfbuVar);
        if (map.containsKey(zzj)) {
            return;
        }
        Bundle bundle = new Bundle();
        JSONObject jSONObject = zzfbuVar.zzv;
        Iterator<String> keys = jSONObject.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            try {
                bundle.putString(next, jSONObject.getString(next));
            } catch (JSONException unused) {
            }
        }
        com.google.android.gms.ads.internal.client.zzv zzvVar = new com.google.android.gms.ads.internal.client.zzv(zzfbuVar.zzE, 0L, null, bundle, zzfbuVar.zzF, zzfbuVar.zzG, zzfbuVar.zzH, zzfbuVar.zzI);
        try {
            this.zza.add(i, zzvVar);
        } catch (IndexOutOfBoundsException e) {
            com.google.android.gms.ads.internal.zzv.zzp().zzw(e, "AdapterResponseInfoCollector.addAdapterResponseInfoEntryAtLocation");
        }
        this.zzb.put(zzj, zzvVar);
    }

    private final void zzl(zzfbu zzfbuVar, long j, @Nullable com.google.android.gms.ads.internal.client.zze zzeVar, boolean z) {
        Map map = this.zzb;
        String zzj = zzj(zzfbuVar);
        if (map.containsKey(zzj)) {
            if (this.zze == null) {
                this.zze = zzfbuVar;
            }
            com.google.android.gms.ads.internal.client.zzv zzvVar = (com.google.android.gms.ads.internal.client.zzv) map.get(zzj);
            zzvVar.zzb = j;
            zzvVar.zzc = zzeVar;
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzgU)).booleanValue() && z) {
                this.zzf = zzvVar;
            }
        }
    }

    @Nullable
    public final com.google.android.gms.ads.internal.client.zzv zza() {
        return this.zzf;
    }

    public final zzcvm zzb() {
        return new zzcvm(this.zze, "", this, this.zzd, this.zzc);
    }

    public final List zzc() {
        return this.zza;
    }

    public final void zzd(zzfbu zzfbuVar) {
        zzk(zzfbuVar, this.zza.size());
    }

    public final void zze(zzfbu zzfbuVar) {
        Map map = this.zzb;
        Object obj = map.get(zzj(zzfbuVar));
        List list = this.zza;
        int indexOf = list.indexOf(obj);
        if (indexOf < 0 || indexOf >= map.size()) {
            indexOf = list.indexOf(this.zzf);
        }
        if (indexOf >= 0 && indexOf < map.size()) {
            this.zzf = (com.google.android.gms.ads.internal.client.zzv) list.get(indexOf);
            while (true) {
                indexOf++;
                if (indexOf < list.size()) {
                    com.google.android.gms.ads.internal.client.zzv zzvVar = (com.google.android.gms.ads.internal.client.zzv) list.get(indexOf);
                    zzvVar.zzb = 0L;
                    zzvVar.zzc = null;
                } else {
                    return;
                }
            }
        }
    }

    public final void zzf(zzfbu zzfbuVar, long j, @Nullable com.google.android.gms.ads.internal.client.zze zzeVar) {
        zzl(zzfbuVar, j, zzeVar, false);
    }

    public final void zzg(zzfbu zzfbuVar, long j, @Nullable com.google.android.gms.ads.internal.client.zze zzeVar) {
        zzl(zzfbuVar, j, null, true);
    }

    public final synchronized void zzh(String str, List list) {
        Map map = this.zzb;
        if (map.containsKey(str)) {
            List list2 = this.zza;
            int indexOf = list2.indexOf((com.google.android.gms.ads.internal.client.zzv) map.get(str));
            try {
                list2.remove(indexOf);
            } catch (IndexOutOfBoundsException e) {
                com.google.android.gms.ads.internal.zzv.zzp().zzw(e, "AdapterResponseInfoCollector.replaceAdapterResponseInfoEntry");
            }
            this.zzb.remove(str);
            Iterator it = list.iterator();
            while (it.hasNext()) {
                zzk((zzfbu) it.next(), indexOf);
                indexOf++;
            }
        }
    }

    public final void zzi(zzfbx zzfbxVar) {
        this.zzd = zzfbxVar;
    }
}
