package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import androidx.media3.common.MimeTypes;
import androidx.media3.extractor.avi.AviExtractor;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzafj implements zzafb {
    public final zzfyc zza;
    private final int zzb;

    private zzafj(int i, zzfyc zzfycVar) {
        this.zzb = i;
        this.zza = zzfycVar;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static zzafj zzc(int i, zzek zzekVar) {
        String str;
        int i2;
        zzafb zzafkVar;
        String str2;
        zzfxz zzfxzVar = new zzfxz();
        int zzd = zzekVar.zzd();
        int i3 = -2;
        while (zzekVar.zza() > 8) {
            int zzi = zzekVar.zzi();
            int zzc = zzekVar.zzc() + zzekVar.zzi();
            zzekVar.zzK(zzc);
            if (zzi == 1414744396) {
                zzafkVar = zzc(zzekVar.zzi(), zzekVar);
            } else {
                zzafk zzafkVar2 = null;
                switch (zzi) {
                    case AviExtractor.FOURCC_strf /* 1718776947 */:
                        if (i3 == 2) {
                            zzekVar.zzM(4);
                            int zzi2 = zzekVar.zzi();
                            int zzi3 = zzekVar.zzi();
                            zzekVar.zzM(4);
                            int zzi4 = zzekVar.zzi();
                            switch (zzi4) {
                                case 808802372:
                                case 877677894:
                                case 1145656883:
                                case 1145656920:
                                case 1482049860:
                                case 1684633208:
                                case 2021026148:
                                    str2 = "video/mp4v-es";
                                    break;
                                case 826496577:
                                case 828601953:
                                case 875967048:
                                    str2 = "video/avc";
                                    break;
                                case 842289229:
                                    str2 = MimeTypes.VIDEO_MP42;
                                    break;
                                case 859066445:
                                    str2 = MimeTypes.VIDEO_MP43;
                                    break;
                                case 1196444237:
                                case 1735420525:
                                    str2 = MimeTypes.VIDEO_MJPEG;
                                    break;
                                default:
                                    str2 = null;
                                    break;
                            }
                            if (str2 == null) {
                                zzdx.zzf("StreamFormatChunk", "Ignoring track with unsupported compression " + zzi4);
                            } else {
                                zzx zzxVar = new zzx();
                                zzxVar.zzai(zzi2);
                                zzxVar.zzM(zzi3);
                                zzxVar.zzad(str2);
                                zzafkVar2 = new zzafk(zzxVar.zzaj());
                            }
                        } else if (i3 == 1) {
                            int zzk = zzekVar.zzk();
                            if (zzk == 1) {
                                str = "audio/raw";
                            } else if (zzk != 85) {
                                if (zzk == 255) {
                                    str = "audio/mp4a-latm";
                                } else if (zzk != 8192) {
                                    if (zzk != 8193) {
                                        str = null;
                                    } else {
                                        str = "audio/vnd.dts";
                                    }
                                } else {
                                    str = "audio/ac3";
                                }
                            } else {
                                str = "audio/mpeg";
                            }
                            if (str == null) {
                                zzdx.zzf("StreamFormatChunk", "Ignoring track with unsupported format tag " + zzk);
                            } else {
                                int zzk2 = zzekVar.zzk();
                                int zzi5 = zzekVar.zzi();
                                zzekVar.zzM(6);
                                int zzn = zzeu.zzn(zzekVar.zzk());
                                if (zzekVar.zza() > 0) {
                                    i2 = zzekVar.zzk();
                                } else {
                                    i2 = 0;
                                }
                                zzx zzxVar2 = new zzx();
                                zzxVar2.zzad(str);
                                zzxVar2.zzB(zzk2);
                                zzxVar2.zzae(zzi5);
                                if (str.equals("audio/raw") && zzn != 0) {
                                    zzxVar2.zzX(zzn);
                                }
                                if (str.equals("audio/mp4a-latm") && i2 > 0) {
                                    byte[] bArr = new byte[i2];
                                    zzekVar.zzH(bArr, 0, i2);
                                    zzxVar2.zzP(zzfyc.zzo(bArr));
                                }
                                zzafkVar = new zzafk(zzxVar2.zzaj());
                                break;
                            }
                        } else {
                            zzdx.zzf("StreamFormatChunk", "Ignoring strf box for unsupported track type: ".concat(zzeu.zzD(i3)));
                        }
                        zzafkVar = zzafkVar2;
                        break;
                    case AviExtractor.FOURCC_avih /* 1751742049 */:
                        zzafkVar = zzafg.zzb(zzekVar);
                        break;
                    case AviExtractor.FOURCC_strh /* 1752331379 */:
                        zzafkVar = zzafh.zzd(zzekVar);
                        break;
                    case AviExtractor.FOURCC_strn /* 1852994675 */:
                        zzafkVar = zzafl.zzb(zzekVar);
                        break;
                    default:
                        zzafkVar = zzafkVar2;
                        break;
                }
            }
            if (zzafkVar != null) {
                if (zzafkVar.zza() == 1752331379) {
                    i3 = ((zzafh) zzafkVar).zzb();
                }
                zzfxzVar.zzf(zzafkVar);
            }
            zzekVar.zzL(zzc);
            zzekVar.zzK(zzd);
        }
        return new zzafj(i, zzfxzVar.zzi());
    }

    @Override // com.google.android.gms.internal.ads.zzafb
    public final int zza() {
        return this.zzb;
    }

    @Nullable
    public final zzafb zzb(Class cls) {
        zzfyc zzfycVar = this.zza;
        int size = zzfycVar.size();
        int i = 0;
        while (i < size) {
            zzafb zzafbVar = (zzafb) zzfycVar.get(i);
            i++;
            if (zzafbVar.getClass() == cls) {
                return zzafbVar;
            }
        }
        return null;
    }
}
