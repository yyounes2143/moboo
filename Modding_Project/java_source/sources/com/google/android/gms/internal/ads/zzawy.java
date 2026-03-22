package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.view.View;
import java.lang.reflect.InvocationTargetException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzawy extends zzayb {
    private final Activity zzh;
    private final View zzi;

    public zzawy(zzawo zzawoVar, String str, String str2, zzask zzaskVar, int i, int i2, View view, Activity activity) {
        super(zzawoVar, "YX3pd3fZ/j0e82Z3yXv98nYqAI3nsN+d0YAKVHjoLLbjd+BRZ45hNatoujYNmZM/", "2IfMUy5zOuVT1ilWAqZrt9PNbHCY94WGDxwYlYOFZTM=", zzaskVar, i, 62);
        this.zzi = view;
        this.zzh = activity;
    }

    @Override // com.google.android.gms.internal.ads.zzayb
    public final void zza() throws IllegalAccessException, InvocationTargetException {
        View view = this.zzi;
        if (view == null) {
            return;
        }
        Boolean bool = (Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().zzb(zzbcv.zzcS);
        boolean booleanValue = bool.booleanValue();
        Object[] objArr = (Object[]) this.zze.invoke(null, view, this.zzh, bool);
        zzask zzaskVar = this.zzd;
        synchronized (zzaskVar) {
            try {
                zzaskVar.zzc(((Long) objArr[0]).longValue());
                zzaskVar.zze(((Long) objArr[1]).longValue());
                if (booleanValue) {
                    zzaskVar.zzd((String) objArr[2]);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
