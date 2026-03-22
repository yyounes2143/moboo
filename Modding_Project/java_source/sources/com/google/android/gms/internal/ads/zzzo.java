package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.os.Trace;
import androidx.annotation.Nullable;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
@SuppressLint({"HandlerLeak"})
/* loaded from: classes4.dex */
public final class zzzo extends Handler implements Runnable {
    final /* synthetic */ zzzu zza;
    private final zzzp zzb;
    private final long zzc;
    @Nullable
    private zzzm zzd;
    @Nullable
    private IOException zze;
    private int zzf;
    @Nullable
    private Thread zzg;
    private boolean zzh;
    private volatile boolean zzi;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzzo(zzzu zzzuVar, Looper looper, zzzp zzzpVar, zzzm zzzmVar, int i, long j) {
        super(looper);
        this.zza = zzzuVar;
        this.zzb = zzzpVar;
        this.zzd = zzzmVar;
        this.zzc = j;
    }

    private final void zzd() {
        zzaac zzaacVar;
        zzzo zzzoVar;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        long j = elapsedRealtime - this.zzc;
        zzzm zzzmVar = this.zzd;
        zzzmVar.getClass();
        zzzmVar.zzL(this.zzb, elapsedRealtime, j, this.zzf);
        this.zze = null;
        zzzu zzzuVar = this.zza;
        zzaacVar = zzzuVar.zzc;
        zzzoVar = zzzuVar.zzd;
        zzzoVar.getClass();
        zzaacVar.execute(zzzoVar);
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        int i;
        int i2;
        int i3;
        long j;
        long min;
        if (!this.zzi) {
            int i4 = message.what;
            if (i4 == 1) {
                zzd();
            } else if (i4 != 4) {
                zzzu zzzuVar = this.zza;
                zzzuVar.zzd = null;
                long j2 = this.zzc;
                long elapsedRealtime = SystemClock.elapsedRealtime();
                long j3 = elapsedRealtime - j2;
                zzzm zzzmVar = this.zzd;
                zzzmVar.getClass();
                if (this.zzh) {
                    zzzmVar.zzJ(this.zzb, elapsedRealtime, j3, false);
                    return;
                }
                int i5 = message.what;
                if (i5 != 2) {
                    if (i5 == 3) {
                        IOException iOException = (IOException) message.obj;
                        this.zze = iOException;
                        int i6 = this.zzf + 1;
                        this.zzf = i6;
                        zzzn zzu = zzzmVar.zzu(this.zzb, elapsedRealtime, j3, iOException, i6);
                        i = zzu.zza;
                        if (i == 3) {
                            zzzuVar.zze = this.zze;
                            return;
                        }
                        i2 = zzu.zza;
                        if (i2 != 2) {
                            i3 = zzu.zza;
                            if (i3 == 1) {
                                this.zzf = 1;
                            }
                            j = zzu.zzb;
                            if (j != -9223372036854775807L) {
                                min = zzu.zzb;
                            } else {
                                min = Math.min((this.zzf - 1) * 1000, 5000);
                            }
                            zzc(min);
                            return;
                        }
                        return;
                    }
                    return;
                }
                try {
                    zzzmVar.zzK(this.zzb, elapsedRealtime, j3);
                } catch (RuntimeException e) {
                    zzdx.zzd("LoadTask", "Unexpected exception handling load completed", e);
                    this.zza.zze = new zzzs(e);
                }
            } else {
                throw ((Error) message.obj);
            }
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        try {
            synchronized (this) {
                z = this.zzh;
                this.zzg = Thread.currentThread();
            }
            if (!z) {
                zzzp zzzpVar = this.zzb;
                String simpleName = zzzpVar.getClass().getSimpleName();
                Trace.beginSection("load:" + simpleName);
                try {
                    zzzpVar.zzh();
                    Trace.endSection();
                } catch (Throwable th) {
                    Trace.endSection();
                    throw th;
                }
            }
            synchronized (this) {
                this.zzg = null;
                Thread.interrupted();
            }
            if (!this.zzi) {
                sendEmptyMessage(2);
            }
        } catch (IOException e) {
            if (!this.zzi) {
                obtainMessage(3, e).sendToTarget();
            }
        } catch (Error e2) {
            if (!this.zzi) {
                zzdx.zzd("LoadTask", "Unexpected error loading stream", e2);
                obtainMessage(4, e2).sendToTarget();
            }
            throw e2;
        } catch (Exception e3) {
            if (!this.zzi) {
                zzdx.zzd("LoadTask", "Unexpected exception loading stream", e3);
                obtainMessage(3, new zzzs(e3)).sendToTarget();
            }
        } catch (OutOfMemoryError e4) {
            if (!this.zzi) {
                zzdx.zzd("LoadTask", "OutOfMemory error loading stream", e4);
                obtainMessage(3, new zzzs(e4)).sendToTarget();
            }
        }
    }

    public final void zza(boolean z) {
        this.zzi = z;
        this.zze = null;
        if (hasMessages(1)) {
            this.zzh = true;
            removeMessages(1);
            if (!z) {
                sendEmptyMessage(2);
            }
        } else {
            synchronized (this) {
                try {
                    this.zzh = true;
                    this.zzb.zzg();
                    Thread thread = this.zzg;
                    if (thread != null) {
                        thread.interrupt();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        if (z) {
            this.zza.zzd = null;
            long elapsedRealtime = SystemClock.elapsedRealtime();
            zzzm zzzmVar = this.zzd;
            zzzmVar.getClass();
            zzzmVar.zzJ(this.zzb, elapsedRealtime, elapsedRealtime - this.zzc, true);
            this.zzd = null;
        }
    }

    public final void zzb(int i) throws IOException {
        IOException iOException = this.zze;
        if (iOException != null && this.zzf > i) {
            throw iOException;
        }
    }

    public final void zzc(long j) {
        zzzo zzzoVar;
        boolean z;
        zzzu zzzuVar = this.zza;
        zzzoVar = zzzuVar.zzd;
        if (zzzoVar == null) {
            z = true;
        } else {
            z = false;
        }
        zzdc.zzf(z);
        zzzuVar.zzd = this;
        if (j > 0) {
            sendEmptyMessageDelayed(1, j);
        } else {
            zzd();
        }
    }
}
