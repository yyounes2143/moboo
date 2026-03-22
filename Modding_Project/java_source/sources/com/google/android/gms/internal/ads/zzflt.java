package com.google.android.gms.internal.ads;

import android.content.Context;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.os.Handler;
import android.provider.Settings;
import java.util.concurrent.atomic.AtomicReference;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzflt extends ContentObserver {
    private final Context zza;
    private final AudioManager zzb;
    private final AtomicReference zzc;
    private final zzfmf zzd;

    public zzflt(Handler handler, Context context, zzflq zzflqVar, zzfmf zzfmfVar) {
        super(handler);
        this.zzc = new AtomicReference(Float.valueOf(-1.0f));
        this.zza = context;
        this.zzb = (AudioManager) context.getSystemService("audio");
        this.zzd = zzfmfVar;
    }

    public static /* bridge */ /* synthetic */ float zza(zzflt zzfltVar) {
        AudioManager audioManager = zzfltVar.zzb;
        int streamVolume = audioManager.getStreamVolume(3);
        int streamMaxVolume = audioManager.getStreamMaxVolume(3);
        float f = 0.0f;
        if (streamMaxVolume > 0) {
            if (streamVolume <= 0) {
                return 0.0f;
            }
            f = streamVolume / streamMaxVolume;
            if (f > 1.0f) {
                return 1.0f;
            }
        }
        return f;
    }

    private final void zzf() {
        new Thread(new zzfls(this)).start();
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        zzf();
    }

    public final void zzc() {
        zzf();
        this.zza.getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, this);
    }

    public final void zzd() {
        this.zza.getContentResolver().unregisterContentObserver(this);
    }
}
