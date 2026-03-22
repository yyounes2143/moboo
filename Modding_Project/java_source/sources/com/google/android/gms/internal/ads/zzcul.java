package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzcul implements zzhfv {
    private final zzhge zza;
    private final zzhge zzb;
    private final zzhge zzc;

    public zzcul(zzhge zzhgeVar, zzhge zzhgeVar2, zzhge zzhgeVar3) {
        this.zza = zzhgeVar;
        this.zzb = zzhgeVar2;
        this.zzc = zzhgeVar3;
    }

    @Override // com.google.android.gms.internal.ads.zzhgk, com.google.android.gms.internal.ads.zzhgj
    public final /* bridge */ /* synthetic */ Object zzb() {
        final Context context = (Context) this.zza.zzb();
        final VersionInfoParcel zza = ((zzchw) this.zzb).zza();
        final zzfcp zza2 = ((zzcvk) this.zzc).zza();
        return new zzfur() { // from class: com.google.android.gms.internal.ads.zzcuk
            @Override // com.google.android.gms.internal.ads.zzfur
            public final Object apply(Object obj) {
                zzfbu zzfbuVar = (zzfbu) obj;
                com.google.android.gms.ads.internal.util.zzau zzauVar = new com.google.android.gms.ads.internal.util.zzau(context);
                zzauVar.zzp(zzfbuVar.zzB);
                zzauVar.zzq(zzfbuVar.zzC.toString());
                zzauVar.zzo(zza.afmaVersion);
                zzauVar.zzn(zza2.zzf);
                return zzauVar;
            }
        };
    }
}
