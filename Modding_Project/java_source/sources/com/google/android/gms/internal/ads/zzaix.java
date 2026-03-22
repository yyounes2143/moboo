package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import androidx.core.view.ViewCompat;
import androidx.media3.common.MimeTypes;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzaix {
    @Nullable
    public static zzau zza(zzek zzekVar) {
        String str;
        int zzc = zzekVar.zzc() + zzekVar.zzg();
        int zzg = zzekVar.zzg();
        int i = (zzg >> 24) & 255;
        zzau zzauVar = null;
        try {
            if (i != 169 && i != 253) {
                if (zzg == 1735291493) {
                    String zza = zzagy.zza(zzb(zzekVar) - 1);
                    if (zza != null) {
                        zzauVar = new zzahc("TCON", null, zzfyc.zzo(zza));
                    } else {
                        zzdx.zzf("MetadataUtil", "Failed to parse standard genre code");
                    }
                } else if (zzg == 1684632427) {
                    zzauVar = zzd(1684632427, "TPOS", zzekVar);
                } else if (zzg == 1953655662) {
                    zzauVar = zzd(1953655662, "TRCK", zzekVar);
                } else if (zzg == 1953329263) {
                    zzauVar = zzc(1953329263, "TBPM", zzekVar, true, false);
                } else if (zzg == 1668311404) {
                    zzauVar = zzc(1668311404, "TCMP", zzekVar, true, true);
                } else if (zzg == 1668249202) {
                    int zzg2 = zzekVar.zzg();
                    if (zzekVar.zzg() == 1684108385) {
                        int zzg3 = zzekVar.zzg();
                        int i2 = zzaip.zza;
                        int i3 = zzg3 & ViewCompat.MEASURED_SIZE_MASK;
                        if (i3 == 13) {
                            str = MimeTypes.IMAGE_JPEG;
                        } else if (i3 == 14) {
                            str = MimeTypes.IMAGE_PNG;
                            i3 = 14;
                        } else {
                            str = null;
                        }
                        if (str == null) {
                            zzdx.zzf("MetadataUtil", "Unrecognized cover art flags: " + i3);
                        } else {
                            zzekVar.zzM(4);
                            int i4 = zzg2 - 16;
                            byte[] bArr = new byte[i4];
                            zzekVar.zzH(bArr, 0, i4);
                            zzauVar = new zzago(str, null, 3, bArr);
                        }
                    } else {
                        zzdx.zzf("MetadataUtil", "Failed to parse cover art attribute");
                    }
                } else if (zzg == 1631670868) {
                    zzauVar = zze(1631670868, "TPE2", zzekVar);
                } else if (zzg == 1936682605) {
                    zzauVar = zze(1936682605, "TSOT", zzekVar);
                } else if (zzg == 1936679276) {
                    zzauVar = zze(1936679276, "TSOA", zzekVar);
                } else if (zzg == 1936679282) {
                    zzauVar = zze(1936679282, "TSOP", zzekVar);
                } else if (zzg == 1936679265) {
                    zzauVar = zze(1936679265, "TSO2", zzekVar);
                } else if (zzg == 1936679791) {
                    zzauVar = zze(1936679791, "TSOC", zzekVar);
                } else if (zzg == 1920233063) {
                    zzauVar = zzc(1920233063, "ITUNESADVISORY", zzekVar, false, false);
                } else if (zzg == 1885823344) {
                    zzauVar = zzc(1885823344, "ITUNESGAPLESS", zzekVar, false, true);
                } else if (zzg == 1936683886) {
                    zzauVar = zze(1936683886, "TVSHOWSORT", zzekVar);
                } else if (zzg == 1953919848) {
                    zzauVar = zze(1953919848, "TVSHOW", zzekVar);
                } else {
                    if (zzg == 757935405) {
                        int i5 = -1;
                        int i6 = -1;
                        String str2 = null;
                        String str3 = null;
                        while (zzekVar.zzc() < zzc) {
                            int zzc2 = zzekVar.zzc();
                            int zzg4 = zzekVar.zzg();
                            int zzg5 = zzekVar.zzg();
                            zzekVar.zzM(4);
                            if (zzg5 == 1835360622) {
                                str2 = zzekVar.zzA(zzg4 - 12);
                            } else {
                                int i7 = zzg4 - 12;
                                if (zzg5 == 1851878757) {
                                    str3 = zzekVar.zzA(i7);
                                } else {
                                    if (zzg5 == 1684108385) {
                                        i6 = zzg4;
                                    }
                                    if (zzg5 == 1684108385) {
                                        i5 = zzc2;
                                    }
                                    zzekVar.zzM(i7);
                                }
                            }
                        }
                        if (str2 != null && str3 != null && i5 != -1) {
                            zzekVar.zzL(i5);
                            zzekVar.zzM(16);
                            zzauVar = new zzagz(str2, str3, zzekVar.zzA(i6 - 16));
                        }
                    }
                    zzdx.zzb("MetadataUtil", "Skipped unknown metadata entry: " + zzfc.zze(zzg));
                }
            } else {
                int i8 = zzg & ViewCompat.MEASURED_SIZE_MASK;
                if (i8 == 6516084) {
                    int zzg6 = zzekVar.zzg();
                    if (zzekVar.zzg() == 1684108385) {
                        zzekVar.zzM(8);
                        String zzA = zzekVar.zzA(zzg6 - 16);
                        zzauVar = new zzags("und", zzA, zzA);
                    } else {
                        zzdx.zzf("MetadataUtil", "Failed to parse comment attribute: ".concat(zzfc.zze(zzg)));
                    }
                } else {
                    if (i8 != 7233901 && i8 != 7631467) {
                        if (i8 != 6516589 && i8 != 7828084) {
                            if (i8 == 6578553) {
                                zzauVar = zze(zzg, "TDRC", zzekVar);
                            } else if (i8 == 4280916) {
                                zzauVar = zze(zzg, "TPE1", zzekVar);
                            } else if (i8 == 7630703) {
                                zzauVar = zze(zzg, "TSSE", zzekVar);
                            } else if (i8 == 6384738) {
                                zzauVar = zze(zzg, "TALB", zzekVar);
                            } else if (i8 == 7108978) {
                                zzauVar = zze(zzg, "USLT", zzekVar);
                            } else if (i8 == 6776174) {
                                zzauVar = zze(zzg, "TCON", zzekVar);
                            } else {
                                if (i8 == 6779504) {
                                    zzauVar = zze(zzg, "TIT1", zzekVar);
                                }
                                zzdx.zzb("MetadataUtil", "Skipped unknown metadata entry: " + zzfc.zze(zzg));
                            }
                        }
                        zzauVar = zze(zzg, "TCOM", zzekVar);
                    }
                    zzauVar = zze(zzg, "TIT2", zzekVar);
                }
            }
            return zzauVar;
        } finally {
            zzekVar.zzL(zzc);
        }
    }

    private static int zzb(zzek zzekVar) {
        int zzg = zzekVar.zzg();
        if (zzekVar.zzg() == 1684108385) {
            zzekVar.zzM(8);
            int i = zzg - 16;
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i == 4 && (zzekVar.zzf() & 128) == 0) {
                            return zzekVar.zzp();
                        }
                    } else {
                        return zzekVar.zzo();
                    }
                } else {
                    return zzekVar.zzq();
                }
            } else {
                return zzekVar.zzm();
            }
        }
        zzdx.zzf("MetadataUtil", "Failed to parse data atom to int");
        return -1;
    }

    @Nullable
    private static zzagx zzc(int i, String str, zzek zzekVar, boolean z, boolean z2) {
        int zzb = zzb(zzekVar);
        if (z2) {
            zzb = Math.min(1, zzb);
        }
        if (zzb >= 0) {
            if (z) {
                return new zzahc(str, null, zzfyc.zzo(Integer.toString(zzb)));
            }
            return new zzags("und", str, Integer.toString(zzb));
        }
        zzdx.zzf("MetadataUtil", "Failed to parse uint8 attribute: ".concat(zzfc.zze(i)));
        return null;
    }

    @Nullable
    private static zzahc zzd(int i, String str, zzek zzekVar) {
        int zzg = zzekVar.zzg();
        if (zzekVar.zzg() == 1684108385 && zzg >= 22) {
            zzekVar.zzM(10);
            int zzq = zzekVar.zzq();
            if (zzq > 0) {
                StringBuilder sb = new StringBuilder();
                sb.append(zzq);
                String sb2 = sb.toString();
                int zzq2 = zzekVar.zzq();
                if (zzq2 > 0) {
                    sb2 = sb2 + "/" + zzq2;
                }
                return new zzahc(str, null, zzfyc.zzo(sb2));
            }
        }
        zzdx.zzf("MetadataUtil", "Failed to parse index/count attribute: ".concat(zzfc.zze(i)));
        return null;
    }

    @Nullable
    private static zzahc zze(int i, String str, zzek zzekVar) {
        int zzg = zzekVar.zzg();
        if (zzekVar.zzg() == 1684108385) {
            zzekVar.zzM(8);
            return new zzahc(str, null, zzfyc.zzo(zzekVar.zzA(zzg - 16)));
        }
        zzdx.zzf("MetadataUtil", "Failed to parse text attribute: ".concat(zzfc.zze(i)));
        return null;
    }
}
