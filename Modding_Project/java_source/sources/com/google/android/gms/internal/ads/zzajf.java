package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.List;
import kotlinx.serialization.json.internal.AbstractJsonLexerKt;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
final class zzajf {
    private static final zzfvr zza = zzfvr.zzb(zzfun.zzc(AbstractJsonLexerKt.COLON));
    private static final zzfvr zzb = zzfvr.zzb(zzfun.zzc('*'));
    private final List zzc = new ArrayList();
    private int zzd = 0;
    private int zze;

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public final int zza(zzado zzadoVar, zzaej zzaejVar, List list) throws IOException {
        int i;
        boolean z;
        char c;
        int i2 = this.zzd;
        if (i2 != 0) {
            int i3 = 2;
            if (i2 != 1) {
                short s = 2817;
                short s2 = 2816;
                short s3 = 2192;
                if (i2 != 2) {
                    long zzf = zzadoVar.zzf();
                    int zzd = (int) ((zzadoVar.zzd() - zzadoVar.zzf()) - this.zze);
                    zzek zzekVar = new zzek(zzd);
                    zzadoVar.zzi(zzekVar.zzN(), 0, zzd);
                    int i4 = 0;
                    while (true) {
                        List list2 = this.zzc;
                        if (i4 < list2.size()) {
                            zzaje zzajeVar = (zzaje) list2.get(i4);
                            zzekVar.zzL((int) (zzajeVar.zza - zzf));
                            zzekVar.zzM(4);
                            int zzi = zzekVar.zzi();
                            Charset charset = StandardCharsets.UTF_8;
                            String zzB = zzekVar.zzB(zzi, charset);
                            switch (zzB.hashCode()) {
                                case -1711564334:
                                    if (zzB.equals("SlowMotion_Data")) {
                                        z = false;
                                        break;
                                    }
                                    z = true;
                                    break;
                                case -1332107749:
                                    if (zzB.equals("Super_SlowMotion_Edit_Data")) {
                                        z = true;
                                        break;
                                    }
                                    z = true;
                                    break;
                                case -1251387154:
                                    if (zzB.equals("Super_SlowMotion_Data")) {
                                        z = true;
                                        break;
                                    }
                                    z = true;
                                    break;
                                case -830665521:
                                    if (zzB.equals("Super_SlowMotion_Deflickering_On")) {
                                        z = true;
                                        break;
                                    }
                                    z = true;
                                    break;
                                case 1760745220:
                                    if (zzB.equals("Super_SlowMotion_BGM")) {
                                        z = true;
                                        break;
                                    }
                                    z = true;
                                    break;
                                default:
                                    z = true;
                                    break;
                            }
                            if (z) {
                                if (!z) {
                                    if (!z) {
                                        if (!z) {
                                            if (z) {
                                                c = 2820;
                                            } else {
                                                throw zzaz.zza("Invalid SEF name", null);
                                            }
                                        } else {
                                            c = 2819;
                                        }
                                    } else {
                                        c = 2817;
                                    }
                                } else {
                                    c = 2816;
                                }
                            } else {
                                c = 2192;
                            }
                            int i5 = zzajeVar.zzb - (zzi + 8);
                            if (c != 2192) {
                                if (c != 2816 && c != 2817 && c != 2819 && c != 2820) {
                                    throw new IllegalStateException();
                                }
                            } else {
                                ArrayList arrayList = new ArrayList();
                                List zzf2 = zzb.zzf(zzekVar.zzB(i5, charset));
                                for (int i6 = 0; i6 < zzf2.size(); i6++) {
                                    List zzf3 = zza.zzf((CharSequence) zzf2.get(i6));
                                    if (zzf3.size() == 3) {
                                        try {
                                            arrayList.add(new zzahf(Long.parseLong((String) zzf3.get(0)), Long.parseLong((String) zzf3.get(1)), 1 << (Integer.parseInt((String) zzf3.get(2)) - 1)));
                                        } catch (NumberFormatException e) {
                                            throw zzaz.zza(null, e);
                                        }
                                    } else {
                                        throw zzaz.zza(null, null);
                                    }
                                }
                                list.add(new zzahg(arrayList));
                            }
                            i4++;
                        } else {
                            zzaejVar.zza = 0L;
                            return 1;
                        }
                    }
                } else {
                    long zzd2 = zzadoVar.zzd();
                    int i7 = this.zze - 20;
                    zzek zzekVar2 = new zzek(i7);
                    zzadoVar.zzi(zzekVar2.zzN(), 0, i7);
                    int i8 = 0;
                    while (i8 < i7 / 12) {
                        zzekVar2.zzM(i3);
                        short zzD = zzekVar2.zzD();
                        if (zzD != s3 && zzD != s2 && zzD != s && zzD != 2819 && zzD != 2820) {
                            zzekVar2.zzM(8);
                            i = i7;
                        } else {
                            i = i7;
                            this.zzc.add(new zzaje(zzD, (zzd2 - this.zze) - zzekVar2.zzi(), zzekVar2.zzi()));
                        }
                        i8++;
                        i7 = i;
                        i3 = 2;
                        s = 2817;
                        s2 = 2816;
                        s3 = 2192;
                    }
                    List list3 = this.zzc;
                    if (list3.isEmpty()) {
                        zzaejVar.zza = 0L;
                    } else {
                        this.zzd = 3;
                        zzaejVar.zza = ((zzaje) list3.get(0)).zza;
                    }
                }
            } else {
                zzek zzekVar3 = new zzek(8);
                zzadoVar.zzi(zzekVar3.zzN(), 0, 8);
                this.zze = zzekVar3.zzi() + 8;
                if (zzekVar3.zzg() != 1397048916) {
                    zzaejVar.zza = 0L;
                } else {
                    zzaejVar.zza = zzadoVar.zzf() - (this.zze - 12);
                    this.zzd = 2;
                }
            }
            return 1;
        }
        long zzd3 = zzadoVar.zzd();
        zzaejVar.zza = (zzd3 == -1 || zzd3 < 8) ? 0L : zzd3 - 8;
        this.zzd = 1;
        return 1;
    }

    public final void zzb() {
        this.zzc.clear();
        this.zzd = 0;
    }
}
