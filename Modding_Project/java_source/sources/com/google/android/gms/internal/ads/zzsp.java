package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import android.media.MediaFormat;
import android.os.Handler;
import android.os.HandlerThread;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.collection.CircularIntArray;
import java.util.ArrayDeque;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
@RequiresApi(23)
/* loaded from: classes4.dex */
public final class zzsp extends MediaCodec.Callback {
    private final HandlerThread zzb;
    private Handler zzc;
    @Nullable
    @GuardedBy("lock")
    private MediaFormat zzh;
    @Nullable
    @GuardedBy("lock")
    private MediaFormat zzi;
    @Nullable
    @GuardedBy("lock")
    private MediaCodec.CodecException zzj;
    @Nullable
    @GuardedBy("lock")
    private MediaCodec.CryptoException zzk;
    @GuardedBy("lock")
    private long zzl;
    @GuardedBy("lock")
    private boolean zzm;
    @Nullable
    @GuardedBy("lock")
    private IllegalStateException zzn;
    @Nullable
    @GuardedBy("lock")
    private zzsy zzo;
    private final Object zza = new Object();
    @GuardedBy("lock")
    private final CircularIntArray zzd = new CircularIntArray();
    @GuardedBy("lock")
    private final CircularIntArray zze = new CircularIntArray();
    @GuardedBy("lock")
    private final ArrayDeque zzf = new ArrayDeque();
    @GuardedBy("lock")
    private final ArrayDeque zzg = new ArrayDeque();

    public zzsp(HandlerThread handlerThread) {
        this.zzb = handlerThread;
    }

    public static /* synthetic */ void zzd(zzsp zzspVar) {
        Object obj = zzspVar.zza;
        synchronized (obj) {
            try {
                if (zzspVar.zzm) {
                    return;
                }
                long j = zzspVar.zzl - 1;
                zzspVar.zzl = j;
                int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
                if (i > 0) {
                    return;
                }
                if (i < 0) {
                    IllegalStateException illegalStateException = new IllegalStateException();
                    synchronized (obj) {
                        zzspVar.zzn = illegalStateException;
                    }
                    return;
                }
                zzspVar.zzj();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @GuardedBy("lock")
    private final void zzi(MediaFormat mediaFormat) {
        this.zze.addLast(-2);
        this.zzg.add(mediaFormat);
    }

    @GuardedBy("lock")
    private final void zzj() {
        ArrayDeque arrayDeque = this.zzg;
        if (!arrayDeque.isEmpty()) {
            this.zzi = (MediaFormat) arrayDeque.getLast();
        }
        this.zzd.clear();
        this.zze.clear();
        this.zzf.clear();
        arrayDeque.clear();
    }

    @GuardedBy("lock")
    private final void zzk() {
        IllegalStateException illegalStateException = this.zzn;
        if (illegalStateException == null) {
            MediaCodec.CodecException codecException = this.zzj;
            if (codecException == null) {
                MediaCodec.CryptoException cryptoException = this.zzk;
                if (cryptoException == null) {
                    return;
                }
                this.zzk = null;
                throw cryptoException;
            }
            this.zzj = null;
            throw codecException;
        }
        this.zzn = null;
        throw illegalStateException;
    }

    @GuardedBy("lock")
    private final boolean zzl() {
        if (this.zzl <= 0 && !this.zzm) {
            return false;
        }
        return true;
    }

    public final void onCryptoError(MediaCodec mediaCodec, MediaCodec.CryptoException cryptoException) {
        synchronized (this.zza) {
            this.zzk = cryptoException;
        }
    }

    @Override // android.media.MediaCodec.Callback
    public final void onError(MediaCodec mediaCodec, MediaCodec.CodecException codecException) {
        synchronized (this.zza) {
            this.zzj = codecException;
        }
    }

    @Override // android.media.MediaCodec.Callback
    public final void onInputBufferAvailable(MediaCodec mediaCodec, int i) {
        zzlu zzluVar;
        zzlu zzluVar2;
        synchronized (this.zza) {
            try {
                this.zzd.addLast(i);
                zzsy zzsyVar = this.zzo;
                if (zzsyVar != null) {
                    zztj zztjVar = ((zztg) zzsyVar).zza;
                    zzluVar = zztjVar.zzo;
                    if (zzluVar != null) {
                        zzluVar2 = zztjVar.zzo;
                        zzluVar2.zza();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.media.MediaCodec.Callback
    public final void onOutputBufferAvailable(MediaCodec mediaCodec, int i, MediaCodec.BufferInfo bufferInfo) {
        zzlu zzluVar;
        zzlu zzluVar2;
        synchronized (this.zza) {
            try {
                MediaFormat mediaFormat = this.zzi;
                if (mediaFormat != null) {
                    zzi(mediaFormat);
                    this.zzi = null;
                }
                this.zze.addLast(i);
                this.zzf.add(bufferInfo);
                zzsy zzsyVar = this.zzo;
                if (zzsyVar != null) {
                    zztj zztjVar = ((zztg) zzsyVar).zza;
                    zzluVar = zztjVar.zzo;
                    if (zzluVar != null) {
                        zzluVar2 = zztjVar.zzo;
                        zzluVar2.zza();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.media.MediaCodec.Callback
    public final void onOutputFormatChanged(MediaCodec mediaCodec, MediaFormat mediaFormat) {
        synchronized (this.zza) {
            zzi(mediaFormat);
            this.zzi = null;
        }
    }

    public final int zza() {
        synchronized (this.zza) {
            try {
                zzk();
                int i = -1;
                if (zzl()) {
                    return -1;
                }
                CircularIntArray circularIntArray = this.zzd;
                if (!circularIntArray.isEmpty()) {
                    i = circularIntArray.popFirst();
                }
                return i;
            } finally {
            }
        }
    }

    public final int zzb(MediaCodec.BufferInfo bufferInfo) {
        synchronized (this.zza) {
            try {
                zzk();
                if (zzl()) {
                    return -1;
                }
                CircularIntArray circularIntArray = this.zze;
                if (circularIntArray.isEmpty()) {
                    return -1;
                }
                int popFirst = circularIntArray.popFirst();
                if (popFirst >= 0) {
                    zzdc.zzb(this.zzh);
                    MediaCodec.BufferInfo bufferInfo2 = (MediaCodec.BufferInfo) this.zzf.remove();
                    bufferInfo.set(bufferInfo2.offset, bufferInfo2.size, bufferInfo2.presentationTimeUs, bufferInfo2.flags);
                } else if (popFirst == -2) {
                    this.zzh = (MediaFormat) this.zzg.remove();
                    popFirst = -2;
                }
                return popFirst;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final MediaFormat zzc() {
        MediaFormat mediaFormat;
        synchronized (this.zza) {
            try {
                mediaFormat = this.zzh;
                if (mediaFormat == null) {
                    throw new IllegalStateException();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return mediaFormat;
    }

    public final void zze() {
        synchronized (this.zza) {
            this.zzl++;
            Handler handler = this.zzc;
            String str = zzeu.zza;
            handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzso
                @Override // java.lang.Runnable
                public final void run() {
                    zzsp.zzd(zzsp.this);
                }
            });
        }
    }

    public final void zzf(MediaCodec mediaCodec) {
        boolean z;
        if (this.zzc == null) {
            z = true;
        } else {
            z = false;
        }
        zzdc.zzf(z);
        HandlerThread handlerThread = this.zzb;
        handlerThread.start();
        Handler handler = new Handler(handlerThread.getLooper());
        mediaCodec.setCallback(this, handler);
        this.zzc = handler;
    }

    public final void zzg(zzsy zzsyVar) {
        synchronized (this.zza) {
            this.zzo = zzsyVar;
        }
    }

    public final void zzh() {
        synchronized (this.zza) {
            this.zzm = true;
            this.zzb.quit();
            zzj();
        }
    }
}
