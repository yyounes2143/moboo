package com.google.android.gms.internal.ads;

import android.util.SparseArray;
import androidx.annotation.Nullable;
import androidx.media3.common.MimeTypes;
import com.google.common.primitives.SignedBytes;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzamo implements zzaoe {
    private final List zza;

    public zzamo(int i, List list) {
        this.zza = list;
    }

    private final zzanv zzc(zzaod zzaodVar) {
        return new zzanv(zze(zzaodVar), MimeTypes.VIDEO_MP2T);
    }

    private final zzaoi zzd(zzaod zzaodVar) {
        return new zzaoi(zze(zzaodVar), MimeTypes.VIDEO_MP2T);
    }

    private final List zze(zzaod zzaodVar) {
        boolean z;
        String str;
        int i;
        List list;
        zzek zzekVar = new zzek(zzaodVar.zze);
        List list2 = this.zza;
        while (zzekVar.zza() > 0) {
            int zzm = zzekVar.zzm();
            int zzc = zzekVar.zzc() + zzekVar.zzm();
            if (zzm == 134) {
                list2 = new ArrayList();
                int zzm2 = zzekVar.zzm() & 31;
                for (int i2 = 0; i2 < zzm2; i2++) {
                    String zzB = zzekVar.zzB(3, StandardCharsets.UTF_8);
                    int zzm3 = zzekVar.zzm();
                    if ((zzm3 & 128) != 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (z) {
                        i = zzm3 & 63;
                        str = "application/cea-708";
                    } else {
                        str = "application/cea-608";
                        i = 1;
                    }
                    byte zzm4 = (byte) zzekVar.zzm();
                    zzekVar.zzM(1);
                    if (z) {
                        int i3 = zzm4 & SignedBytes.MAX_POWER_OF_TWO;
                        int i4 = zzdh.zza;
                        list = Collections.singletonList(i3 != 0 ? new byte[]{1} : new byte[]{0});
                    } else {
                        list = null;
                    }
                    zzx zzxVar = new zzx();
                    zzxVar.zzad(str);
                    zzxVar.zzS(zzB);
                    zzxVar.zzz(i);
                    zzxVar.zzP(list);
                    list2.add(zzxVar.zzaj());
                }
            }
            zzekVar.zzL(zzc);
        }
        return list2;
    }

    @Override // com.google.android.gms.internal.ads.zzaoe
    public final SparseArray zza() {
        return new SparseArray();
    }

    @Override // com.google.android.gms.internal.ads.zzaoe
    @Nullable
    public final zzaog zzb(int i, zzaod zzaodVar) {
        if (i != 2) {
            if (i != 3 && i != 4) {
                if (i != 21) {
                    if (i != 27) {
                        if (i != 36) {
                            if (i != 45) {
                                if (i != 89) {
                                    if (i != 172) {
                                        if (i != 257) {
                                            if (i != 128) {
                                                if (i != 129) {
                                                    if (i != 138) {
                                                        if (i != 139) {
                                                            switch (i) {
                                                                case 15:
                                                                    return new zzanl(new zzamn(false, zzaodVar.zzb, zzaodVar.zza(), MimeTypes.VIDEO_MP2T));
                                                                case 16:
                                                                    return new zzanl(new zzamw(zzd(zzaodVar), MimeTypes.VIDEO_MP2T));
                                                                case 17:
                                                                    return new zzanl(new zzanc(zzaodVar.zzb, zzaodVar.zza(), MimeTypes.VIDEO_MP2T));
                                                                default:
                                                                    switch (i) {
                                                                        case 134:
                                                                            return new zzant(new zzank("application/x-scte35", MimeTypes.VIDEO_MP2T));
                                                                        case 135:
                                                                            break;
                                                                        case 136:
                                                                            break;
                                                                        default:
                                                                            return null;
                                                                    }
                                                            }
                                                        } else {
                                                            return new zzanl(new zzamp(zzaodVar.zzb, zzaodVar.zza(), 5408, MimeTypes.VIDEO_MP2T));
                                                        }
                                                    }
                                                    return new zzanl(new zzamp(zzaodVar.zzb, zzaodVar.zza(), 4096, MimeTypes.VIDEO_MP2T));
                                                }
                                                return new zzanl(new zzamj(zzaodVar.zzb, zzaodVar.zza(), MimeTypes.VIDEO_MP2T));
                                            }
                                        } else {
                                            return new zzant(new zzank(MimeTypes.APPLICATION_AIT, MimeTypes.VIDEO_MP2T));
                                        }
                                    } else {
                                        return new zzanl(new zzaml(zzaodVar.zzb, zzaodVar.zza(), MimeTypes.VIDEO_MP2T));
                                    }
                                } else {
                                    return new zzanl(new zzamq(zzaodVar.zzd, MimeTypes.VIDEO_MP2T));
                                }
                            } else {
                                return new zzanl(new zzane(MimeTypes.VIDEO_MP2T));
                            }
                        } else {
                            return new zzanl(new zzana(zzc(zzaodVar), MimeTypes.VIDEO_MP2T));
                        }
                    } else {
                        return new zzanl(new zzamy(zzc(zzaodVar), false, false, MimeTypes.VIDEO_MP2T));
                    }
                } else {
                    return new zzanl(new zzanb(MimeTypes.VIDEO_MP2T));
                }
            } else {
                return new zzanl(new zzand(zzaodVar.zzb, zzaodVar.zza(), MimeTypes.VIDEO_MP2T));
            }
        }
        return new zzanl(new zzamt(zzd(zzaodVar), MimeTypes.VIDEO_MP2T));
    }

    public zzamo() {
        this(0);
    }

    public zzamo(int i) {
        this.zza = zzfyc.zzn();
    }
}
