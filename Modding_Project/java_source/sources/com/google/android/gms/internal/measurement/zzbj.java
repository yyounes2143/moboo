package com.google.android.gms.internal.measurement;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import androidx.media3.exoplayer.rtsp.SessionDescription;
import com.google.android.gms.ads.AdError;
import java.util.Iterator;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzbj extends zzav {
    public zzbj() {
        this.zza.add(zzbk.ASSIGN);
        this.zza.add(zzbk.CONST);
        this.zza.add(zzbk.CREATE_ARRAY);
        this.zza.add(zzbk.CREATE_OBJECT);
        this.zza.add(zzbk.EXPRESSION_LIST);
        this.zza.add(zzbk.GET);
        this.zza.add(zzbk.GET_INDEX);
        this.zza.add(zzbk.GET_PROPERTY);
        this.zza.add(zzbk.NULL);
        this.zza.add(zzbk.SET_PROPERTY);
        this.zza.add(zzbk.TYPEOF);
        this.zza.add(zzbk.UNDEFINED);
        this.zza.add(zzbk.VAR);
    }

    @Override // com.google.android.gms.internal.measurement.zzav
    public final zzao zza(String str, zzg zzgVar, List list) {
        String str2;
        int i = 0;
        zzbk zzbkVar = zzbk.ADD;
        int ordinal = zzh.zze(str).ordinal();
        if (ordinal != 3) {
            if (ordinal != 14) {
                if (ordinal != 24) {
                    if (ordinal != 33) {
                        if (ordinal != 49) {
                            if (ordinal != 58) {
                                if (ordinal != 17) {
                                    if (ordinal != 18) {
                                        if (ordinal != 35 && ordinal != 36) {
                                            switch (ordinal) {
                                                case 62:
                                                    zzh.zza(zzbk.TYPEOF.name(), 1, list);
                                                    zzao zza = zzgVar.zza((zzao) list.get(0));
                                                    if (zza instanceof zzat) {
                                                        str2 = AdError.UNDEFINED_DOMAIN;
                                                    } else if (zza instanceof zzaf) {
                                                        str2 = TypedValues.Custom.S_BOOLEAN;
                                                    } else if (zza instanceof zzah) {
                                                        str2 = "number";
                                                    } else if (zza instanceof zzas) {
                                                        str2 = TypedValues.Custom.S_STRING;
                                                    } else if (zza instanceof zzan) {
                                                        str2 = "function";
                                                    } else if (!(zza instanceof zzap) && !(zza instanceof zzag)) {
                                                        str2 = "object";
                                                    } else {
                                                        throw new IllegalArgumentException(String.format("Unsupported value type %s in typeof", zza));
                                                    }
                                                    return new zzas(str2);
                                                case 63:
                                                    zzh.zza(zzbk.UNDEFINED.name(), 0, list);
                                                    return zzao.zzf;
                                                case 64:
                                                    zzh.zzb(zzbk.VAR.name(), 1, list);
                                                    Iterator it = list.iterator();
                                                    while (it.hasNext()) {
                                                        zzao zza2 = zzgVar.zza((zzao) it.next());
                                                        if (zza2 instanceof zzas) {
                                                            zzgVar.zzf(zza2.zzc(), zzao.zzf);
                                                        } else {
                                                            throw new IllegalArgumentException(String.format("Expected string for var name. got %s", zza2.getClass().getCanonicalName()));
                                                        }
                                                    }
                                                    return zzao.zzf;
                                                default:
                                                    return super.zzb(str);
                                            }
                                        }
                                        zzh.zza(zzbk.GET_PROPERTY.name(), 2, list);
                                        zzao zza3 = zzgVar.zza((zzao) list.get(0));
                                        zzao zza4 = zzgVar.zza((zzao) list.get(1));
                                        if ((zza3 instanceof zzae) && zzh.zzd(zza4)) {
                                            return ((zzae) zza3).zzl(zza4.zzd().intValue());
                                        }
                                        if (zza3 instanceof zzak) {
                                            return ((zzak) zza3).zzk(zza4.zzc());
                                        }
                                        if (zza3 instanceof zzas) {
                                            if (SessionDescription.ATTR_LENGTH.equals(zza4.zzc())) {
                                                return new zzah(Double.valueOf(zza3.zzc().length()));
                                            }
                                            if (zzh.zzd(zza4) && zza4.zzd().doubleValue() < zza3.zzc().length()) {
                                                return new zzas(String.valueOf(zza3.zzc().charAt(zza4.zzd().intValue())));
                                            }
                                        }
                                        return zzao.zzf;
                                    } else if (list.isEmpty()) {
                                        return new zzal();
                                    } else {
                                        if (list.size() % 2 == 0) {
                                            zzal zzalVar = new zzal();
                                            while (i < list.size() - 1) {
                                                zzao zza5 = zzgVar.zza((zzao) list.get(i));
                                                zzao zza6 = zzgVar.zza((zzao) list.get(i + 1));
                                                if (!(zza5 instanceof zzag) && !(zza6 instanceof zzag)) {
                                                    zzalVar.zzm(zza5.zzc(), zza6);
                                                    i += 2;
                                                } else {
                                                    throw new IllegalStateException("Failed to evaluate map entry");
                                                }
                                            }
                                            return zzalVar;
                                        }
                                        throw new IllegalArgumentException(String.format("CREATE_OBJECT requires an even number of arguments, found %s", Integer.valueOf(list.size())));
                                    }
                                } else if (list.isEmpty()) {
                                    return new zzae();
                                } else {
                                    zzae zzaeVar = new zzae();
                                    Iterator it2 = list.iterator();
                                    while (it2.hasNext()) {
                                        zzao zza7 = zzgVar.zza((zzao) it2.next());
                                        if (!(zza7 instanceof zzag)) {
                                            zzaeVar.zzn(i, zza7);
                                            i++;
                                        } else {
                                            throw new IllegalStateException("Failed to evaluate array element");
                                        }
                                    }
                                    return zzaeVar;
                                }
                            }
                            zzh.zza(zzbk.SET_PROPERTY.name(), 3, list);
                            zzao zza8 = zzgVar.zza((zzao) list.get(0));
                            zzao zza9 = zzgVar.zza((zzao) list.get(1));
                            zzao zza10 = zzgVar.zza((zzao) list.get(2));
                            if (zza8 != zzao.zzf && zza8 != zzao.zzg) {
                                if ((zza8 instanceof zzae) && (zza9 instanceof zzah)) {
                                    ((zzae) zza8).zzn(zza9.zzd().intValue(), zza10);
                                    return zza10;
                                } else if (!(zza8 instanceof zzak)) {
                                    return zza10;
                                } else {
                                    ((zzak) zza8).zzm(zza9.zzc(), zza10);
                                    return zza10;
                                }
                            }
                            throw new IllegalStateException(String.format("Can't set property %s of %s", zza9.zzc(), zza8.zzc()));
                        }
                        zzh.zza(zzbk.NULL.name(), 0, list);
                        return zzao.zzg;
                    }
                    zzh.zza(zzbk.GET.name(), 1, list);
                    zzao zza11 = zzgVar.zza((zzao) list.get(0));
                    if (zza11 instanceof zzas) {
                        return zzgVar.zzh(zza11.zzc());
                    }
                    throw new IllegalArgumentException(String.format("Expected string for get var. got %s", zza11.getClass().getCanonicalName()));
                }
                zzh.zzb(zzbk.EXPRESSION_LIST.name(), 1, list);
                zzao zzaoVar = zzao.zzf;
                while (i < list.size()) {
                    zzaoVar = zzgVar.zza((zzao) list.get(i));
                    if (!(zzaoVar instanceof zzag)) {
                        i++;
                    } else {
                        throw new IllegalStateException("ControlValue cannot be in an expression list");
                    }
                }
                return zzaoVar;
            }
            zzh.zzb(zzbk.CONST.name(), 2, list);
            if (list.size() % 2 == 0) {
                for (int i2 = 0; i2 < list.size() - 1; i2 += 2) {
                    zzao zza12 = zzgVar.zza((zzao) list.get(i2));
                    if (zza12 instanceof zzas) {
                        zzgVar.zzg(zza12.zzc(), zzgVar.zza((zzao) list.get(i2 + 1)));
                    } else {
                        throw new IllegalArgumentException(String.format("Expected string for const name. got %s", zza12.getClass().getCanonicalName()));
                    }
                }
                return zzao.zzf;
            }
            throw new IllegalArgumentException(String.format("CONST requires an even number of arguments, found %s", Integer.valueOf(list.size())));
        }
        zzh.zza(zzbk.ASSIGN.name(), 2, list);
        zzao zza13 = zzgVar.zza((zzao) list.get(0));
        if (zza13 instanceof zzas) {
            if (zzgVar.zzd(zza13.zzc())) {
                zzao zza14 = zzgVar.zza((zzao) list.get(1));
                zzgVar.zze(zza13.zzc(), zza14);
                return zza14;
            }
            throw new IllegalArgumentException(String.format("Attempting to assign undefined value %s", zza13.zzc()));
        }
        throw new IllegalArgumentException(String.format("Expected string for assign var. got %s", zza13.getClass().getCanonicalName()));
    }
}
