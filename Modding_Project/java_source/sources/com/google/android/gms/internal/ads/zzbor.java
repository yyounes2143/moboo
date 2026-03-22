package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.UUID;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONObject;
/* compiled from: Proguard */
@ParametersAreNonnullByDefault
/* loaded from: classes4.dex */
public final class zzbor implements zzbod {
    private final zzbof zza;
    private final zzbog zzb;
    private final zzbnz zzc;
    private final String zzd;

    public zzbor(zzbnz zzbnzVar, String str, zzbog zzbogVar, zzbof zzbofVar) {
        this.zzc = zzbnzVar;
        this.zzd = str;
        this.zzb = zzbogVar;
        this.zza = zzbofVar;
    }

    public static /* bridge */ /* synthetic */ void zzd(zzbor zzborVar, zzbnt zzbntVar, zzboa zzboaVar, Object obj, zzcaf zzcafVar) {
        try {
            com.google.android.gms.ads.internal.zzv.zzr();
            String uuid = UUID.randomUUID().toString();
            zzbjv.zzo.zzc(uuid, new zzboq(zzborVar, zzbntVar, zzcafVar));
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("id", uuid);
            jSONObject.put("args", zzborVar.zzb.zzb(obj));
            zzboaVar.zzp(zzborVar.zzd, jSONObject);
        } catch (Exception e) {
            try {
                zzcafVar.zzd(e);
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzh("Unable to invokeJavascript", e);
            } finally {
                zzbntVar.zzb();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgcf
    public final ListenableFuture zza(@Nullable Object obj) throws Exception {
        return zzb(obj);
    }

    @Override // com.google.android.gms.internal.ads.zzbod
    public final ListenableFuture zzb(Object obj) {
        zzcaf zzcafVar = new zzcaf();
        zzbnt zzb = this.zzc.zzb(null);
        com.google.android.gms.ads.internal.util.zze.zza("callJs > getEngine: Promise created");
        zzb.zzj(new zzboo(this, zzb, obj, zzcafVar), new zzbop(this, zzcafVar, zzb));
        return zzcafVar;
    }
}
