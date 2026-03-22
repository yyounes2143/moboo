package com.google.android.gms.internal.ads;

import android.content.Context;
import java.lang.reflect.InvocationTargetException;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzaxr extends zzayb {
    private List zzh;
    private final Context zzi;

    public zzaxr(zzawo zzawoVar, String str, String str2, zzask zzaskVar, int i, int i2, Context context) {
        super(zzawoVar, "G1O+5tqulLBNCxZxcYiJSAGrazgAMWmQ49z8g8PEPhhOgnBizp9p2UWwJMiSx+ju", "xfUFYLaeYlsk7z1gy27YVxCq/UzpfsdVkNtosT4BuNc=", zzaskVar, i, 31);
        this.zzh = null;
        this.zzi = context;
    }

    @Override // com.google.android.gms.internal.ads.zzayb
    public final void zza() throws IllegalAccessException, InvocationTargetException {
        zzask zzaskVar = this.zzd;
        zzaskVar.zzU(-1L);
        zzaskVar.zzQ(-1L);
        Context context = this.zzi;
        if (context == null) {
            context = this.zza.zzb();
        }
        if (this.zzh == null) {
            this.zzh = (List) this.zze.invoke(null, context);
        }
        List list = this.zzh;
        if (list != null && list.size() == 2) {
            synchronized (zzaskVar) {
                zzaskVar.zzU(((Long) this.zzh.get(0)).longValue());
                zzaskVar.zzQ(((Long) this.zzh.get(1)).longValue());
            }
        }
    }
}
