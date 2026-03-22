package com.google.android.gms.internal.ads;

import android.graphics.SurfaceTexture;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import androidx.annotation.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzaav extends HandlerThread implements Handler.Callback {
    private zzdm zza;
    private Handler zzb;
    @Nullable
    private Error zzc;
    @Nullable
    private RuntimeException zzd;
    @Nullable
    private zzaax zze;

    public zzaav() {
        super("ExoPlayer:PlaceholderSurface");
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        boolean z;
        zzdm zzdmVar;
        int i = message.what;
        try {
            if (i != 1) {
                if (i == 2) {
                    try {
                        zzdmVar = this.zza;
                    } finally {
                        try {
                            return true;
                        } finally {
                        }
                    }
                    if (zzdmVar != null) {
                        zzdmVar.zzc();
                        return true;
                    }
                    throw null;
                }
            } else {
                try {
                    int i2 = message.arg1;
                    zzdm zzdmVar2 = this.zza;
                    if (zzdmVar2 != null) {
                        zzdmVar2.zzb(i2);
                        SurfaceTexture zza = this.zza.zza();
                        if (i2 != 0) {
                            z = true;
                        } else {
                            z = false;
                        }
                        this.zze = new zzaax(this, zza, z, null);
                        synchronized (this) {
                            notify();
                        }
                    } else {
                        throw null;
                    }
                } catch (zzdn e) {
                    zzdx.zzd("PlaceholderSurface", "Failed to initialize placeholder surface", e);
                    this.zzd = new IllegalStateException(e);
                    synchronized (this) {
                        notify();
                    }
                } catch (Error e2) {
                    zzdx.zzd("PlaceholderSurface", "Failed to initialize placeholder surface", e2);
                    this.zzc = e2;
                    synchronized (this) {
                        notify();
                    }
                } catch (RuntimeException e3) {
                    zzdx.zzd("PlaceholderSurface", "Failed to initialize placeholder surface", e3);
                    this.zzd = e3;
                    synchronized (this) {
                        notify();
                    }
                }
            }
            return true;
        } catch (Throwable th) {
            synchronized (this) {
                notify();
                throw th;
            }
        }
    }

    public final zzaax zza(int i) {
        boolean z;
        start();
        this.zzb = new Handler(getLooper(), this);
        this.zza = new zzdm(this.zzb, null);
        synchronized (this) {
            z = false;
            this.zzb.obtainMessage(1, i, 0).sendToTarget();
            while (this.zze == null && this.zzd == null && this.zzc == null) {
                try {
                    wait();
                } catch (InterruptedException unused) {
                    z = true;
                }
            }
        }
        if (z) {
            Thread.currentThread().interrupt();
        }
        RuntimeException runtimeException = this.zzd;
        if (runtimeException == null) {
            Error error = this.zzc;
            if (error == null) {
                zzaax zzaaxVar = this.zze;
                zzaaxVar.getClass();
                return zzaaxVar;
            }
            throw error;
        }
        throw runtimeException;
    }

    public final void zzb() {
        Handler handler = this.zzb;
        handler.getClass();
        handler.sendEmptyMessage(2);
    }
}
