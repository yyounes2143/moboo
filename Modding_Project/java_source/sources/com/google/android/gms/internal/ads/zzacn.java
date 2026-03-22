package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import androidx.media3.exoplayer.RendererCapabilities;
import com.tencent.liteav.TXLiteAVCode;
import com.tencent.ugc.TXRecordCommon;
import com.vungle.ads.internal.protos.Sdk;
import java.nio.ByteBuffer;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzacn {
    public static final /* synthetic */ int zza = 0;
    private static final int[] zzb = {1, 2, 3, 6};
    private static final int[] zzc = {48000, TXRecordCommon.AUDIO_SAMPLERATE_44100, TXRecordCommon.AUDIO_SAMPLERATE_32000};
    private static final int[] zzd = {24000, 22050, 16000};
    private static final int[] zze = {2, 1, 2, 3, 3, 4, 4, 5};
    private static final int[] zzf = {32, 40, 48, 56, 64, 80, 96, 112, 128, 160, 192, 224, 256, Sdk.SDKError.Reason.WEBVIEW_ERROR_VALUE, RendererCapabilities.DECODER_SUPPORT_MASK, 448, 512, 576, 640};
    private static final int[] zzg = {69, 87, 104, 121, 139, 174, 208, 243, 278, 348, 417, 487, 557, 696, 835, 975, TXLiteAVCode.WARNING_CAMERA_IS_OCCUPIED, 1253, 1393};

    public static int zza(ByteBuffer byteBuffer) {
        int i = 3;
        if (((byteBuffer.get(byteBuffer.position() + 5) & 248) >> 3) > 10) {
            if (((byteBuffer.get(byteBuffer.position() + 4) & 192) >> 6) != 3) {
                i = (byteBuffer.get(byteBuffer.position() + 4) & 48) >> 4;
            }
            return zzb[i] * 256;
        }
        return 1536;
    }

    public static int zzb(byte[] bArr) {
        if (bArr.length < 6) {
            return -1;
        }
        if (((bArr[5] & 248) >> 3) > 10) {
            int i = ((bArr[3] & 255) | ((bArr[2] & 7) << 8)) + 1;
            return i + i;
        }
        byte b = bArr[4];
        return zzf((b & 192) >> 6, b & 63);
    }

    public static zzz zzc(zzek zzekVar, String str, @Nullable String str2, @Nullable zzs zzsVar) {
        zzej zzejVar = new zzej();
        zzejVar.zzj(zzekVar);
        int i = zzc[zzejVar.zzd(2)];
        zzejVar.zzn(8);
        int i2 = zze[zzejVar.zzd(3)];
        if (zzejVar.zzd(1) != 0) {
            i2++;
        }
        int i3 = zzf[zzejVar.zzd(5)] * 1000;
        zzejVar.zzf();
        zzekVar.zzL(zzejVar.zzb());
        zzx zzxVar = new zzx();
        zzxVar.zzO(str);
        zzxVar.zzad("audio/ac3");
        zzxVar.zzB(i2);
        zzxVar.zzae(i);
        zzxVar.zzH(zzsVar);
        zzxVar.zzS(str2);
        zzxVar.zzA(i3);
        zzxVar.zzY(i3);
        return zzxVar.zzaj();
    }

    public static zzz zzd(zzek zzekVar, String str, @Nullable String str2, @Nullable zzs zzsVar) {
        String str3;
        zzej zzejVar = new zzej();
        zzejVar.zzj(zzekVar);
        int zzd2 = zzejVar.zzd(13) * 1000;
        zzejVar.zzn(3);
        int i = zzc[zzejVar.zzd(2)];
        zzejVar.zzn(10);
        int i2 = zze[zzejVar.zzd(3)];
        if (zzejVar.zzd(1) != 0) {
            i2++;
        }
        zzejVar.zzn(3);
        int zzd3 = zzejVar.zzd(4);
        zzejVar.zzn(1);
        if (zzd3 > 0) {
            zzejVar.zzn(6);
            if (zzejVar.zzd(1) != 0) {
                i2 += 2;
            }
            zzejVar.zzn(1);
        }
        if (zzejVar.zza() > 7) {
            zzejVar.zzn(7);
            if (zzejVar.zzd(1) != 0) {
                str3 = "audio/eac3-joc";
                zzejVar.zzf();
                zzekVar.zzL(zzejVar.zzb());
                zzx zzxVar = new zzx();
                zzxVar.zzO(str);
                zzxVar.zzad(str3);
                zzxVar.zzB(i2);
                zzxVar.zzae(i);
                zzxVar.zzH(zzsVar);
                zzxVar.zzS(str2);
                zzxVar.zzY(zzd2);
                return zzxVar.zzaj();
            }
        }
        str3 = "audio/eac3";
        zzejVar.zzf();
        zzekVar.zzL(zzejVar.zzb());
        zzx zzxVar2 = new zzx();
        zzxVar2.zzO(str);
        zzxVar2.zzad(str3);
        zzxVar2.zzB(i2);
        zzxVar2.zzae(i);
        zzxVar2.zzH(zzsVar);
        zzxVar2.zzS(str2);
        zzxVar2.zzY(zzd2);
        return zzxVar2.zzaj();
    }

    public static zzacl zze(zzej zzejVar) {
        String str;
        int zzf2;
        int i;
        int i2;
        int i3;
        String str2;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        String str3;
        int zzc2 = zzejVar.zzc();
        zzejVar.zzn(40);
        int zzd2 = zzejVar.zzd(5);
        zzejVar.zzl(zzc2);
        int i9 = -1;
        if (zzd2 > 10) {
            zzejVar.zzn(16);
            int zzd3 = zzejVar.zzd(2);
            if (zzd3 != 0) {
                if (zzd3 != 1) {
                    if (zzd3 == 2) {
                        i9 = 2;
                    }
                } else {
                    i9 = 1;
                }
            } else {
                i9 = 0;
            }
            zzejVar.zzn(3);
            int zzd4 = zzejVar.zzd(11) + 1;
            int zzd5 = zzejVar.zzd(2);
            if (zzd5 == 3) {
                i = zzd[zzejVar.zzd(2)];
                i6 = 6;
                i5 = 3;
            } else {
                int zzd6 = zzejVar.zzd(2);
                int i10 = zzb[zzd6];
                i5 = zzd6;
                i = zzc[zzd5];
                i6 = i10;
            }
            zzf2 = zzd4 + zzd4;
            int i11 = (zzf2 * i) / (i6 * 32);
            int zzd7 = zzejVar.zzd(3);
            boolean zzp = zzejVar.zzp();
            i2 = zze[zzd7] + (zzp ? 1 : 0);
            zzejVar.zzn(10);
            if (zzejVar.zzp()) {
                zzejVar.zzn(8);
            }
            if (zzd7 == 0) {
                zzejVar.zzn(5);
                if (zzejVar.zzp()) {
                    zzejVar.zzn(8);
                }
                i7 = 0;
                zzd7 = 0;
            } else {
                i7 = zzd7;
            }
            if (i9 == 1) {
                if (zzejVar.zzp()) {
                    zzejVar.zzn(16);
                }
                i8 = 1;
            } else {
                i8 = i9;
            }
            if (zzejVar.zzp()) {
                if (i7 > 2) {
                    zzejVar.zzn(2);
                }
                if ((i7 & 1) != 0 && i7 > 2) {
                    zzejVar.zzn(6);
                }
                if ((i7 & 4) != 0) {
                    zzejVar.zzn(6);
                }
                if (zzp && zzejVar.zzp()) {
                    zzejVar.zzn(5);
                }
                if (i8 == 0) {
                    if (zzejVar.zzp()) {
                        zzejVar.zzn(6);
                    }
                    if (i7 == 0 && zzejVar.zzp()) {
                        zzejVar.zzn(6);
                    }
                    if (zzejVar.zzp()) {
                        zzejVar.zzn(6);
                    }
                    int zzd8 = zzejVar.zzd(2);
                    if (zzd8 == 1) {
                        zzejVar.zzn(5);
                    } else if (zzd8 == 2) {
                        zzejVar.zzn(12);
                    } else if (zzd8 == 3) {
                        int zzd9 = zzejVar.zzd(5);
                        if (zzejVar.zzp()) {
                            zzejVar.zzn(5);
                            if (zzejVar.zzp()) {
                                zzejVar.zzn(4);
                            }
                            if (zzejVar.zzp()) {
                                zzejVar.zzn(4);
                            }
                            if (zzejVar.zzp()) {
                                zzejVar.zzn(4);
                            }
                            if (zzejVar.zzp()) {
                                zzejVar.zzn(4);
                            }
                            if (zzejVar.zzp()) {
                                zzejVar.zzn(4);
                            }
                            if (zzejVar.zzp()) {
                                zzejVar.zzn(4);
                            }
                            if (zzejVar.zzp()) {
                                zzejVar.zzn(4);
                            }
                            if (zzejVar.zzp()) {
                                if (zzejVar.zzp()) {
                                    zzejVar.zzn(4);
                                }
                                if (zzejVar.zzp()) {
                                    zzejVar.zzn(4);
                                }
                            }
                        }
                        if (zzejVar.zzp()) {
                            zzejVar.zzn(5);
                            if (zzejVar.zzp()) {
                                zzejVar.zzn(7);
                                if (zzejVar.zzp()) {
                                    zzejVar.zzn(8);
                                }
                            }
                        }
                        zzejVar.zzn((zzd9 + 2) * 8);
                        zzejVar.zzf();
                    }
                    if (i7 < 2) {
                        if (zzejVar.zzp()) {
                            zzejVar.zzn(14);
                        }
                        if (zzd7 == 0 && zzejVar.zzp()) {
                            zzejVar.zzn(14);
                        }
                    }
                    if (zzejVar.zzp()) {
                        if (i5 == 0) {
                            zzejVar.zzn(5);
                            i8 = 0;
                            i5 = 0;
                        } else {
                            for (int i12 = 0; i12 < i6; i12++) {
                                if (zzejVar.zzp()) {
                                    zzejVar.zzn(5);
                                }
                            }
                        }
                    }
                    i8 = 0;
                }
            }
            if (zzejVar.zzp()) {
                zzejVar.zzn(5);
                if (i7 == 2) {
                    zzejVar.zzn(4);
                    i7 = 2;
                }
                if (i7 >= 6) {
                    zzejVar.zzn(2);
                }
                if (zzejVar.zzp()) {
                    zzejVar.zzn(8);
                }
                if (i7 == 0 && zzejVar.zzp()) {
                    zzejVar.zzn(8);
                }
                if (zzd5 < 3) {
                    zzejVar.zzm();
                }
            }
            if (i8 == 0 && i5 != 3) {
                zzejVar.zzm();
            }
            if (i8 == 2 && (i5 == 3 || zzejVar.zzp())) {
                zzejVar.zzn(6);
            }
            if (zzejVar.zzp() && zzejVar.zzd(6) == 1 && zzejVar.zzd(8) == 1) {
                str3 = "audio/eac3-joc";
            } else {
                str3 = "audio/eac3";
            }
            i3 = i6 * 256;
            str2 = str3;
            i4 = i11;
        } else {
            zzejVar.zzn(32);
            int zzd10 = zzejVar.zzd(2);
            if (zzd10 == 3) {
                str = null;
            } else {
                str = "audio/ac3";
            }
            int zzd11 = zzejVar.zzd(6);
            int i13 = zzf[zzd11 / 2] * 1000;
            zzf2 = zzf(zzd10, zzd11);
            zzejVar.zzn(8);
            int zzd12 = zzejVar.zzd(3);
            if ((zzd12 & 1) != 0 && zzd12 != 1) {
                zzejVar.zzn(2);
            }
            if ((zzd12 & 4) != 0) {
                zzejVar.zzn(2);
            }
            if (zzd12 == 2) {
                zzejVar.zzn(2);
            }
            if (zzd10 < 3) {
                i = zzc[zzd10];
            } else {
                i = -1;
            }
            i2 = zze[zzd12] + (zzejVar.zzp() ? 1 : 0);
            i3 = 1536;
            str2 = str;
            i4 = i13;
        }
        return new zzacl(str2, i9, i2, i, zzf2, i3, i4, null);
    }

    private static int zzf(int i, int i2) {
        int i3;
        if (i >= 0 && i < 3 && i2 >= 0 && (i3 = i2 >> 1) < 19) {
            int i4 = zzc[i];
            if (i4 == 44100) {
                int i5 = zzg[i3] + (i2 & 1);
                return i5 + i5;
            }
            int i6 = zzf[i3];
            if (i4 == 32000) {
                return i6 * 6;
            }
            return i6 * 4;
        }
        return -1;
    }
}
