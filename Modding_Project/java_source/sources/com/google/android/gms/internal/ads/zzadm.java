package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import androidx.media3.common.C;
import androidx.media3.common.MimeTypes;
import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.extractor.DtsUtil;
import com.google.android.material.internal.ViewUtils;
import com.tencent.rtmp.downloader.TXVodDownloadDataSource;
import com.tencent.ugc.TXRecordCommon;
import io.flutter.plugin.platform.PlatformPlugin;
import java.math.RoundingMode;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicInteger;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzadm {
    public static final /* synthetic */ int zza = 0;
    private static final int[] zzb = {1, 2, 2, 2, 2, 3, 3, 4, 4, 5, 6, 6, 6, 7, 8, 8};
    private static final int[] zzc = {-1, 8000, 16000, TXRecordCommon.AUDIO_SAMPLERATE_32000, -1, -1, 11025, 22050, TXRecordCommon.AUDIO_SAMPLERATE_44100, -1, -1, 12000, 24000, 48000, -1, -1};
    private static final int[] zzd = {64, 112, 128, 192, 224, 256, RendererCapabilities.DECODER_SUPPORT_MASK, 448, 512, 640, ViewUtils.EDGE_TO_EDGE_FLAGS, 896, 1024, 1152, PlatformPlugin.DEFAULT_SYSTEM_UI, 1536, 1920, 2048, 2304, 2560, 2688, 2816, 2823, 2944, 3072, 3840, 4096, 6144, 7680};
    private static final int[] zze = {8000, 16000, TXRecordCommon.AUDIO_SAMPLERATE_32000, 64000, 128000, 22050, TXRecordCommon.AUDIO_SAMPLERATE_44100, 88200, 176400, 352800, 12000, 24000, 48000, 96000, DtsUtil.DTS_MAX_RATE_BYTES_PER_SECOND, 384000};
    private static final int[] zzf = {5, 8, 10, 12};
    private static final int[] zzg = {6, 9, 12, 15};
    private static final int[] zzh = {2, 4, 6, 8};
    private static final int[] zzi = {9, 11, 13, 16};
    private static final int[] zzj = {5, 8, 10, 12};

    public static int zza(byte[] bArr) {
        int i;
        zzej zzg2 = zzg(bArr);
        zzg2.zzn(42);
        if (true != zzg2.zzp()) {
            i = 8;
        } else {
            i = 12;
        }
        return zzg2.zzd(i) + 1;
    }

    public static int zzb(byte[] bArr) {
        zzej zzg2 = zzg(bArr);
        zzg2.zzn(32);
        return zzf(zzg2, zzj, true) + 1;
    }

    public static zzz zzc(byte[] bArr, @Nullable String str, @Nullable String str2, int i, String str3, @Nullable zzs zzsVar) {
        int i2;
        int i3;
        zzej zzg2 = zzg(bArr);
        zzg2.zzn(60);
        int i4 = zzb[zzg2.zzd(6)];
        int i5 = zzc[zzg2.zzd(4)];
        int zzd2 = zzg2.zzd(5);
        if (zzd2 >= 29) {
            i2 = -1;
        } else {
            i2 = (zzd[zzd2] * 1000) / 2;
        }
        zzg2.zzn(10);
        if (zzg2.zzd(2) > 0) {
            i3 = 1;
        } else {
            i3 = 0;
        }
        int i6 = i4 + i3;
        zzx zzxVar = new zzx();
        zzxVar.zzO(str);
        zzxVar.zzE(MimeTypes.VIDEO_MP2T);
        zzxVar.zzad("audio/vnd.dts");
        zzxVar.zzA(i2);
        zzxVar.zzB(i6);
        zzxVar.zzae(i5);
        zzxVar.zzH(null);
        zzxVar.zzS(str2);
        zzxVar.zzab(i);
        return zzxVar.zzaj();
    }

    public static zzadk zzd(byte[] bArr) throws zzaz {
        int i;
        int i2;
        int i3;
        int i4;
        long j;
        int i5;
        zzej zzg2 = zzg(bArr);
        zzg2.zzn(40);
        int zzd2 = zzg2.zzd(2);
        boolean zzp = zzg2.zzp();
        if (true != zzp) {
            i = 16;
        } else {
            i = 20;
        }
        if (true != zzp) {
            i2 = 8;
        } else {
            i2 = 12;
        }
        zzg2.zzn(i2);
        int zzd3 = zzg2.zzd(i) + 1;
        boolean zzp2 = zzg2.zzp();
        int i6 = -1;
        int i7 = 0;
        if (zzp2) {
            i3 = zzg2.zzd(2);
            int zzd4 = zzg2.zzd(3) + 1;
            if (zzg2.zzp()) {
                zzg2.zzn(36);
            }
            int zzd5 = zzg2.zzd(3) + 1;
            int zzd6 = zzg2.zzd(3) + 1;
            if (zzd5 == 1 && zzd6 == 1) {
                int i8 = zzd2 + 1;
                int zzd7 = zzg2.zzd(i8);
                for (int i9 = 0; i9 < i8; i9++) {
                    if (((zzd7 >> i9) & 1) == 1) {
                        zzg2.zzn(8);
                    }
                }
                int i10 = zzd4 * 512;
                if (zzg2.zzp()) {
                    zzg2.zzn(2);
                    int zzd8 = (zzg2.zzd(2) + 1) << 2;
                    int zzd9 = zzg2.zzd(2) + 1;
                    while (i7 < zzd9) {
                        zzg2.zzn(zzd8);
                        i7++;
                    }
                }
                i7 = i10;
            } else {
                throw zzaz.zzc("Multiple audio presentations or assets not supported");
            }
        } else {
            i3 = -1;
        }
        zzg2.zzn(i);
        zzg2.zzn(12);
        if (zzp2) {
            if (zzg2.zzp()) {
                zzg2.zzn(4);
            }
            if (zzg2.zzp()) {
                zzg2.zzn(24);
            }
            if (zzg2.zzp()) {
                zzg2.zzo(zzg2.zzd(10) + 1);
            }
            zzg2.zzn(5);
            i4 = zze[zzg2.zzd(4)];
            i6 = zzg2.zzd(8) + 1;
        } else {
            i4 = C.RATE_UNSET_INT;
        }
        int i11 = i4;
        if (zzp2) {
            if (i3 != 0) {
                if (i3 != 1) {
                    if (i3 == 2) {
                        i5 = 48000;
                    } else {
                        throw zzaz.zza("Unsupported reference clock code in DTS HD header: " + i3, null);
                    }
                } else {
                    i5 = TXRecordCommon.AUDIO_SAMPLERATE_44100;
                }
            } else {
                i5 = TXRecordCommon.AUDIO_SAMPLERATE_32000;
            }
            j = zzeu.zzu(i7, 1000000L, i5, RoundingMode.DOWN);
        } else {
            j = -9223372036854775807L;
        }
        return new zzadk("audio/vnd.dts.hd;profile=lbr", i6, i11, zzd3, j, 0, null);
    }

    public static zzadk zze(byte[] bArr, AtomicInteger atomicInteger) throws zzaz {
        char c;
        long j;
        int i;
        AtomicInteger atomicInteger2;
        int i2;
        int i3;
        int i4;
        zzej zzg2 = zzg(bArr);
        int zzd2 = zzg2.zzd(32);
        int zzf2 = zzf(zzg2, zzf, true);
        int i5 = zzf2 + 1;
        if (zzd2 == 1078008818) {
            c = 1;
        } else {
            c = 0;
        }
        if (c != 0) {
            if (zzg2.zzp()) {
                int i6 = zzf2 - 1;
                if (((bArr[zzf2] & 255) | ((char) (bArr[i6] << 8))) == zzeu.zze(bArr, 0, i6, 65535)) {
                    int zzd3 = zzg2.zzd(2);
                    if (zzd3 != 0) {
                        if (zzd3 != 1) {
                            if (zzd3 == 2) {
                                i3 = RendererCapabilities.DECODER_SUPPORT_MASK;
                            } else {
                                throw zzaz.zza("Unsupported base duration index in DTS UHD header: " + zzd3, null);
                            }
                        } else {
                            i3 = TXVodDownloadDataSource.QUALITY_480P;
                        }
                    } else {
                        i3 = 512;
                    }
                    int zzd4 = zzg2.zzd(3) + 1;
                    int zzd5 = zzg2.zzd(2);
                    if (zzd5 != 0) {
                        if (zzd5 != 1) {
                            if (zzd5 == 2) {
                                i4 = 48000;
                            } else {
                                throw zzaz.zza("Unsupported clock rate index in DTS UHD header: " + zzd5, null);
                            }
                        } else {
                            i4 = TXRecordCommon.AUDIO_SAMPLERATE_44100;
                        }
                    } else {
                        i4 = TXRecordCommon.AUDIO_SAMPLERATE_32000;
                    }
                    if (zzg2.zzp()) {
                        zzg2.zzn(36);
                    }
                    i = (1 << zzg2.zzd(2)) * i4;
                    j = zzeu.zzu(i3 * zzd4, 1000000L, i4, RoundingMode.DOWN);
                } else {
                    throw zzaz.zza("CRC check failed", null);
                }
            } else {
                throw zzaz.zzc("Only supports full channel mask-based audio presentation");
            }
        } else {
            j = -9223372036854775807L;
            i = C.RATE_UNSET_INT;
        }
        int i7 = i;
        long j2 = j;
        int i8 = 0;
        for (char c2 = 0; c2 < c; c2 = 1) {
            i8 += zzf(zzg2, zzg, true);
        }
        for (int i9 = 0; i9 <= 0; i9++) {
            if (c != 0) {
                atomicInteger2 = atomicInteger;
                atomicInteger2.set(zzf(zzg2, zzh, true));
            } else {
                atomicInteger2 = atomicInteger;
            }
            if (atomicInteger2.get() != 0) {
                i2 = zzf(zzg2, zzi, true);
            } else {
                i2 = 0;
            }
            i8 += i2;
        }
        return new zzadk(MimeTypes.AUDIO_DTS_X, 2, i7, i5 + i8, j2, 0, null);
    }

    private static int zzf(zzej zzejVar, int[] iArr, boolean z) {
        int i = 0;
        for (int i2 = 0; i2 < 3 && zzejVar.zzp(); i2++) {
            i++;
        }
        int i3 = 0;
        for (int i4 = 0; i4 < i; i4++) {
            i3 += 1 << iArr[i4];
        }
        return i3 + zzejVar.zzd(iArr[i]);
    }

    private static zzej zzg(byte[] bArr) {
        byte b = bArr[0];
        if (b != Byte.MAX_VALUE && b != 100 && b != 64 && b != 113) {
            byte[] copyOf = Arrays.copyOf(bArr, bArr.length);
            byte b2 = copyOf[0];
            if (b2 == -2 || b2 == -1 || b2 == 37 || b2 == -14 || b2 == -24) {
                for (int i = 0; i < copyOf.length - 1; i += 2) {
                    byte b3 = copyOf[i];
                    int i2 = i + 1;
                    copyOf[i] = copyOf[i2];
                    copyOf[i2] = b3;
                }
            }
            int length = copyOf.length;
            zzej zzejVar = new zzej(copyOf, length);
            if (copyOf[0] == 31) {
                zzej zzejVar2 = new zzej(copyOf, length);
                while (zzejVar2.zza() >= 16) {
                    zzejVar2.zzn(2);
                    zzejVar.zzg(zzejVar2.zzd(14), 14);
                }
            }
            zzejVar.zzk(copyOf, copyOf.length);
            return zzejVar;
        }
        return new zzej(bArr, bArr.length);
    }
}
