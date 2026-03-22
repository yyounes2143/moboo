package com.google.android.gms.internal.ads;

import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzpg extends ContentObserver {
    final /* synthetic */ zzpj zza;
    private final ContentResolver zzb;
    private final Uri zzc;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzpg(zzpj zzpjVar, Handler handler, ContentResolver contentResolver, Uri uri) {
        super(handler);
        this.zza = zzpjVar;
        this.zzb = contentResolver;
        this.zzc = uri;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        Context context;
        zze zzeVar;
        zzpk zzpkVar;
        zzpj zzpjVar = this.zza;
        context = zzpjVar.zza;
        zzeVar = zzpjVar.zzh;
        zzpkVar = zzpjVar.zzg;
        zzpjVar.zzj(zzpe.zzc(context, zzeVar, zzpkVar));
    }

    public final void zza() {
        this.zzb.registerContentObserver(this.zzc, false, this);
    }

    public final void zzb() {
        this.zzb.unregisterContentObserver(this);
    }
}
