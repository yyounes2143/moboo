package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.AudioDeviceInfo;
import android.media.AudioTrack;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.Pair;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import java.nio.ByteBuffer;
import java.util.ArrayDeque;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzri implements zzqi {
    private static final Object zza = new Object();
    @Nullable
    @GuardedBy("releaseExecutorLock")
    private static ScheduledExecutorService zzb;
    @GuardedBy("releaseExecutorLock")
    private static int zzc;
    private boolean zzA;
    private long zzB;
    private long zzC;
    private long zzD;
    private long zzE;
    private int zzF;
    private boolean zzG;
    private boolean zzH;
    private long zzI;
    private float zzJ;
    @Nullable
    private ByteBuffer zzK;
    private int zzL;
    @Nullable
    private ByteBuffer zzM;
    private boolean zzN;
    private boolean zzO;
    private boolean zzP;
    private boolean zzQ;
    private int zzR;
    private zzf zzS;
    @Nullable
    private zzpk zzT;
    private long zzU;
    private boolean zzV;
    private boolean zzW;
    @Nullable
    private Looper zzX;
    private long zzY;
    private long zzZ;
    private Handler zzaa;
    private final zzqy zzab;
    private final zzqo zzac;
    @Nullable
    private final Context zzd;
    private final zzqn zze;
    private final zzrs zzf;
    private final zzfyc zzg;
    private final zzfyc zzh;
    private final zzqm zzi;
    private final ArrayDeque zzj;
    private zzrg zzk;
    private final zzrc zzl;
    private final zzrc zzm;
    @Nullable
    private zzpc zzn;
    @Nullable
    private zzqf zzo;
    @Nullable
    private zzqx zzp;
    private zzqx zzq;
    private zzck zzr;
    @Nullable
    private AudioTrack zzs;
    private zzpe zzt;
    private zzpj zzu;
    @Nullable
    private zzrb zzv;
    private zze zzw;
    @Nullable
    private zzqz zzx;
    private zzqz zzy;
    private zzbb zzz;

    public /* synthetic */ zzri(zzqw zzqwVar, zzrh zzrhVar) {
        Context applicationContext;
        zzpe zzb2;
        if (zzqw.zza(zzqwVar) == null) {
            applicationContext = null;
        } else {
            applicationContext = zzqw.zza(zzqwVar).getApplicationContext();
        }
        this.zzd = applicationContext;
        this.zzw = zze.zza;
        if (applicationContext != null) {
            zzb2 = null;
        } else {
            zzb2 = zzqw.zzb(zzqwVar);
        }
        this.zzt = zzb2;
        this.zzab = zzqw.zzd(zzqwVar);
        zzqo zze = zzqw.zze(zzqwVar);
        zze.getClass();
        this.zzac = zze;
        this.zzi = new zzqm(new zzrd(this, null));
        zzqn zzqnVar = new zzqn();
        this.zze = zzqnVar;
        zzrs zzrsVar = new zzrs();
        this.zzf = zzrsVar;
        this.zzg = zzfyc.zzq(new zzcr(), zzqnVar, zzrsVar);
        this.zzh = zzfyc.zzq(new zzrr(), zzqnVar, zzrsVar);
        this.zzJ = 1.0f;
        this.zzR = 0;
        this.zzS = new zzf(0, 0.0f);
        zzbb zzbbVar = zzbb.zza;
        this.zzy = new zzqz(zzbbVar, 0L, 0L, null);
        this.zzz = zzbbVar;
        this.zzA = false;
        this.zzj = new ArrayDeque();
        this.zzl = new zzrc();
        this.zzm = new zzrc();
    }

    public static /* synthetic */ void zzG(zzri zzriVar) {
        if (zzriVar.zzZ >= 300000) {
            zzro.zzah(((zzrm) zzriVar.zzo).zza, true);
            zzriVar.zzZ = 0L;
        }
    }

    public static /* synthetic */ void zzI(AudioTrack audioTrack, final zzqf zzqfVar, Handler handler, final zzqc zzqcVar) {
        try {
            audioTrack.flush();
            audioTrack.release();
            if (zzqfVar != null && handler.getLooper().getThread().isAlive()) {
                handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzqr
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzqa zzqaVar;
                        zzqaVar = ((zzrm) zzqf.this).zza.zzc;
                        zzqaVar.zzp(zzqcVar);
                    }
                });
            }
            synchronized (zza) {
                try {
                    int i = zzc - 1;
                    zzc = i;
                    if (i == 0) {
                        zzb.shutdown();
                        zzb = null;
                    }
                } finally {
                }
            }
        } catch (Throwable th) {
            if (zzqfVar != null && handler.getLooper().getThread().isAlive()) {
                handler.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzqr
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzqa zzqaVar;
                        zzqaVar = ((zzrm) zzqf.this).zza.zzc;
                        zzqaVar.zzp(zzqcVar);
                    }
                });
            }
            synchronized (zza) {
                try {
                    int i2 = zzc - 1;
                    zzc = i2;
                    if (i2 == 0) {
                        zzb.shutdown();
                        zzb = null;
                    }
                    throw th;
                } finally {
                }
            }
        }
    }

    public static /* bridge */ /* synthetic */ boolean zzK() {
        boolean z;
        synchronized (zza) {
            if (zzc > 0) {
                z = true;
            } else {
                z = false;
            }
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long zzL() {
        zzqx zzqxVar = this.zzq;
        if (zzqxVar.zzc == 0) {
            return this.zzB / zzqxVar.zzb;
        }
        return this.zzC;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final long zzM() {
        zzqx zzqxVar = this.zzq;
        if (zzqxVar.zzc == 0) {
            long j = this.zzD;
            long j2 = zzqxVar.zzd;
            String str = zzeu.zza;
            return ((j + j2) - 1) / j2;
        }
        return this.zzE;
    }

    private final AudioTrack zzN(zzqx zzqxVar) throws zzqe {
        try {
            return zzac(zzqxVar.zza(), this.zzw, this.zzR, zzqxVar.zza);
        } catch (zzqe e) {
            zzqf zzqfVar = this.zzo;
            if (zzqfVar != null) {
                zzqfVar.zza(e);
            }
            throw e;
        }
    }

    private final void zzO(long j) {
        zzbb zzbbVar;
        boolean z;
        if (zzab()) {
            zzqy zzqyVar = this.zzab;
            zzbbVar = this.zzz;
            zzqyVar.zzc(zzbbVar);
        } else {
            zzbbVar = zzbb.zza;
        }
        zzbb zzbbVar2 = zzbbVar;
        this.zzz = zzbbVar2;
        if (zzab()) {
            zzqy zzqyVar2 = this.zzab;
            z = this.zzA;
            zzqyVar2.zzd(z);
        } else {
            z = false;
        }
        this.zzA = z;
        this.zzj.add(new zzqz(zzbbVar2, Math.max(0L, j), zzeu.zzt(zzM(), this.zzq.zze), null));
        zzX();
        zzqf zzqfVar = this.zzo;
        if (zzqfVar != null) {
            zzro.zzae(((zzrm) zzqfVar).zza).zzw(this.zzA);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0058  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzP(long r8) throws com.google.android.gms.internal.ads.zzqh {
        /*
            r7 = this;
            java.nio.ByteBuffer r8 = r7.zzM
            if (r8 != 0) goto L6
            goto Lb6
        L6:
            com.google.android.gms.internal.ads.zzrc r8 = r7.zzm
            boolean r9 = r8.zzc()
            if (r9 != 0) goto Lb6
            java.nio.ByteBuffer r9 = r7.zzM
            int r9 = r9.remaining()
            android.media.AudioTrack r0 = r7.zzs
            java.nio.ByteBuffer r1 = r7.zzM
            r2 = 1
            int r0 = r0.write(r1, r9, r2)
            long r3 = android.os.SystemClock.elapsedRealtime()
            r7.zzU = r3
            r3 = 0
            r1 = 0
            if (r0 >= 0) goto L6d
            int r9 = android.os.Build.VERSION.SDK_INT
            r5 = 24
            if (r9 < r5) goto L31
            r9 = -6
            if (r0 == r9) goto L35
        L31:
            r9 = -32
            if (r0 != r9) goto L4a
        L35:
            long r5 = r7.zzM()
            int r9 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
            if (r9 <= 0) goto L3e
            goto L4b
        L3e:
            android.media.AudioTrack r9 = r7.zzs
            boolean r9 = zzaa(r9)
            if (r9 == 0) goto L4a
            r7.zzQ()
            goto L4b
        L4a:
            r2 = r1
        L4b:
            com.google.android.gms.internal.ads.zzqh r9 = new com.google.android.gms.internal.ads.zzqh
            com.google.android.gms.internal.ads.zzqx r1 = r7.zzq
            com.google.android.gms.internal.ads.zzz r1 = r1.zza
            r9.<init>(r0, r1, r2)
            com.google.android.gms.internal.ads.zzqf r0 = r7.zzo
            if (r0 == 0) goto L5b
            r0.zza(r9)
        L5b:
            boolean r0 = r9.zzb
            if (r0 == 0) goto L69
            android.content.Context r0 = r7.zzd
            if (r0 != 0) goto L64
            goto L69
        L64:
            com.google.android.gms.internal.ads.zzpe r8 = com.google.android.gms.internal.ads.zzpe.zza
            r7.zzt = r8
            throw r9
        L69:
            r8.zzb(r9)
            return
        L6d:
            r8.zza()
            android.media.AudioTrack r8 = r7.zzs
            boolean r8 = zzaa(r8)
            if (r8 == 0) goto L8c
            long r5 = r7.zzE
            int r8 = (r5 > r3 ? 1 : (r5 == r3 ? 0 : -1))
            if (r8 <= 0) goto L80
            r7.zzW = r1
        L80:
            boolean r8 = r7.zzQ
            if (r8 == 0) goto L8c
            com.google.android.gms.internal.ads.zzqf r8 = r7.zzo
            if (r8 == 0) goto L8c
            if (r0 >= r9) goto L8c
            com.google.android.gms.internal.ads.zzrm r8 = (com.google.android.gms.internal.ads.zzrm) r8
        L8c:
            com.google.android.gms.internal.ads.zzqx r8 = r7.zzq
            int r8 = r8.zzc
            if (r8 != 0) goto L98
            long r3 = r7.zzD
            long r5 = (long) r0
            long r3 = r3 + r5
            r7.zzD = r3
        L98:
            if (r0 != r9) goto Lb6
            if (r8 == 0) goto Lb3
            java.nio.ByteBuffer r8 = r7.zzM
            java.nio.ByteBuffer r9 = r7.zzK
            if (r8 != r9) goto La3
            goto La4
        La3:
            r2 = r1
        La4:
            com.google.android.gms.internal.ads.zzdc.zzf(r2)
            long r8 = r7.zzE
            int r0 = r7.zzF
            long r0 = (long) r0
            int r2 = r7.zzL
            long r2 = (long) r2
            long r0 = r0 * r2
            long r8 = r8 + r0
            r7.zzE = r8
        Lb3:
            r8 = 0
            r7.zzM = r8
        Lb6:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzri.zzP(long):void");
    }

    private final void zzQ() {
        if (this.zzq.zzc == 1) {
            this.zzV = true;
        }
    }

    @EnsuresNonNull
    private final void zzR() {
        Context context;
        if (this.zzu == null && (context = this.zzd) != null) {
            this.zzX = Looper.myLooper();
            zzpj zzpjVar = new zzpj(context, new zzqs(this), this.zzw, this.zzT);
            this.zzu = zzpjVar;
            this.zzt = zzpjVar.zzc();
        }
        this.zzt.getClass();
    }

    private final void zzS() {
        if (!this.zzO) {
            this.zzO = true;
            this.zzi.zzb(zzM());
            if (zzaa(this.zzs)) {
                this.zzP = false;
            }
            this.zzs.stop();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x002f, code lost:
        r0 = r2.zzK;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0031, code lost:
        if (r0 == null) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0037, code lost:
        if (r0.hasRemaining() == false) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0039, code lost:
        r2.zzr.zze(r2.zzK);
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:?, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:?, code lost:
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzT(long r3) throws com.google.android.gms.internal.ads.zzqh {
        /*
            r2 = this;
            r2.zzP(r3)
            java.nio.ByteBuffer r0 = r2.zzM
            if (r0 == 0) goto L8
            goto L4b
        L8:
            com.google.android.gms.internal.ads.zzck r0 = r2.zzr
            boolean r0 = r0.zzh()
            if (r0 == 0) goto L41
        L10:
            com.google.android.gms.internal.ads.zzck r0 = r2.zzr
            boolean r0 = r0.zzg()
            if (r0 != 0) goto L4b
        L18:
            com.google.android.gms.internal.ads.zzck r0 = r2.zzr
            java.nio.ByteBuffer r0 = r0.zzb()
            boolean r1 = r0.hasRemaining()
            if (r1 == 0) goto L2f
            r2.zzV(r0)
            r2.zzP(r3)
            java.nio.ByteBuffer r0 = r2.zzM
            if (r0 == 0) goto L18
            goto L4b
        L2f:
            java.nio.ByteBuffer r0 = r2.zzK
            if (r0 == 0) goto L4b
            boolean r0 = r0.hasRemaining()
            if (r0 == 0) goto L4b
            com.google.android.gms.internal.ads.zzck r0 = r2.zzr
            java.nio.ByteBuffer r1 = r2.zzK
            r0.zze(r1)
            goto L10
        L41:
            java.nio.ByteBuffer r0 = r2.zzK
            if (r0 == 0) goto L4b
            r2.zzV(r0)
            r2.zzP(r3)
        L4b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzri.zzT(long):void");
    }

    private final void zzU(zzbb zzbbVar) {
        zzqz zzqzVar = new zzqz(zzbbVar, -9223372036854775807L, -9223372036854775807L, null);
        if (zzZ()) {
            this.zzx = zzqzVar;
        } else {
            this.zzy = zzqzVar;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:45:0x0141  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x01d9  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x01ed A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x004b A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzV(java.nio.ByteBuffer r19) {
        /*
            Method dump skipped, instructions count: 516
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzri.zzV(java.nio.ByteBuffer):void");
    }

    private final void zzW() {
        if (zzZ()) {
            this.zzs.setVolume(this.zzJ);
        }
    }

    private final void zzX() {
        zzck zzckVar = this.zzq.zzi;
        this.zzr = zzckVar;
        zzckVar.zzc();
    }

    private final boolean zzY() throws zzqh {
        if (!this.zzr.zzh()) {
            zzP(Long.MIN_VALUE);
            if (this.zzM != null) {
                return false;
            }
            return true;
        }
        this.zzr.zzd();
        zzT(Long.MIN_VALUE);
        if (!this.zzr.zzg()) {
            return false;
        }
        ByteBuffer byteBuffer = this.zzM;
        if (byteBuffer != null && byteBuffer.hasRemaining()) {
            return false;
        }
        return true;
    }

    private final boolean zzZ() {
        if (this.zzs != null) {
            return true;
        }
        return false;
    }

    private static boolean zzaa(AudioTrack audioTrack) {
        boolean isOffloadedPlayback;
        if (Build.VERSION.SDK_INT >= 29) {
            isOffloadedPlayback = audioTrack.isOffloadedPlayback();
            if (isOffloadedPlayback) {
                return true;
            }
            return false;
        }
        return false;
    }

    private final boolean zzab() {
        zzqx zzqxVar = this.zzq;
        if (zzqxVar.zzc == 0) {
            int i = zzqxVar.zza.zzG;
            return true;
        }
        return false;
    }

    private static final AudioTrack zzac(zzqc zzqcVar, zze zzeVar, int i, zzz zzzVar) throws zzqe {
        zzz zzzVar2;
        Exception exc;
        try {
            AudioTrack.Builder sessionId = new AudioTrack.Builder().setAudioAttributes(zzeVar.zza().zza).setAudioFormat(zzeu.zzx(zzqcVar.zzb, zzqcVar.zzc, zzqcVar.zza)).setTransferMode(1).setBufferSizeInBytes(zzqcVar.zze).setSessionId(i);
            if (Build.VERSION.SDK_INT >= 29) {
                try {
                    sessionId.setOffloadedPlayback(zzqcVar.zzd);
                } catch (IllegalArgumentException | UnsupportedOperationException e) {
                    exc = e;
                    zzzVar2 = zzzVar;
                    throw new zzqe(0, zzqcVar.zzb, zzqcVar.zzc, zzqcVar.zza, zzqcVar.zze, zzzVar2, zzqcVar.zzd, exc);
                }
            }
            AudioTrack build = sessionId.build();
            int state = build.getState();
            if (state == 1) {
                return build;
            }
            try {
                build.release();
            } catch (Exception unused) {
            }
            throw new zzqe(state, zzqcVar.zzb, zzqcVar.zzc, zzqcVar.zza, zzqcVar.zze, zzzVar, zzqcVar.zzd, null);
        } catch (IllegalArgumentException | UnsupportedOperationException e2) {
            zzzVar2 = zzzVar;
            exc = e2;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzqi
    public final boolean zzA(zzz zzzVar) {
        if (zza(zzzVar) != 0) {
            return true;
        }
        return false;
    }

    public final void zzJ(zzpe zzpeVar) {
        String name;
        Looper myLooper = Looper.myLooper();
        Looper looper = this.zzX;
        if (looper != myLooper) {
            String str = AbstractJsonLexerKt.NULL;
            if (looper == null) {
                name = AbstractJsonLexerKt.NULL;
            } else {
                name = looper.getThread().getName();
            }
            if (myLooper != null) {
                str = myLooper.getThread().getName();
            }
            throw new IllegalStateException("Current looper (" + str + ") is not the playback looper (" + name + ")");
        }
        zzpe zzpeVar2 = this.zzt;
        if (zzpeVar2 != null && !zzpeVar.equals(zzpeVar2)) {
            this.zzt = zzpeVar;
            zzqf zzqfVar = this.zzo;
            if (zzqfVar != null) {
                zzro.zzai(((zzrm) zzqfVar).zza);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzqi
    public final int zza(zzz zzzVar) {
        zzR();
        if ("audio/raw".equals(zzzVar.zzo)) {
            int i = zzzVar.zzG;
            if (!zzeu.zzK(i)) {
                zzdx.zzf("DefaultAudioSink", "Invalid PCM encoding: " + i);
                return 0;
            } else if (i == 2) {
                return 2;
            } else {
                return 1;
            }
        } else if (this.zzt.zzb(zzzVar, this.zzw) == null) {
            return 0;
        } else {
            return 2;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzqi
    public final long zzb(boolean z) {
        ArrayDeque arrayDeque;
        long j;
        if (zzZ() && !this.zzH) {
            long min = Math.min(this.zzi.zza(), zzeu.zzt(zzM(), this.zzq.zze));
            while (true) {
                arrayDeque = this.zzj;
                if (arrayDeque.isEmpty() || min < ((zzqz) arrayDeque.getFirst()).zzc) {
                    break;
                }
                this.zzy = (zzqz) arrayDeque.remove();
            }
            zzqz zzqzVar = this.zzy;
            long j2 = min - zzqzVar.zzc;
            long zzq = zzeu.zzq(j2, zzqzVar.zza.zzb);
            if (arrayDeque.isEmpty()) {
                long zza2 = this.zzab.zza(j2);
                zzqz zzqzVar2 = this.zzy;
                j = zzqzVar2.zzb + zza2;
                zzqzVar2.zzd = zza2 - zzq;
            } else {
                zzqz zzqzVar3 = this.zzy;
                j = zzqzVar3.zzb + zzq + zzqzVar3.zzd;
            }
            long zzb2 = this.zzab.zzb();
            long zzt = j + zzeu.zzt(zzb2, this.zzq.zze);
            long j3 = this.zzY;
            if (zzb2 > j3) {
                long zzt2 = zzeu.zzt(zzb2 - j3, this.zzq.zze);
                this.zzY = zzb2;
                this.zzZ += zzt2;
                if (this.zzaa == null) {
                    this.zzaa = new Handler(Looper.myLooper());
                }
                this.zzaa.removeCallbacksAndMessages(null);
                this.zzaa.postDelayed(new Runnable() { // from class: com.google.android.gms.internal.ads.zzqq
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzri.zzG(zzri.this);
                    }
                }, 100L);
            }
            return zzt;
        }
        return Long.MIN_VALUE;
    }

    @Override // com.google.android.gms.internal.ads.zzqi
    public final zzbb zzc() {
        return this.zzz;
    }

    @Override // com.google.android.gms.internal.ads.zzqi
    public final zzpn zzd(zzz zzzVar) {
        if (this.zzV) {
            return zzpn.zza;
        }
        return this.zzac.zza(zzzVar, this.zzw);
    }

    @Override // com.google.android.gms.internal.ads.zzqi
    public final void zze(zzz zzzVar, int i, @Nullable int[] iArr) throws zzqd {
        zzck zzckVar;
        int i2;
        int i3;
        int i4;
        int intValue;
        int i5;
        int i6;
        boolean z;
        int i7;
        zzR();
        if ("audio/raw".equals(zzzVar.zzo)) {
            int i8 = zzzVar.zzG;
            zzdc.zzd(zzeu.zzK(i8));
            int i9 = zzzVar.zzE;
            i4 = zzeu.zzk(i8) * i9;
            zzfxz zzfxzVar = new zzfxz();
            zzfxzVar.zzh(this.zzg);
            zzfxzVar.zzg(this.zzab.zze());
            zzckVar = new zzck(zzfxzVar.zzi());
            if (zzckVar.equals(this.zzr)) {
                zzckVar = this.zzr;
            }
            this.zzf.zzq(zzzVar.zzH, zzzVar.zzI);
            this.zze.zzo(iArr);
            try {
                zzcl zza2 = zzckVar.zza(new zzcl(zzzVar.zzF, i9, i8));
                int i10 = zza2.zzd;
                i2 = zza2.zzb;
                int i11 = zza2.zzc;
                int zzi = zzeu.zzi(i11);
                int zzk = zzeu.zzk(i10) * i11;
                i3 = 0;
                intValue = zzi;
                i5 = i10;
                i6 = zzk;
            } catch (zzcm e) {
                throw new zzqd(e, zzzVar);
            }
        } else {
            zzckVar = new zzck(zzfyc.zzn());
            i2 = zzzVar.zzF;
            zzpn zzpnVar = zzpn.zza;
            Pair zzb2 = this.zzt.zzb(zzzVar, this.zzw);
            if (zzb2 != null) {
                int intValue2 = ((Integer) zzb2.first).intValue();
                i3 = 2;
                i4 = -1;
                intValue = ((Integer) zzb2.second).intValue();
                i5 = intValue2;
                i6 = -1;
            } else {
                throw new zzqd("Unable to configure passthrough for: ".concat(String.valueOf(zzzVar)), zzzVar);
            }
        }
        int i12 = i2;
        if (i5 != 0) {
            if (intValue != 0) {
                int i13 = zzzVar.zzj;
                if ("audio/vnd.dts.hd;profile=lbr".equals(zzzVar.zzo) && i13 == -1) {
                    i13 = 768000;
                }
                int i14 = i13;
                int minBufferSize = AudioTrack.getMinBufferSize(i12, intValue, i5);
                if (minBufferSize != -2) {
                    z = true;
                } else {
                    z = false;
                }
                zzdc.zzf(z);
                if (i6 != -1) {
                    i7 = i6;
                } else {
                    i7 = 1;
                }
                int i15 = i5;
                int zzb3 = zzrk.zzb(minBufferSize, i15, i3, i7, i12, i14);
                int i16 = i7;
                this.zzV = false;
                zzqx zzqxVar = new zzqx(zzzVar, i4, i3, i6, i12, intValue, i15, (((Math.max(minBufferSize, zzb3) + i16) - 1) / i16) * i16, zzckVar, false, false, false);
                if (zzZ()) {
                    this.zzp = zzqxVar;
                    return;
                } else {
                    this.zzq = zzqxVar;
                    return;
                }
            }
            throw new zzqd("Invalid output channel config (mode=" + i3 + ") for: " + String.valueOf(zzzVar), zzzVar);
        }
        throw new zzqd("Invalid output encoding (mode=" + i3 + ") for: " + String.valueOf(zzzVar), zzzVar);
    }

    @Override // com.google.android.gms.internal.ads.zzqi
    public final void zzf() {
        zzrb zzrbVar;
        if (zzZ()) {
            this.zzB = 0L;
            this.zzC = 0L;
            this.zzD = 0L;
            this.zzE = 0L;
            this.zzW = false;
            this.zzF = 0;
            this.zzy = new zzqz(this.zzz, 0L, 0L, null);
            this.zzI = 0L;
            this.zzx = null;
            this.zzj.clear();
            this.zzK = null;
            this.zzL = 0;
            this.zzM = null;
            this.zzO = false;
            this.zzN = false;
            this.zzP = false;
            this.zzf.zzp();
            zzX();
            zzqm zzqmVar = this.zzi;
            if (zzqmVar.zzh()) {
                this.zzs.pause();
            }
            if (zzaa(this.zzs)) {
                zzrg zzrgVar = this.zzk;
                zzrgVar.getClass();
                zzrgVar.zzb(this.zzs);
            }
            final zzqc zza2 = this.zzq.zza();
            zzqx zzqxVar = this.zzp;
            if (zzqxVar != null) {
                this.zzq = zzqxVar;
                this.zzp = null;
            }
            zzqmVar.zzc();
            if (Build.VERSION.SDK_INT >= 24 && (zzrbVar = this.zzv) != null) {
                zzrbVar.zzb();
                this.zzv = null;
            }
            final AudioTrack audioTrack = this.zzs;
            final zzqf zzqfVar = this.zzo;
            final Handler handler = new Handler(Looper.myLooper());
            synchronized (zza) {
                try {
                    if (zzb == null) {
                        String str = zzeu.zza;
                        zzb = Executors.newSingleThreadScheduledExecutor(new ThreadFactory("ExoPlayer:AudioTrackReleaseThread") { // from class: com.google.android.gms.internal.ads.zzet
                            public final /* synthetic */ String zza = "ExoPlayer:AudioTrackReleaseThread";

                            @Override // java.util.concurrent.ThreadFactory
                            public final Thread newThread(Runnable runnable) {
                                String str2 = zzeu.zza;
                                return new Thread(runnable, this.zza);
                            }
                        });
                    }
                    zzc++;
                    zzb.schedule(new Runnable() { // from class: com.google.android.gms.internal.ads.zzqp
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzri.zzI(audioTrack, zzqfVar, handler, zza2);
                        }
                    }, 20L, TimeUnit.MILLISECONDS);
                } catch (Throwable th) {
                    throw th;
                }
            }
            this.zzs = null;
        }
        this.zzm.zza();
        this.zzl.zza();
        this.zzY = 0L;
        this.zzZ = 0L;
        Handler handler2 = this.zzaa;
        if (handler2 != null) {
            handler2.removeCallbacksAndMessages(null);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzqi
    public final void zzg() {
        this.zzG = true;
    }

    @Override // com.google.android.gms.internal.ads.zzqi
    public final void zzh() {
        this.zzQ = false;
        if (zzZ()) {
            if (this.zzi.zzk() || zzaa(this.zzs)) {
                this.zzs.pause();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzqi
    public final void zzi() {
        this.zzQ = true;
        if (zzZ()) {
            this.zzi.zzf();
            this.zzs.play();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzqi
    public final void zzj() throws zzqh {
        if (!this.zzN && zzZ() && zzY()) {
            zzS();
            this.zzN = true;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzqi
    public final void zzk() {
        zzpj zzpjVar = this.zzu;
        if (zzpjVar != null) {
            zzpjVar.zzi();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzqi
    public final void zzl() {
        zzf();
        zzfyc zzfycVar = this.zzg;
        int size = zzfycVar.size();
        for (int i = 0; i < size; i++) {
            ((zzcn) zzfycVar.get(i)).zzf();
        }
        zzfyc zzfycVar2 = this.zzh;
        int size2 = zzfycVar2.size();
        for (int i2 = 0; i2 < size2; i2++) {
            ((zzcn) zzfycVar2.get(i2)).zzf();
        }
        zzck zzckVar = this.zzr;
        if (zzckVar != null) {
            zzckVar.zzf();
        }
        this.zzQ = false;
        this.zzV = false;
    }

    @Override // com.google.android.gms.internal.ads.zzqi
    public final void zzm(zze zzeVar) {
        if (this.zzw.equals(zzeVar)) {
            return;
        }
        this.zzw = zzeVar;
        zzpj zzpjVar = this.zzu;
        if (zzpjVar != null) {
            zzpjVar.zzg(zzeVar);
        }
        zzf();
    }

    @Override // com.google.android.gms.internal.ads.zzqi
    public final void zzn(int i) {
        if (this.zzR != i) {
            this.zzR = i;
            zzf();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzqi
    public final void zzo(zzf zzfVar) {
        if (this.zzS.equals(zzfVar)) {
            return;
        }
        if (this.zzs != null) {
            int i = this.zzS.zza;
        }
        this.zzS = zzfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzqi
    public final void zzp(zzdg zzdgVar) {
        this.zzi.zze(zzdgVar);
    }

    @Override // com.google.android.gms.internal.ads.zzqi
    public final void zzq(zzqf zzqfVar) {
        this.zzo = zzqfVar;
    }

    @Override // com.google.android.gms.internal.ads.zzqi
    @RequiresApi(29)
    public final void zzr(int i, int i2) {
        AudioTrack audioTrack = this.zzs;
        if (audioTrack != null) {
            zzaa(audioTrack);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzqi
    public final void zzs(zzbb zzbbVar) {
        float f = zzbbVar.zzb;
        String str = zzeu.zza;
        this.zzz = new zzbb(Math.max(0.1f, Math.min(f, 8.0f)), Math.max(0.1f, Math.min(zzbbVar.zzc, 8.0f)));
        zzU(zzbbVar);
    }

    @Override // com.google.android.gms.internal.ads.zzqi
    public final void zzt(@Nullable zzpc zzpcVar) {
        this.zzn = zzpcVar;
    }

    @Override // com.google.android.gms.internal.ads.zzqi
    @RequiresApi(23)
    public final void zzu(@Nullable AudioDeviceInfo audioDeviceInfo) {
        zzpk zzpkVar;
        if (audioDeviceInfo == null) {
            zzpkVar = null;
        } else {
            zzpkVar = new zzpk(audioDeviceInfo);
        }
        this.zzT = zzpkVar;
        zzpj zzpjVar = this.zzu;
        if (zzpjVar != null) {
            zzpjVar.zzh(audioDeviceInfo);
        }
        AudioTrack audioTrack = this.zzs;
        if (audioTrack != null) {
            zzqt.zza(audioTrack, this.zzT);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzqi
    public final void zzv(boolean z) {
        this.zzA = z;
        zzU(this.zzz);
    }

    @Override // com.google.android.gms.internal.ads.zzqi
    public final void zzw(float f) {
        if (this.zzJ != f) {
            this.zzJ = f;
            zzW();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:110:0x01f9  */
    /* JADX WARN: Removed duplicated region for block: B:132:0x0267  */
    @Override // com.google.android.gms.internal.ads.zzqi
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zzx(java.nio.ByteBuffer r31, long r32, int r34) throws com.google.android.gms.internal.ads.zzqe, com.google.android.gms.internal.ads.zzqh {
        /*
            Method dump skipped, instructions count: 1030
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzri.zzx(java.nio.ByteBuffer, long, int):boolean");
    }

    @Override // com.google.android.gms.internal.ads.zzqi
    public final boolean zzy() {
        boolean isOffloadedPlayback;
        if (zzZ()) {
            if (Build.VERSION.SDK_INT >= 29) {
                isOffloadedPlayback = this.zzs.isOffloadedPlayback();
                if (isOffloadedPlayback && this.zzP) {
                    return false;
                }
            }
            if (this.zzi.zzg(zzM())) {
                return true;
            }
            return false;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzqi
    public final boolean zzz() {
        if (!zzZ()) {
            return true;
        }
        if (this.zzN && !zzy()) {
            return true;
        }
        return false;
    }
}
