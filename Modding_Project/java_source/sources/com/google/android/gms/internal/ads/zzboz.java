package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.UUID;
import org.json.JSONObject;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzboz implements zzgcf {
    private final String zza = "google.afma.activeView.handleUpdate";
    private final ListenableFuture zzb;

    public zzboz(ListenableFuture listenableFuture, String str, zzbog zzbogVar, zzbof zzbofVar) {
        this.zzb = listenableFuture;
    }

    public static /* synthetic */ ListenableFuture zzb(zzboz zzbozVar, Object obj, zzboa zzboaVar) {
        zzcaf zzcafVar = new zzcaf();
        com.google.android.gms.ads.internal.zzv.zzr();
        String uuid = UUID.randomUUID().toString();
        zzbjv.zzo.zzc(uuid, new zzboy(zzbozVar, zzcafVar));
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("id", uuid);
        jSONObject.put("args", (JSONObject) obj);
        zzboaVar.zzp(zzbozVar.zza, jSONObject);
        return zzcafVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgcf
    public final ListenableFuture zza(Object obj) throws Exception {
        return zzc(obj);
    }

    public final ListenableFuture zzc(final Object obj) {
        return zzgcy.zzn(this.zzb, new zzgcf() { // from class: com.google.android.gms.internal.ads.zzbox
            @Override // com.google.android.gms.internal.ads.zzgcf
            public final ListenableFuture zza(Object obj2) {
                return zzboz.zzb(zzboz.this, obj, (zzboa) obj2);
            }
        }, zzcaa.zzg);
    }
}
