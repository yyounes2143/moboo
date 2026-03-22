package com.google.android.gms.internal.ads;

import android.graphics.Point;
import android.media.MediaCodecInfo;
import android.os.Build;
import android.util.Pair;
import android.util.Range;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import j$.util.Objects;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zztc {
    public final String zza;
    public final String zzb;
    public final String zzc;
    @Nullable
    public final MediaCodecInfo.CodecCapabilities zzd;
    public final boolean zze;
    public final boolean zzf;
    public final boolean zzg;
    public final boolean zzh;
    private final boolean zzi;

    @VisibleForTesting
    public zztc(String str, String str2, String str3, @Nullable MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7) {
        str.getClass();
        this.zza = str;
        this.zzb = str2;
        this.zzc = str3;
        this.zzd = codecCapabilities;
        this.zzg = z;
        this.zze = z4;
        this.zzf = z6;
        this.zzh = z7;
        this.zzi = zzay.zzj(str2);
    }

    public static zztc zzc(String str, String str2, String str3, @Nullable MediaCodecInfo.CodecCapabilities codecCapabilities, boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        boolean z6;
        boolean z7;
        boolean z8;
        String str4;
        String str5;
        MediaCodecInfo.CodecCapabilities codecCapabilities2;
        boolean z9;
        boolean z10;
        boolean z11;
        boolean z12;
        String str6;
        if (codecCapabilities != null && codecCapabilities.isFeatureSupported("adaptive-playback")) {
            z6 = true;
        } else {
            z6 = false;
        }
        if (codecCapabilities != null && codecCapabilities.isFeatureSupported("tunneled-playback")) {
            z7 = true;
        } else {
            z7 = false;
        }
        if (z5 || (codecCapabilities != null && codecCapabilities.isFeatureSupported("secure-playback"))) {
            z8 = true;
        } else {
            z8 = false;
        }
        if (Build.VERSION.SDK_INT >= 35 && codecCapabilities != null && codecCapabilities.isFeatureSupported("detached-surface")) {
            String str7 = Build.MANUFACTURER;
            if (!str7.equals("Xiaomi") && !str7.equals("OPPO")) {
                str6 = str2;
                str5 = str3;
                codecCapabilities2 = codecCapabilities;
                z9 = z;
                z10 = z2;
                z11 = z3;
                z12 = true;
                str4 = str;
                return new zztc(str4, str6, str5, codecCapabilities2, z9, z10, z11, z6, z7, z8, z12);
            }
        }
        str4 = str;
        str5 = str3;
        codecCapabilities2 = codecCapabilities;
        z9 = z;
        z10 = z2;
        z11 = z3;
        z12 = false;
        str6 = str2;
        return new zztc(str4, str6, str5, codecCapabilities2, z9, z10, z11, z6, z7, z8, z12);
    }

    private static Point zzi(MediaCodecInfo.VideoCapabilities videoCapabilities, int i, int i2) {
        int widthAlignment = videoCapabilities.getWidthAlignment();
        int heightAlignment = videoCapabilities.getHeightAlignment();
        String str = zzeu.zza;
        return new Point((((i + widthAlignment) - 1) / widthAlignment) * widthAlignment, (((i2 + heightAlignment) - 1) / heightAlignment) * heightAlignment);
    }

    private final void zzj(String str) {
        String str2 = zzeu.zza;
        zzdx.zzb("MediaCodecInfo", "NoSupport [" + str + "] [" + this.zza + ", " + this.zzb + "] [" + str2 + "]");
    }

    private static boolean zzk(MediaCodecInfo.VideoCapabilities videoCapabilities, int i, int i2, double d) {
        Range<Double> achievableFrameRatesFor;
        Point zzi = zzi(videoCapabilities, i, i2);
        int i3 = zzi.x;
        int i4 = zzi.y;
        if (d != -1.0d && d >= 1.0d) {
            double floor = Math.floor(d);
            if (!videoCapabilities.areSizeAndRateSupported(i3, i4, floor)) {
                return false;
            }
            if (Build.VERSION.SDK_INT >= 24 && (achievableFrameRatesFor = videoCapabilities.getAchievableFrameRatesFor(i3, i4)) != null && floor > achievableFrameRatesFor.getUpper().doubleValue()) {
                return false;
            }
            return true;
        }
        return videoCapabilities.isSizeSupported(i3, i4);
    }

    private final boolean zzl(zzz zzzVar, boolean z) {
        int i;
        MediaCodecInfo.VideoCapabilities videoCapabilities;
        int i2 = zztw.zza;
        Pair zza = zzdh.zza(zzzVar);
        String str = zzzVar.zzo;
        char c = 65535;
        if (str != null && str.equals("video/mv-hevc")) {
            String zze = zzay.zze(this.zzc);
            if (!zze.equals("video/mv-hevc")) {
                if (zze.equals("video/hevc")) {
                    String zzh = zzfs.zzh(zzzVar.zzr);
                    if (zzh == null) {
                        zza = null;
                    } else {
                        String trim = zzh.trim();
                        String str2 = zzeu.zza;
                        zza = zzdh.zzb(zzh, trim.split("\\.", -1), zzzVar.zzC);
                    }
                }
            }
            return true;
        }
        if (zza != null) {
            int intValue = ((Integer) zza.first).intValue();
            int intValue2 = ((Integer) zza.second).intValue();
            int i3 = 8;
            if ("video/dolby-vision".equals(str)) {
                String str3 = this.zzb;
                int hashCode = str3.hashCode();
                if (hashCode != -1662735862) {
                    if (hashCode != -1662541442) {
                        if (hashCode == 1331836730 && str3.equals("video/avc")) {
                            c = 0;
                        }
                    } else if (str3.equals("video/hevc")) {
                        c = 1;
                    }
                } else if (str3.equals("video/av01")) {
                    c = 2;
                }
                if (c != 0) {
                    if (c == 1 || c == 2) {
                        intValue = 2;
                    }
                } else {
                    intValue = 8;
                }
                intValue2 = 0;
            }
            if (!this.zzi) {
                if (intValue == 42) {
                    intValue = 42;
                }
            }
            MediaCodecInfo.CodecProfileLevel[] zzh2 = zzh();
            if (Build.VERSION.SDK_INT <= 23 && "video/x-vnd.on2.vp9".equals(this.zzb) && zzh2.length == 0) {
                MediaCodecInfo.CodecCapabilities codecCapabilities = this.zzd;
                if (codecCapabilities != null && (videoCapabilities = codecCapabilities.getVideoCapabilities()) != null) {
                    i = videoCapabilities.getBitrateRange().getUpper().intValue();
                } else {
                    i = 0;
                }
                if (i >= 180000000) {
                    i3 = 1024;
                } else if (i >= 120000000) {
                    i3 = 512;
                } else if (i >= 60000000) {
                    i3 = 256;
                } else if (i >= 30000000) {
                    i3 = 128;
                } else if (i >= 18000000) {
                    i3 = 64;
                } else if (i >= 12000000) {
                    i3 = 32;
                } else if (i >= 7200000) {
                    i3 = 16;
                } else if (i < 3600000) {
                    if (i >= 1800000) {
                        i3 = 4;
                    } else if (i >= 800000) {
                        i3 = 2;
                    } else {
                        i3 = 1;
                    }
                }
                MediaCodecInfo.CodecProfileLevel codecProfileLevel = new MediaCodecInfo.CodecProfileLevel();
                codecProfileLevel.profile = 1;
                codecProfileLevel.level = i3;
                zzh2 = new MediaCodecInfo.CodecProfileLevel[]{codecProfileLevel};
            }
            for (MediaCodecInfo.CodecProfileLevel codecProfileLevel2 : zzh2) {
                if (codecProfileLevel2.profile == intValue && (codecProfileLevel2.level >= intValue2 || !z)) {
                    if ("video/hevc".equals(this.zzb) && intValue == 2) {
                        String str4 = Build.DEVICE;
                        if (!"sailfish".equals(str4) && !"marlin".equals(str4)) {
                        }
                    }
                }
            }
            zzj("codec.profileLevel, " + zzzVar.zzk + ", " + this.zzc);
            return false;
        }
        return true;
    }

    private final boolean zzm(zzz zzzVar) {
        if (Objects.equals(zzzVar.zzo, "audio/flac") && zzzVar.zzG == 22 && Build.VERSION.SDK_INT < 34 && this.zza.equals("c2.android.flac.decoder")) {
            return false;
        }
        return true;
    }

    private final boolean zzn(zzz zzzVar) {
        String str = this.zzb;
        if (!str.equals(zzzVar.zzo) && !str.equals(zztw.zzb(zzzVar))) {
            return false;
        }
        return true;
    }

    public final String toString() {
        return this.zza;
    }

    @Nullable
    public final Point zza(int i, int i2) {
        MediaCodecInfo.VideoCapabilities videoCapabilities;
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.zzd;
        if (codecCapabilities != null && (videoCapabilities = codecCapabilities.getVideoCapabilities()) != null) {
            return zzi(videoCapabilities, i, i2);
        }
        return null;
    }

    public final zzib zzb(zzz zzzVar, zzz zzzVar2) {
        int i;
        zzz zzzVar3;
        zzz zzzVar4;
        int i2 = 2;
        if (true != Objects.equals(zzzVar.zzo, zzzVar2.zzo)) {
            i = 8;
        } else {
            i = 0;
        }
        if (this.zzi) {
            if (zzzVar.zzy != zzzVar2.zzy) {
                i |= 1024;
            }
            if (!this.zze && (zzzVar.zzv != zzzVar2.zzv || zzzVar.zzw != zzzVar2.zzw)) {
                i |= 512;
            }
            zzk zzkVar = zzzVar.zzC;
            if ((!zzk.zzg(zzkVar) || !zzk.zzg(zzzVar2.zzC)) && !Objects.equals(zzkVar, zzzVar2.zzC)) {
                i |= 2048;
            }
            String str = this.zza;
            if (Build.MODEL.startsWith("SM-T230") && "OMX.MARVELL.VIDEO.HW.CODA7542DECODER".equals(str) && !zzzVar.zzd(zzzVar2)) {
                i |= 2;
            }
            if (i == 0) {
                if (true == zzzVar.zzd(zzzVar2)) {
                    i2 = 3;
                }
                return new zzib(str, zzzVar, zzzVar2, i2, 0);
            }
            zzzVar3 = zzzVar;
            zzzVar4 = zzzVar2;
        } else {
            zzzVar3 = zzzVar;
            zzzVar4 = zzzVar2;
            if (zzzVar3.zzE != zzzVar4.zzE) {
                i |= 4096;
            }
            if (zzzVar3.zzF != zzzVar4.zzF) {
                i |= 8192;
            }
            if (zzzVar3.zzG != zzzVar4.zzG) {
                i |= 16384;
            }
            if (i == 0 && "audio/mp4a-latm".equals(this.zzb)) {
                int i3 = zztw.zza;
                Pair zza = zzdh.zza(zzzVar3);
                Pair zza2 = zzdh.zza(zzzVar4);
                if (zza != null && zza2 != null) {
                    int intValue = ((Integer) zza.first).intValue();
                    int intValue2 = ((Integer) zza2.first).intValue();
                    if (intValue == 42 && intValue2 == 42) {
                        return new zzib(this.zza, zzzVar3, zzzVar4, 3, 0);
                    }
                }
            }
            if (!zzzVar3.zzd(zzzVar4)) {
                i |= 32;
            }
            if ("audio/opus".equals(this.zzb)) {
                i |= 2;
            }
            if (i == 0) {
                return new zzib(this.zza, zzzVar3, zzzVar4, 1, 0);
            }
        }
        return new zzib(this.zza, zzzVar3, zzzVar4, 0, i);
    }

    public final boolean zzd(zzz zzzVar) {
        if (!zzn(zzzVar) || !zzl(zzzVar, false) || !zzm(zzzVar)) {
            return false;
        }
        return true;
    }

    public final boolean zze(zzz zzzVar) throws zztq {
        int i;
        int i2;
        if (!zzn(zzzVar) || !zzl(zzzVar, true) || !zzm(zzzVar)) {
            return false;
        }
        if (this.zzi) {
            int i3 = zzzVar.zzv;
            if (i3 <= 0 || (i2 = zzzVar.zzw) <= 0) {
                return true;
            }
            return zzg(i3, i2, zzzVar.zzx);
        }
        int i4 = zzzVar.zzF;
        if (i4 != -1) {
            MediaCodecInfo.CodecCapabilities codecCapabilities = this.zzd;
            if (codecCapabilities == null) {
                zzj("sampleRate.caps");
                return false;
            }
            MediaCodecInfo.AudioCapabilities audioCapabilities = codecCapabilities.getAudioCapabilities();
            if (audioCapabilities == null) {
                zzj("sampleRate.aCaps");
                return false;
            } else if (!audioCapabilities.isSampleRateSupported(i4)) {
                zzj("sampleRate.support, " + i4);
                return false;
            }
        }
        int i5 = zzzVar.zzE;
        if (i5 != -1) {
            MediaCodecInfo.CodecCapabilities codecCapabilities2 = this.zzd;
            if (codecCapabilities2 == null) {
                zzj("channelCount.caps");
                return false;
            }
            MediaCodecInfo.AudioCapabilities audioCapabilities2 = codecCapabilities2.getAudioCapabilities();
            if (audioCapabilities2 == null) {
                zzj("channelCount.aCaps");
                return false;
            }
            String str = this.zza;
            String str2 = this.zzb;
            int maxInputChannelCount = audioCapabilities2.getMaxInputChannelCount();
            if (maxInputChannelCount <= 1 && ((Build.VERSION.SDK_INT < 26 || maxInputChannelCount <= 0) && !"audio/mpeg".equals(str2) && !"audio/3gpp".equals(str2) && !"audio/amr-wb".equals(str2) && !"audio/mp4a-latm".equals(str2) && !"audio/vorbis".equals(str2) && !"audio/opus".equals(str2) && !"audio/raw".equals(str2) && !"audio/flac".equals(str2) && !"audio/g711-alaw".equals(str2) && !"audio/g711-mlaw".equals(str2) && !"audio/gsm".equals(str2))) {
                if ("audio/ac3".equals(str2)) {
                    i = 6;
                } else if ("audio/eac3".equals(str2)) {
                    i = 16;
                } else {
                    i = 30;
                }
                zzdx.zzf("MediaCodecInfo", "AssumedMaxChannelAdjustment: " + str + ", [" + maxInputChannelCount + " to " + i + "]");
                maxInputChannelCount = i;
            }
            if (maxInputChannelCount < i5) {
                zzj("channelCount.support, " + i5);
                return false;
            }
        }
        return true;
    }

    public final boolean zzf(zzz zzzVar) {
        if (this.zzi) {
            return this.zze;
        }
        int i = zztw.zza;
        Pair zza = zzdh.zza(zzzVar);
        if (zza != null && ((Integer) zza.first).intValue() == 42) {
            return true;
        }
        return false;
    }

    public final boolean zzg(int i, int i2, double d) {
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.zzd;
        if (codecCapabilities == null) {
            zzj("sizeAndRate.caps");
            return false;
        }
        MediaCodecInfo.VideoCapabilities videoCapabilities = codecCapabilities.getVideoCapabilities();
        if (videoCapabilities == null) {
            zzj("sizeAndRate.vCaps");
            return false;
        }
        if (Build.VERSION.SDK_INT >= 29) {
            int zza = zzte.zza(videoCapabilities, i, i2, d);
            if (zza != 2) {
                if (zza == 1) {
                    zzj("sizeAndRate.cover, " + i + "x" + i2 + "@" + d);
                    return false;
                }
            }
            return true;
        }
        if (!zzk(videoCapabilities, i, i2, d)) {
            if (i < i2) {
                String str = this.zza;
                if ((!"OMX.MTK.VIDEO.DECODER.HEVC".equals(str) || !"mcv5a".equals(Build.DEVICE)) && zzk(videoCapabilities, i2, i, d)) {
                    zzdx.zzb("MediaCodecInfo", "AssumedSupport [" + ("sizeAndRate.rotated, " + i + "x" + i2 + "@" + d) + "] [" + str + ", " + this.zzb + "] [" + zzeu.zza + "]");
                }
            }
            zzj("sizeAndRate.support, " + i + "x" + i2 + "@" + d);
            return false;
        }
        return true;
    }

    public final MediaCodecInfo.CodecProfileLevel[] zzh() {
        MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArr;
        MediaCodecInfo.CodecCapabilities codecCapabilities = this.zzd;
        if (codecCapabilities != null && (codecProfileLevelArr = codecCapabilities.profileLevels) != null) {
            return codecProfileLevelArr;
        }
        return new MediaCodecInfo.CodecProfileLevel[0];
    }
}
