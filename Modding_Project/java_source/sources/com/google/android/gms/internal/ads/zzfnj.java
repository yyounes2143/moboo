package com.google.android.gms.internal.ads;

import android.os.AsyncTask;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public abstract class zzfnj extends AsyncTask {
    private zzfnk zza;
    protected final zzfnb zzd;

    public zzfnj(zzfnb zzfnbVar) {
        this.zzd = zzfnbVar;
    }

    @Override // android.os.AsyncTask
    /* renamed from: zza */
    public void onPostExecute(String str) {
        zzfnk zzfnkVar = this.zza;
        if (zzfnkVar != null) {
            zzfnkVar.zza(this);
        }
    }

    public final void zzb(zzfnk zzfnkVar) {
        this.zza = zzfnkVar;
    }
}
