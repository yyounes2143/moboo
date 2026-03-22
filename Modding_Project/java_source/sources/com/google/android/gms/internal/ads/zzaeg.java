package com.google.android.gms.internal.ads;

import androidx.media3.exoplayer.RendererCapabilities;
import androidx.media3.extractor.AacUtil;
import androidx.media3.extractor.Ac3Util;
import androidx.media3.extractor.DtsUtil;
import androidx.media3.extractor.MpegAudioUtil;
import com.tencent.ugc.TXRecordCommon;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzaeg {
    private static final String[] zza = {"audio/mpeg-L1", "audio/mpeg-L2", "audio/mpeg"};
    private static final int[] zzb = {TXRecordCommon.AUDIO_SAMPLERATE_44100, 48000, TXRecordCommon.AUDIO_SAMPLERATE_32000};
    private static final int[] zzc = {TXRecordCommon.AUDIO_SAMPLERATE_32000, 64000, 96000, 128000, 160000, DtsUtil.DTS_MAX_RATE_BYTES_PER_SECOND, 224000, AacUtil.AAC_XHE_MAX_RATE_BYTES_PER_SECOND, 288000, 320000, 352000, 384000, 416000, 448000};
    private static final int[] zzd = {TXRecordCommon.AUDIO_SAMPLERATE_32000, 48000, 56000, 64000, Ac3Util.AC3_MAX_RATE_BYTES_PER_SECOND, 96000, 112000, 128000, 144000, 160000, 176000, DtsUtil.DTS_MAX_RATE_BYTES_PER_SECOND, 224000, AacUtil.AAC_XHE_MAX_RATE_BYTES_PER_SECOND};
    private static final int[] zze = {TXRecordCommon.AUDIO_SAMPLERATE_32000, 48000, 56000, 64000, Ac3Util.AC3_MAX_RATE_BYTES_PER_SECOND, 96000, 112000, 128000, 160000, DtsUtil.DTS_MAX_RATE_BYTES_PER_SECOND, 224000, AacUtil.AAC_XHE_MAX_RATE_BYTES_PER_SECOND, 320000, 384000};
    private static final int[] zzf = {TXRecordCommon.AUDIO_SAMPLERATE_32000, MpegAudioUtil.MAX_RATE_BYTES_PER_SECOND, 48000, 56000, 64000, Ac3Util.AC3_MAX_RATE_BYTES_PER_SECOND, 96000, 112000, 128000, 160000, DtsUtil.DTS_MAX_RATE_BYTES_PER_SECOND, 224000, AacUtil.AAC_XHE_MAX_RATE_BYTES_PER_SECOND, 320000};
    private static final int[] zzg = {8000, 16000, 24000, TXRecordCommon.AUDIO_SAMPLERATE_32000, MpegAudioUtil.MAX_RATE_BYTES_PER_SECOND, 48000, 56000, 64000, Ac3Util.AC3_MAX_RATE_BYTES_PER_SECOND, 96000, 112000, 128000, 144000, 160000};

    public static int zzb(int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        if (!zzm(i) || (i2 = (i >>> 19) & 3) == 1 || (i3 = (i >>> 17) & 3) == 0 || (i4 = (i >>> 12) & 15) == 0 || i4 == 15 || (i5 = (i >>> 10) & 3) == 3) {
            return -1;
        }
        int i8 = i4 - 1;
        int i9 = zzb[i5];
        if (i2 == 2) {
            i9 /= 2;
        } else if (i2 == 0) {
            i9 /= 4;
        }
        int i10 = (i >>> 9) & 1;
        if (i3 == 3) {
            if (i2 == 3) {
                i7 = zzc[i8];
            } else {
                i7 = zzd[i8];
            }
            return (((i7 * 12) / i9) + i10) * 4;
        }
        if (i2 == 3) {
            if (i3 == 2) {
                i6 = zze[i8];
            } else {
                i6 = zzf[i8];
            }
        } else {
            i6 = zzg[i8];
        }
        int i11 = 144;
        if (i2 == 3) {
            return ((i6 * 144) / i9) + i10;
        }
        if (i3 == 1) {
            i11 = 72;
        }
        return ((i11 * i6) / i9) + i10;
    }

    public static int zzc(int i) {
        int i2;
        int i3;
        if (zzm(i) && (i2 = (i >>> 19) & 3) != 1 && (i3 = (i >>> 17) & 3) != 0) {
            int i4 = i >>> 12;
            int i5 = (i >>> 10) & 3;
            int i6 = i4 & 15;
            if (i6 != 0 && i6 != 15 && i5 != 3) {
                return zzl(i2, i3);
            }
            return -1;
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int zzl(int i, int i2) {
        if (i2 != 1) {
            if (i2 == 2) {
                return 1152;
            }
            return RendererCapabilities.DECODER_SUPPORT_MASK;
        } else if (i == 3) {
            return 1152;
        } else {
            return 576;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean zzm(int i) {
        if ((i & (-2097152)) == -2097152) {
            return true;
        }
        return false;
    }
}
