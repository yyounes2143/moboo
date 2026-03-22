package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.content.Context;
import android.media.metrics.LogSessionId;
import android.media.metrics.MediaMetricsManager;
import android.media.metrics.PlaybackMetrics;
import android.media.metrics.PlaybackSession;
import android.media.metrics.TrackChangeEvent;
import android.os.SystemClock;
import android.util.Pair;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.media3.common.MediaLibraryInfo;
import androidx.media3.common.PlaybackException;
import androidx.media3.exoplayer.analytics.O00000;
import androidx.media3.exoplayer.analytics.QQOOOO;
import androidx.media3.exoplayer.analytics.QQOOOOOOO;
import j$.util.Objects;
import java.io.IOException;
import java.util.HashMap;
import java.util.concurrent.Executor;
import org.checkerframework.checker.nullness.qual.EnsuresNonNullIf;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
/* compiled from: Proguard */
@RequiresApi(31)
/* loaded from: classes4.dex */
public final class zzoy implements zzmm, zzoz {
    private boolean zzA;
    private final Context zza;
    private final zzpa zzc;
    private final PlaybackSession zzd;
    @Nullable
    private String zzj;
    @Nullable
    private PlaybackMetrics.Builder zzk;
    private int zzl;
    @Nullable
    private zzba zzo;
    @Nullable
    private zzox zzp;
    @Nullable
    private zzox zzq;
    @Nullable
    private zzox zzr;
    @Nullable
    private zzz zzs;
    @Nullable
    private zzz zzt;
    @Nullable
    private zzz zzu;
    private boolean zzv;
    private boolean zzw;
    private int zzx;
    private int zzy;
    private int zzz;
    private final Executor zzb = zzdd.zza();
    private final zzbk zzf = new zzbk();
    private final zzbj zzg = new zzbj();
    private final HashMap zzi = new HashMap();
    private final HashMap zzh = new HashMap();
    private final long zze = SystemClock.elapsedRealtime();
    private int zzm = 0;
    private int zzn = 0;

    private zzoy(Context context, PlaybackSession playbackSession) {
        this.zza = context.getApplicationContext();
        this.zzd = playbackSession;
        zzor zzorVar = new zzor(zzor.zza);
        this.zzc = zzorVar;
        zzorVar.zzh(this);
    }

    @RequiresNonNull
    private final void zzA(zzbl zzblVar, @Nullable zzvb zzvbVar) {
        int zza;
        PlaybackMetrics.Builder builder = this.zzk;
        if (zzvbVar != null && (zza = zzblVar.zza(zzvbVar.zza)) != -1) {
            zzbj zzbjVar = this.zzg;
            int i = 0;
            zzblVar.zzd(zza, zzbjVar, false);
            zzbk zzbkVar = this.zzf;
            zzblVar.zze(zzbjVar.zzc, zzbkVar, 0L);
            zzak zzakVar = zzbkVar.zzd.zzb;
            int i2 = 2;
            if (zzakVar != null) {
                int zzo = zzeu.zzo(zzakVar.zza);
                if (zzo != 0) {
                    if (zzo != 1) {
                        if (zzo != 2) {
                            i = 1;
                        } else {
                            i = 4;
                        }
                    } else {
                        i = 5;
                    }
                } else {
                    i = 3;
                }
            }
            builder.setStreamType(i);
            long j = zzbkVar.zzm;
            if (j != -9223372036854775807L && !zzbkVar.zzk && !zzbkVar.zzi && !zzbkVar.zzb()) {
                builder.setMediaDurationMillis(zzeu.zzv(j));
            }
            if (true != zzbkVar.zzb()) {
                i2 = 1;
            }
            builder.setPlaybackType(i2);
            this.zzA = true;
        }
    }

    private final void zzB(long j, @Nullable zzz zzzVar, int i) {
        int i2;
        if (Objects.equals(this.zzs, zzzVar)) {
            return;
        }
        if (this.zzs == null) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        int i3 = i2;
        this.zzs = zzzVar;
        zzC(1, j, zzzVar, i3);
    }

    private final void zzC(int i, long j, @Nullable zzz zzzVar, int i2) {
        TrackChangeEvent.Builder timeSinceCreatedMillis;
        final TrackChangeEvent build;
        int i3;
        String str;
        timeSinceCreatedMillis = QQOOOOOOO.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(i).setTimeSinceCreatedMillis(j - this.zze);
        if (zzzVar != null) {
            timeSinceCreatedMillis.setTrackState(1);
            if (i2 != 1) {
                i3 = 1;
            } else {
                i3 = 2;
            }
            timeSinceCreatedMillis.setTrackChangeReason(i3);
            String str2 = zzzVar.zzn;
            if (str2 != null) {
                timeSinceCreatedMillis.setContainerMimeType(str2);
            }
            String str3 = zzzVar.zzo;
            if (str3 != null) {
                timeSinceCreatedMillis.setSampleMimeType(str3);
            }
            String str4 = zzzVar.zzk;
            if (str4 != null) {
                timeSinceCreatedMillis.setCodecName(str4);
            }
            int i4 = zzzVar.zzj;
            if (i4 != -1) {
                timeSinceCreatedMillis.setBitrate(i4);
            }
            int i5 = zzzVar.zzv;
            if (i5 != -1) {
                timeSinceCreatedMillis.setWidth(i5);
            }
            int i6 = zzzVar.zzw;
            if (i6 != -1) {
                timeSinceCreatedMillis.setHeight(i6);
            }
            int i7 = zzzVar.zzE;
            if (i7 != -1) {
                timeSinceCreatedMillis.setChannelCount(i7);
            }
            int i8 = zzzVar.zzF;
            if (i8 != -1) {
                timeSinceCreatedMillis.setAudioSampleRate(i8);
            }
            String str5 = zzzVar.zzd;
            if (str5 != null) {
                String str6 = zzeu.zza;
                String[] split = str5.split("-", -1);
                String str7 = split[0];
                if (split.length >= 2) {
                    str = split[1];
                } else {
                    str = null;
                }
                Pair create = Pair.create(str7, str);
                timeSinceCreatedMillis.setLanguage((String) create.first);
                Object obj = create.second;
                if (obj != null) {
                    timeSinceCreatedMillis.setLanguageRegion((String) obj);
                }
            }
            float f = zzzVar.zzx;
            if (f != -1.0f) {
                timeSinceCreatedMillis.setVideoFrameRate(f);
            }
        } else {
            timeSinceCreatedMillis.setTrackState(0);
        }
        this.zzA = true;
        build = timeSinceCreatedMillis.build();
        this.zzb.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzos
            @Override // java.lang.Runnable
            public final void run() {
                zzoy.this.zzd.reportTrackChangeEvent(build);
            }
        });
    }

    @EnsuresNonNullIf
    private final boolean zzD(@Nullable zzox zzoxVar) {
        if (zzoxVar != null) {
            if (zzoxVar.zzc.equals(this.zzc.zze())) {
                return true;
            }
            return false;
        }
        return false;
    }

    @Nullable
    public static zzoy zzb(Context context) {
        PlaybackSession createPlaybackSession;
        MediaMetricsManager Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = O00000.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context.getSystemService("media_metrics"));
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null) {
            createPlaybackSession = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.createPlaybackSession();
            return new zzoy(context, createPlaybackSession);
        }
        return null;
    }

    @SuppressLint({"SwitchIntDef"})
    private static int zzw(int i) {
        switch (zzeu.zzl(i)) {
            case 6002:
                return 24;
            case 6003:
                return 28;
            case PlaybackException.ERROR_CODE_DRM_LICENSE_ACQUISITION_FAILED /* 6004 */:
                return 25;
            case PlaybackException.ERROR_CODE_DRM_DISALLOWED_OPERATION /* 6005 */:
                return 26;
            default:
                return 27;
        }
    }

    private final void zzx() {
        long longValue;
        long longValue2;
        int i;
        final PlaybackMetrics build;
        PlaybackMetrics.Builder builder = this.zzk;
        if (builder != null && this.zzA) {
            builder.setAudioUnderrunCount(this.zzz);
            this.zzk.setVideoFramesDropped(this.zzx);
            this.zzk.setVideoFramesPlayed(this.zzy);
            Long l = (Long) this.zzh.get(this.zzj);
            PlaybackMetrics.Builder builder2 = this.zzk;
            if (l == null) {
                longValue = 0;
            } else {
                longValue = l.longValue();
            }
            builder2.setNetworkTransferDurationMillis(longValue);
            Long l2 = (Long) this.zzi.get(this.zzj);
            PlaybackMetrics.Builder builder3 = this.zzk;
            if (l2 == null) {
                longValue2 = 0;
            } else {
                longValue2 = l2.longValue();
            }
            builder3.setNetworkBytesRead(longValue2);
            PlaybackMetrics.Builder builder4 = this.zzk;
            if (l2 != null && l2.longValue() > 0) {
                i = 1;
            } else {
                i = 0;
            }
            builder4.setStreamSource(i);
            build = this.zzk.build();
            this.zzb.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzov
                @Override // java.lang.Runnable
                public final void run() {
                    zzoy.this.zzd.reportPlaybackMetrics(build);
                }
            });
        }
        this.zzk = null;
        this.zzj = null;
        this.zzz = 0;
        this.zzx = 0;
        this.zzy = 0;
        this.zzs = null;
        this.zzt = null;
        this.zzu = null;
        this.zzA = false;
    }

    private final void zzy(long j, @Nullable zzz zzzVar, int i) {
        int i2;
        if (Objects.equals(this.zzt, zzzVar)) {
            return;
        }
        if (this.zzt == null) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        int i3 = i2;
        this.zzt = zzzVar;
        zzC(0, j, zzzVar, i3);
    }

    private final void zzz(long j, @Nullable zzz zzzVar, int i) {
        int i2;
        if (Objects.equals(this.zzu, zzzVar)) {
            return;
        }
        if (this.zzu == null) {
            i2 = 1;
        } else {
            i2 = 0;
        }
        int i3 = i2;
        this.zzu = zzzVar;
        zzC(2, j, zzzVar, i3);
    }

    public final LogSessionId zza() {
        LogSessionId sessionId;
        sessionId = this.zzd.getSessionId();
        return sessionId;
    }

    @Override // com.google.android.gms.internal.ads.zzmm
    public final void zzf(zzmk zzmkVar, int i, long j, long j2) {
        long longValue;
        zzvb zzvbVar = zzmkVar.zzd;
        if (zzvbVar != null) {
            String zzf = this.zzc.zzf(zzmkVar.zzb, zzvbVar);
            HashMap hashMap = this.zzi;
            Long l = (Long) hashMap.get(zzf);
            HashMap hashMap2 = this.zzh;
            Long l2 = (Long) hashMap2.get(zzf);
            long j3 = 0;
            if (l == null) {
                longValue = 0;
            } else {
                longValue = l.longValue();
            }
            hashMap.put(zzf, Long.valueOf(longValue + j));
            if (l2 != null) {
                j3 = l2.longValue();
            }
            hashMap2.put(zzf, Long.valueOf(j3 + i));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzmm
    public final void zzg(zzmk zzmkVar, zzux zzuxVar) {
        zzvb zzvbVar = zzmkVar.zzd;
        if (zzvbVar != null) {
            zzz zzzVar = zzuxVar.zzb;
            zzzVar.getClass();
            zzox zzoxVar = new zzox(zzzVar, 0, this.zzc.zzf(zzmkVar.zzb, zzvbVar));
            int i = zzuxVar.zza;
            if (i != 0) {
                if (i != 1) {
                    if (i != 2) {
                        if (i != 3) {
                            return;
                        }
                        this.zzr = zzoxVar;
                        return;
                    }
                } else {
                    this.zzq = zzoxVar;
                    return;
                }
            }
            this.zzp = zzoxVar;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:135:0x01e8, code lost:
        if (r12 != 1) goto L144;
     */
    @Override // com.google.android.gms.internal.ads.zzmm
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zzi(com.google.android.gms.internal.ads.zzbh r20, com.google.android.gms.internal.ads.zzml r21) {
        /*
            Method dump skipped, instructions count: 996
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzoy.zzi(com.google.android.gms.internal.ads.zzbh, com.google.android.gms.internal.ads.zzml):void");
    }

    @Override // com.google.android.gms.internal.ads.zzmm
    public final void zzl(zzmk zzmkVar, zzba zzbaVar) {
        this.zzo = zzbaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzmm
    public final void zzm(zzmk zzmkVar, zzbf zzbfVar, zzbf zzbfVar2, int i) {
        if (i == 1) {
            this.zzv = true;
            i = 1;
        }
        this.zzl = i;
    }

    @Override // com.google.android.gms.internal.ads.zzmm
    public final void zzo(zzmk zzmkVar, zzia zziaVar) {
        this.zzx += zziaVar.zzg;
        this.zzy += zziaVar.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzmm
    public final void zzq(zzmk zzmkVar, zzcd zzcdVar) {
        zzox zzoxVar = this.zzp;
        if (zzoxVar != null) {
            zzz zzzVar = zzoxVar.zza;
            if (zzzVar.zzw == -1) {
                zzx zzb = zzzVar.zzb();
                zzb.zzai(zzcdVar.zzb);
                zzb.zzM(zzcdVar.zzc);
                this.zzp = new zzox(zzb.zzaj(), 0, zzoxVar.zzc);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzoz
    public final void zzu(zzmk zzmkVar, String str) {
        PlaybackMetrics.Builder playerName;
        PlaybackMetrics.Builder playerVersion;
        zzvb zzvbVar = zzmkVar.zzd;
        if (zzvbVar != null && zzvbVar.zzb()) {
            return;
        }
        zzx();
        this.zzj = str;
        playerName = QQOOOO.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww().setPlayerName(MediaLibraryInfo.TAG);
        playerVersion = playerName.setPlayerVersion("1.6.1");
        this.zzk = playerVersion;
        zzA(zzmkVar.zzb, zzvbVar);
    }

    @Override // com.google.android.gms.internal.ads.zzoz
    public final void zzv(zzmk zzmkVar, String str, boolean z) {
        zzvb zzvbVar = zzmkVar.zzd;
        if ((zzvbVar == null || !zzvbVar.zzb()) && str.equals(this.zzj)) {
            zzx();
        }
        this.zzh.remove(str);
        this.zzi.remove(str);
    }

    @Override // com.google.android.gms.internal.ads.zzmm
    public final /* synthetic */ void zzk(zzmk zzmkVar, int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzmm
    public final /* synthetic */ void zze(zzmk zzmkVar, zzz zzzVar, zzib zzibVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzmm
    public final /* synthetic */ void zzh(zzmk zzmkVar, int i, long j) {
    }

    @Override // com.google.android.gms.internal.ads.zzmm
    public final /* synthetic */ void zzn(zzmk zzmkVar, Object obj, long j) {
    }

    @Override // com.google.android.gms.internal.ads.zzmm
    public final /* synthetic */ void zzp(zzmk zzmkVar, zzz zzzVar, zzib zzibVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzmm
    public final void zzj(zzmk zzmkVar, zzus zzusVar, zzux zzuxVar, IOException iOException, boolean z) {
    }
}
