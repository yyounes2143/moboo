package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class zzgxr implements zzhaq {
    private final zzgxq zza;
    private int zzb;
    private int zzc;
    private int zzd = 0;

    private zzgxr(zzgxq zzgxqVar) {
        zzgzf.zzc(zzgxqVar, "input");
        this.zza = zzgxqVar;
        zzgxqVar.zzd = this;
    }

    private final void zzO(Object obj, zzhaw zzhawVar, zzgyc zzgycVar) throws IOException {
        int i = this.zzc;
        this.zzc = ((this.zzb >>> 3) << 3) | 4;
        try {
            zzhawVar.zzh(obj, this, zzgycVar);
            if (this.zzb == this.zzc) {
                return;
            }
            throw new zzgzh("Failed to parse the message.");
        } finally {
            this.zzc = i;
        }
    }

    private final void zzP(Object obj, zzhaw zzhawVar, zzgyc zzgycVar) throws IOException {
        zzgxq zzgxqVar = this.zza;
        int zzm = zzgxqVar.zzm();
        if (zzgxqVar.zzb < zzgxqVar.zzc) {
            int zzd = zzgxqVar.zzd(zzm);
            zzgxqVar.zzb++;
            zzhawVar.zzh(obj, this, zzgycVar);
            zzgxqVar.zzy(0);
            zzgxqVar.zzb--;
            zzgxqVar.zzz(zzd);
            return;
        }
        throw new zzgzh("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
    }

    private final void zzQ(int i) throws IOException {
        if (this.zza.zzc() == i) {
            return;
        }
        throw new zzgzh("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    private final void zzR(int i) throws IOException {
        if ((this.zzb & 7) == i) {
            return;
        }
        throw new zzgzg("Protocol message tag had invalid wire type.");
    }

    private static final void zzS(int i) throws IOException {
        if ((i & 3) == 0) {
            return;
        }
        throw new zzgzh("Failed to parse the message.");
    }

    private static final void zzT(int i) throws IOException {
        if ((i & 7) == 0) {
            return;
        }
        throw new zzgzh("Failed to parse the message.");
    }

    public static zzgxr zzq(zzgxq zzgxqVar) {
        zzgxr zzgxrVar = zzgxqVar.zzd;
        if (zzgxrVar != null) {
            return zzgxrVar;
        }
        return new zzgxr(zzgxqVar);
    }

    @Override // com.google.android.gms.internal.ads.zzhaq
    public final void zzA(List list) throws IOException {
        int zzl;
        int i;
        if (list instanceof zzgzs) {
            zzgzs zzgzsVar = (zzgzs) list;
            int i2 = this.zzb & 7;
            if (i2 != 1) {
                if (i2 == 2) {
                    zzgxq zzgxqVar = this.zza;
                    int zzm = zzgxqVar.zzm();
                    zzT(zzm);
                    int zzc = zzgxqVar.zzc() + zzm;
                    do {
                        zzgzsVar.zzg(zzgxqVar.zzn());
                    } while (zzgxqVar.zzc() < zzc);
                    return;
                }
                throw new zzgzg("Protocol message tag had invalid wire type.");
            }
            do {
                zzgxq zzgxqVar2 = this.zza;
                zzgzsVar.zzg(zzgxqVar2.zzn());
                if (!zzgxqVar2.zzA()) {
                    i = zzgxqVar2.zzl();
                } else {
                    return;
                }
            } while (i == this.zzb);
        } else {
            int i3 = this.zzb & 7;
            if (i3 != 1) {
                if (i3 == 2) {
                    zzgxq zzgxqVar3 = this.zza;
                    int zzm2 = zzgxqVar3.zzm();
                    zzT(zzm2);
                    int zzc2 = zzgxqVar3.zzc() + zzm2;
                    do {
                        list.add(Long.valueOf(zzgxqVar3.zzn()));
                    } while (zzgxqVar3.zzc() < zzc2);
                    return;
                }
                throw new zzgzg("Protocol message tag had invalid wire type.");
            }
            do {
                zzgxq zzgxqVar4 = this.zza;
                list.add(Long.valueOf(zzgxqVar4.zzn()));
                if (!zzgxqVar4.zzA()) {
                    zzl = zzgxqVar4.zzl();
                } else {
                    return;
                }
            } while (zzl == this.zzb);
            i = zzl;
        }
        this.zzd = i;
    }

    @Override // com.google.android.gms.internal.ads.zzhaq
    public final void zzB(List list) throws IOException {
        int zzl;
        int i;
        if (list instanceof zzgyj) {
            zzgyj zzgyjVar = (zzgyj) list;
            int i2 = this.zzb & 7;
            if (i2 != 2) {
                if (i2 == 5) {
                    do {
                        zzgxq zzgxqVar = this.zza;
                        zzgyjVar.zzh(zzgxqVar.zzb());
                        if (!zzgxqVar.zzA()) {
                            i = zzgxqVar.zzl();
                        } else {
                            return;
                        }
                    } while (i == this.zzb);
                } else {
                    throw new zzgzg("Protocol message tag had invalid wire type.");
                }
            } else {
                zzgxq zzgxqVar2 = this.zza;
                int zzm = zzgxqVar2.zzm();
                zzS(zzm);
                int zzc = zzgxqVar2.zzc() + zzm;
                do {
                    zzgyjVar.zzh(zzgxqVar2.zzb());
                } while (zzgxqVar2.zzc() < zzc);
                return;
            }
        } else {
            int i3 = this.zzb & 7;
            if (i3 != 2) {
                if (i3 == 5) {
                    do {
                        zzgxq zzgxqVar3 = this.zza;
                        list.add(Float.valueOf(zzgxqVar3.zzb()));
                        if (!zzgxqVar3.zzA()) {
                            zzl = zzgxqVar3.zzl();
                        } else {
                            return;
                        }
                    } while (zzl == this.zzb);
                    i = zzl;
                } else {
                    throw new zzgzg("Protocol message tag had invalid wire type.");
                }
            } else {
                zzgxq zzgxqVar4 = this.zza;
                int zzm2 = zzgxqVar4.zzm();
                zzS(zzm2);
                int zzc2 = zzgxqVar4.zzc() + zzm2;
                do {
                    list.add(Float.valueOf(zzgxqVar4.zzb()));
                } while (zzgxqVar4.zzc() < zzc2);
                return;
            }
        }
        this.zzd = i;
    }

    @Override // com.google.android.gms.internal.ads.zzhaq
    @Deprecated
    public final void zzC(List list, zzhaw zzhawVar, zzgyc zzgycVar) throws IOException {
        int zzl;
        int i = this.zzb;
        if ((i & 7) == 3) {
            do {
                Object zze = zzhawVar.zze();
                zzO(zze, zzhawVar, zzgycVar);
                zzhawVar.zzf(zze);
                list.add(zze);
                zzgxq zzgxqVar = this.zza;
                if (!zzgxqVar.zzA() && this.zzd == 0) {
                    zzl = zzgxqVar.zzl();
                } else {
                    return;
                }
            } while (zzl == i);
            this.zzd = zzl;
            return;
        }
        throw new zzgzg("Protocol message tag had invalid wire type.");
    }

    @Override // com.google.android.gms.internal.ads.zzhaq
    public final void zzD(List list) throws IOException {
        int zzl;
        int i;
        if (list instanceof zzgyt) {
            zzgyt zzgytVar = (zzgyt) list;
            int i2 = this.zzb & 7;
            if (i2 != 0) {
                if (i2 == 2) {
                    zzgxq zzgxqVar = this.zza;
                    int zzc = zzgxqVar.zzc() + zzgxqVar.zzm();
                    do {
                        zzgytVar.zzi(zzgxqVar.zzg());
                    } while (zzgxqVar.zzc() < zzc);
                    zzQ(zzc);
                    return;
                }
                throw new zzgzg("Protocol message tag had invalid wire type.");
            }
            do {
                zzgxq zzgxqVar2 = this.zza;
                zzgytVar.zzi(zzgxqVar2.zzg());
                if (!zzgxqVar2.zzA()) {
                    i = zzgxqVar2.zzl();
                } else {
                    return;
                }
            } while (i == this.zzb);
        } else {
            int i3 = this.zzb & 7;
            if (i3 != 0) {
                if (i3 == 2) {
                    zzgxq zzgxqVar3 = this.zza;
                    int zzc2 = zzgxqVar3.zzc() + zzgxqVar3.zzm();
                    do {
                        list.add(Integer.valueOf(zzgxqVar3.zzg()));
                    } while (zzgxqVar3.zzc() < zzc2);
                    zzQ(zzc2);
                    return;
                }
                throw new zzgzg("Protocol message tag had invalid wire type.");
            }
            do {
                zzgxq zzgxqVar4 = this.zza;
                list.add(Integer.valueOf(zzgxqVar4.zzg()));
                if (!zzgxqVar4.zzA()) {
                    zzl = zzgxqVar4.zzl();
                } else {
                    return;
                }
            } while (zzl == this.zzb);
            i = zzl;
        }
        this.zzd = i;
    }

    @Override // com.google.android.gms.internal.ads.zzhaq
    public final void zzE(List list) throws IOException {
        int zzl;
        int i;
        if (list instanceof zzgzs) {
            zzgzs zzgzsVar = (zzgzs) list;
            int i2 = this.zzb & 7;
            if (i2 != 0) {
                if (i2 == 2) {
                    zzgxq zzgxqVar = this.zza;
                    int zzc = zzgxqVar.zzc() + zzgxqVar.zzm();
                    do {
                        zzgzsVar.zzg(zzgxqVar.zzo());
                    } while (zzgxqVar.zzc() < zzc);
                    zzQ(zzc);
                    return;
                }
                throw new zzgzg("Protocol message tag had invalid wire type.");
            }
            do {
                zzgxq zzgxqVar2 = this.zza;
                zzgzsVar.zzg(zzgxqVar2.zzo());
                if (!zzgxqVar2.zzA()) {
                    i = zzgxqVar2.zzl();
                } else {
                    return;
                }
            } while (i == this.zzb);
        } else {
            int i3 = this.zzb & 7;
            if (i3 != 0) {
                if (i3 == 2) {
                    zzgxq zzgxqVar3 = this.zza;
                    int zzc2 = zzgxqVar3.zzc() + zzgxqVar3.zzm();
                    do {
                        list.add(Long.valueOf(zzgxqVar3.zzo()));
                    } while (zzgxqVar3.zzc() < zzc2);
                    zzQ(zzc2);
                    return;
                }
                throw new zzgzg("Protocol message tag had invalid wire type.");
            }
            do {
                zzgxq zzgxqVar4 = this.zza;
                list.add(Long.valueOf(zzgxqVar4.zzo()));
                if (!zzgxqVar4.zzA()) {
                    zzl = zzgxqVar4.zzl();
                } else {
                    return;
                }
            } while (zzl == this.zzb);
            i = zzl;
        }
        this.zzd = i;
    }

    @Override // com.google.android.gms.internal.ads.zzhaq
    public final void zzF(List list, zzhaw zzhawVar, zzgyc zzgycVar) throws IOException {
        int zzl;
        int i = this.zzb;
        if ((i & 7) == 2) {
            do {
                Object zze = zzhawVar.zze();
                zzP(zze, zzhawVar, zzgycVar);
                zzhawVar.zzf(zze);
                list.add(zze);
                zzgxq zzgxqVar = this.zza;
                if (!zzgxqVar.zzA() && this.zzd == 0) {
                    zzl = zzgxqVar.zzl();
                } else {
                    return;
                }
            } while (zzl == i);
            this.zzd = zzl;
            return;
        }
        throw new zzgzg("Protocol message tag had invalid wire type.");
    }

    @Override // com.google.android.gms.internal.ads.zzhaq
    public final void zzG(List list) throws IOException {
        int zzl;
        int i;
        if (list instanceof zzgyt) {
            zzgyt zzgytVar = (zzgyt) list;
            int i2 = this.zzb & 7;
            if (i2 != 2) {
                if (i2 == 5) {
                    do {
                        zzgxq zzgxqVar = this.zza;
                        zzgytVar.zzi(zzgxqVar.zzj());
                        if (!zzgxqVar.zzA()) {
                            i = zzgxqVar.zzl();
                        } else {
                            return;
                        }
                    } while (i == this.zzb);
                } else {
                    throw new zzgzg("Protocol message tag had invalid wire type.");
                }
            } else {
                zzgxq zzgxqVar2 = this.zza;
                int zzm = zzgxqVar2.zzm();
                zzS(zzm);
                int zzc = zzgxqVar2.zzc() + zzm;
                do {
                    zzgytVar.zzi(zzgxqVar2.zzj());
                } while (zzgxqVar2.zzc() < zzc);
                return;
            }
        } else {
            int i3 = this.zzb & 7;
            if (i3 != 2) {
                if (i3 == 5) {
                    do {
                        zzgxq zzgxqVar3 = this.zza;
                        list.add(Integer.valueOf(zzgxqVar3.zzj()));
                        if (!zzgxqVar3.zzA()) {
                            zzl = zzgxqVar3.zzl();
                        } else {
                            return;
                        }
                    } while (zzl == this.zzb);
                    i = zzl;
                } else {
                    throw new zzgzg("Protocol message tag had invalid wire type.");
                }
            } else {
                zzgxq zzgxqVar4 = this.zza;
                int zzm2 = zzgxqVar4.zzm();
                zzS(zzm2);
                int zzc2 = zzgxqVar4.zzc() + zzm2;
                do {
                    list.add(Integer.valueOf(zzgxqVar4.zzj()));
                } while (zzgxqVar4.zzc() < zzc2);
                return;
            }
        }
        this.zzd = i;
    }

    @Override // com.google.android.gms.internal.ads.zzhaq
    public final void zzH(List list) throws IOException {
        int zzl;
        int i;
        if (list instanceof zzgzs) {
            zzgzs zzgzsVar = (zzgzs) list;
            int i2 = this.zzb & 7;
            if (i2 != 1) {
                if (i2 == 2) {
                    zzgxq zzgxqVar = this.zza;
                    int zzm = zzgxqVar.zzm();
                    zzT(zzm);
                    int zzc = zzgxqVar.zzc() + zzm;
                    do {
                        zzgzsVar.zzg(zzgxqVar.zzs());
                    } while (zzgxqVar.zzc() < zzc);
                    return;
                }
                throw new zzgzg("Protocol message tag had invalid wire type.");
            }
            do {
                zzgxq zzgxqVar2 = this.zza;
                zzgzsVar.zzg(zzgxqVar2.zzs());
                if (!zzgxqVar2.zzA()) {
                    i = zzgxqVar2.zzl();
                } else {
                    return;
                }
            } while (i == this.zzb);
        } else {
            int i3 = this.zzb & 7;
            if (i3 != 1) {
                if (i3 == 2) {
                    zzgxq zzgxqVar3 = this.zza;
                    int zzm2 = zzgxqVar3.zzm();
                    zzT(zzm2);
                    int zzc2 = zzgxqVar3.zzc() + zzm2;
                    do {
                        list.add(Long.valueOf(zzgxqVar3.zzs()));
                    } while (zzgxqVar3.zzc() < zzc2);
                    return;
                }
                throw new zzgzg("Protocol message tag had invalid wire type.");
            }
            do {
                zzgxq zzgxqVar4 = this.zza;
                list.add(Long.valueOf(zzgxqVar4.zzs()));
                if (!zzgxqVar4.zzA()) {
                    zzl = zzgxqVar4.zzl();
                } else {
                    return;
                }
            } while (zzl == this.zzb);
            i = zzl;
        }
        this.zzd = i;
    }

    @Override // com.google.android.gms.internal.ads.zzhaq
    public final void zzI(List list) throws IOException {
        int zzl;
        int i;
        if (list instanceof zzgyt) {
            zzgyt zzgytVar = (zzgyt) list;
            int i2 = this.zzb & 7;
            if (i2 != 0) {
                if (i2 == 2) {
                    zzgxq zzgxqVar = this.zza;
                    int zzc = zzgxqVar.zzc() + zzgxqVar.zzm();
                    do {
                        zzgytVar.zzi(zzgxqVar.zzk());
                    } while (zzgxqVar.zzc() < zzc);
                    zzQ(zzc);
                    return;
                }
                throw new zzgzg("Protocol message tag had invalid wire type.");
            }
            do {
                zzgxq zzgxqVar2 = this.zza;
                zzgytVar.zzi(zzgxqVar2.zzk());
                if (!zzgxqVar2.zzA()) {
                    i = zzgxqVar2.zzl();
                } else {
                    return;
                }
            } while (i == this.zzb);
        } else {
            int i3 = this.zzb & 7;
            if (i3 != 0) {
                if (i3 == 2) {
                    zzgxq zzgxqVar3 = this.zza;
                    int zzc2 = zzgxqVar3.zzc() + zzgxqVar3.zzm();
                    do {
                        list.add(Integer.valueOf(zzgxqVar3.zzk()));
                    } while (zzgxqVar3.zzc() < zzc2);
                    zzQ(zzc2);
                    return;
                }
                throw new zzgzg("Protocol message tag had invalid wire type.");
            }
            do {
                zzgxq zzgxqVar4 = this.zza;
                list.add(Integer.valueOf(zzgxqVar4.zzk()));
                if (!zzgxqVar4.zzA()) {
                    zzl = zzgxqVar4.zzl();
                } else {
                    return;
                }
            } while (zzl == this.zzb);
            i = zzl;
        }
        this.zzd = i;
    }

    @Override // com.google.android.gms.internal.ads.zzhaq
    public final void zzJ(List list) throws IOException {
        int zzl;
        int i;
        if (list instanceof zzgzs) {
            zzgzs zzgzsVar = (zzgzs) list;
            int i2 = this.zzb & 7;
            if (i2 != 0) {
                if (i2 == 2) {
                    zzgxq zzgxqVar = this.zza;
                    int zzc = zzgxqVar.zzc() + zzgxqVar.zzm();
                    do {
                        zzgzsVar.zzg(zzgxqVar.zzt());
                    } while (zzgxqVar.zzc() < zzc);
                    zzQ(zzc);
                    return;
                }
                throw new zzgzg("Protocol message tag had invalid wire type.");
            }
            do {
                zzgxq zzgxqVar2 = this.zza;
                zzgzsVar.zzg(zzgxqVar2.zzt());
                if (!zzgxqVar2.zzA()) {
                    i = zzgxqVar2.zzl();
                } else {
                    return;
                }
            } while (i == this.zzb);
        } else {
            int i3 = this.zzb & 7;
            if (i3 != 0) {
                if (i3 == 2) {
                    zzgxq zzgxqVar3 = this.zza;
                    int zzc2 = zzgxqVar3.zzc() + zzgxqVar3.zzm();
                    do {
                        list.add(Long.valueOf(zzgxqVar3.zzt()));
                    } while (zzgxqVar3.zzc() < zzc2);
                    zzQ(zzc2);
                    return;
                }
                throw new zzgzg("Protocol message tag had invalid wire type.");
            }
            do {
                zzgxq zzgxqVar4 = this.zza;
                list.add(Long.valueOf(zzgxqVar4.zzt()));
                if (!zzgxqVar4.zzA()) {
                    zzl = zzgxqVar4.zzl();
                } else {
                    return;
                }
            } while (zzl == this.zzb);
            i = zzl;
        }
        this.zzd = i;
    }

    public final void zzK(List list, boolean z) throws IOException {
        String zzr;
        int zzl;
        int i;
        if ((this.zzb & 7) == 2) {
            if ((list instanceof zzgzp) && !z) {
                zzgzp zzgzpVar = (zzgzp) list;
                do {
                    zzp();
                    zzgzpVar.zzb();
                    zzgxq zzgxqVar = this.zza;
                    if (!zzgxqVar.zzA()) {
                        i = zzgxqVar.zzl();
                    } else {
                        return;
                    }
                } while (i == this.zzb);
            } else {
                do {
                    if (z) {
                        zzr = zzs();
                    } else {
                        zzr = zzr();
                    }
                    list.add(zzr);
                    zzgxq zzgxqVar2 = this.zza;
                    if (zzgxqVar2.zzA()) {
                        return;
                    }
                    zzl = zzgxqVar2.zzl();
                } while (zzl == this.zzb);
                i = zzl;
            }
            this.zzd = i;
            return;
        }
        throw new zzgzg("Protocol message tag had invalid wire type.");
    }

    @Override // com.google.android.gms.internal.ads.zzhaq
    public final void zzL(List list) throws IOException {
        int zzl;
        int i;
        if (list instanceof zzgyt) {
            zzgyt zzgytVar = (zzgyt) list;
            int i2 = this.zzb & 7;
            if (i2 != 0) {
                if (i2 == 2) {
                    zzgxq zzgxqVar = this.zza;
                    int zzc = zzgxqVar.zzc() + zzgxqVar.zzm();
                    do {
                        zzgytVar.zzi(zzgxqVar.zzm());
                    } while (zzgxqVar.zzc() < zzc);
                    zzQ(zzc);
                    return;
                }
                throw new zzgzg("Protocol message tag had invalid wire type.");
            }
            do {
                zzgxq zzgxqVar2 = this.zza;
                zzgytVar.zzi(zzgxqVar2.zzm());
                if (!zzgxqVar2.zzA()) {
                    i = zzgxqVar2.zzl();
                } else {
                    return;
                }
            } while (i == this.zzb);
        } else {
            int i3 = this.zzb & 7;
            if (i3 != 0) {
                if (i3 == 2) {
                    zzgxq zzgxqVar3 = this.zza;
                    int zzc2 = zzgxqVar3.zzc() + zzgxqVar3.zzm();
                    do {
                        list.add(Integer.valueOf(zzgxqVar3.zzm()));
                    } while (zzgxqVar3.zzc() < zzc2);
                    zzQ(zzc2);
                    return;
                }
                throw new zzgzg("Protocol message tag had invalid wire type.");
            }
            do {
                zzgxq zzgxqVar4 = this.zza;
                list.add(Integer.valueOf(zzgxqVar4.zzm()));
                if (!zzgxqVar4.zzA()) {
                    zzl = zzgxqVar4.zzl();
                } else {
                    return;
                }
            } while (zzl == this.zzb);
            i = zzl;
        }
        this.zzd = i;
    }

    @Override // com.google.android.gms.internal.ads.zzhaq
    public final void zzM(List list) throws IOException {
        int zzl;
        int i;
        if (list instanceof zzgzs) {
            zzgzs zzgzsVar = (zzgzs) list;
            int i2 = this.zzb & 7;
            if (i2 != 0) {
                if (i2 == 2) {
                    zzgxq zzgxqVar = this.zza;
                    int zzc = zzgxqVar.zzc() + zzgxqVar.zzm();
                    do {
                        zzgzsVar.zzg(zzgxqVar.zzu());
                    } while (zzgxqVar.zzc() < zzc);
                    zzQ(zzc);
                    return;
                }
                throw new zzgzg("Protocol message tag had invalid wire type.");
            }
            do {
                zzgxq zzgxqVar2 = this.zza;
                zzgzsVar.zzg(zzgxqVar2.zzu());
                if (!zzgxqVar2.zzA()) {
                    i = zzgxqVar2.zzl();
                } else {
                    return;
                }
            } while (i == this.zzb);
        } else {
            int i3 = this.zzb & 7;
            if (i3 != 0) {
                if (i3 == 2) {
                    zzgxq zzgxqVar3 = this.zza;
                    int zzc2 = zzgxqVar3.zzc() + zzgxqVar3.zzm();
                    do {
                        list.add(Long.valueOf(zzgxqVar3.zzu()));
                    } while (zzgxqVar3.zzc() < zzc2);
                    zzQ(zzc2);
                    return;
                }
                throw new zzgzg("Protocol message tag had invalid wire type.");
            }
            do {
                zzgxq zzgxqVar4 = this.zza;
                list.add(Long.valueOf(zzgxqVar4.zzu()));
                if (!zzgxqVar4.zzA()) {
                    zzl = zzgxqVar4.zzl();
                } else {
                    return;
                }
            } while (zzl == this.zzb);
            i = zzl;
        }
        this.zzd = i;
    }

    @Override // com.google.android.gms.internal.ads.zzhaq
    public final boolean zzN() throws IOException {
        zzR(0);
        return this.zza.zzB();
    }

    @Override // com.google.android.gms.internal.ads.zzhaq
    public final double zza() throws IOException {
        zzR(1);
        return this.zza.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzhaq
    public final float zzb() throws IOException {
        zzR(5);
        return this.zza.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzhaq
    public final int zzc() throws IOException {
        int i = this.zzd;
        if (i != 0) {
            this.zzb = i;
            this.zzd = 0;
        } else {
            i = this.zza.zzl();
            this.zzb = i;
        }
        if (i != 0 && i != this.zzc) {
            return i >>> 3;
        }
        return Integer.MAX_VALUE;
    }

    @Override // com.google.android.gms.internal.ads.zzhaq
    public final int zzd() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzhaq
    public final int zze() throws IOException {
        zzR(0);
        return this.zza.zze();
    }

    @Override // com.google.android.gms.internal.ads.zzhaq
    public final int zzf() throws IOException {
        zzR(5);
        return this.zza.zzf();
    }

    @Override // com.google.android.gms.internal.ads.zzhaq
    public final int zzg() throws IOException {
        zzR(0);
        return this.zza.zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzhaq
    public final int zzh() throws IOException {
        zzR(5);
        return this.zza.zzj();
    }

    @Override // com.google.android.gms.internal.ads.zzhaq
    public final int zzi() throws IOException {
        zzR(0);
        return this.zza.zzk();
    }

    @Override // com.google.android.gms.internal.ads.zzhaq
    public final int zzj() throws IOException {
        zzR(0);
        return this.zza.zzm();
    }

    @Override // com.google.android.gms.internal.ads.zzhaq
    public final long zzk() throws IOException {
        zzR(1);
        return this.zza.zzn();
    }

    @Override // com.google.android.gms.internal.ads.zzhaq
    public final long zzl() throws IOException {
        zzR(0);
        return this.zza.zzo();
    }

    @Override // com.google.android.gms.internal.ads.zzhaq
    public final long zzm() throws IOException {
        zzR(1);
        return this.zza.zzs();
    }

    @Override // com.google.android.gms.internal.ads.zzhaq
    public final long zzn() throws IOException {
        zzR(0);
        return this.zza.zzt();
    }

    @Override // com.google.android.gms.internal.ads.zzhaq
    public final long zzo() throws IOException {
        zzR(0);
        return this.zza.zzu();
    }

    @Override // com.google.android.gms.internal.ads.zzhaq
    public final zzgxk zzp() throws IOException {
        zzR(2);
        return this.zza.zzv();
    }

    @Override // com.google.android.gms.internal.ads.zzhaq
    public final String zzr() throws IOException {
        zzR(2);
        return this.zza.zzw();
    }

    @Override // com.google.android.gms.internal.ads.zzhaq
    public final String zzs() throws IOException {
        zzR(2);
        return this.zza.zzx();
    }

    @Override // com.google.android.gms.internal.ads.zzhaq
    public final void zzt(Object obj, zzhaw zzhawVar, zzgyc zzgycVar) throws IOException {
        zzR(3);
        zzO(obj, zzhawVar, zzgycVar);
    }

    @Override // com.google.android.gms.internal.ads.zzhaq
    public final void zzu(Object obj, zzhaw zzhawVar, zzgyc zzgycVar) throws IOException {
        zzR(2);
        zzP(obj, zzhawVar, zzgycVar);
    }

    @Override // com.google.android.gms.internal.ads.zzhaq
    public final void zzv(List list) throws IOException {
        int zzl;
        int i;
        if (list instanceof zzgxa) {
            zzgxa zzgxaVar = (zzgxa) list;
            int i2 = this.zzb & 7;
            if (i2 != 0) {
                if (i2 == 2) {
                    zzgxq zzgxqVar = this.zza;
                    int zzc = zzgxqVar.zzc() + zzgxqVar.zzm();
                    do {
                        zzgxaVar.zzg(zzgxqVar.zzB());
                    } while (zzgxqVar.zzc() < zzc);
                    zzQ(zzc);
                    return;
                }
                throw new zzgzg("Protocol message tag had invalid wire type.");
            }
            do {
                zzgxq zzgxqVar2 = this.zza;
                zzgxaVar.zzg(zzgxqVar2.zzB());
                if (!zzgxqVar2.zzA()) {
                    i = zzgxqVar2.zzl();
                } else {
                    return;
                }
            } while (i == this.zzb);
        } else {
            int i3 = this.zzb & 7;
            if (i3 != 0) {
                if (i3 == 2) {
                    zzgxq zzgxqVar3 = this.zza;
                    int zzc2 = zzgxqVar3.zzc() + zzgxqVar3.zzm();
                    do {
                        list.add(Boolean.valueOf(zzgxqVar3.zzB()));
                    } while (zzgxqVar3.zzc() < zzc2);
                    zzQ(zzc2);
                    return;
                }
                throw new zzgzg("Protocol message tag had invalid wire type.");
            }
            do {
                zzgxq zzgxqVar4 = this.zza;
                list.add(Boolean.valueOf(zzgxqVar4.zzB()));
                if (!zzgxqVar4.zzA()) {
                    zzl = zzgxqVar4.zzl();
                } else {
                    return;
                }
            } while (zzl == this.zzb);
            i = zzl;
        }
        this.zzd = i;
    }

    @Override // com.google.android.gms.internal.ads.zzhaq
    public final void zzw(List list) throws IOException {
        int zzl;
        if ((this.zzb & 7) == 2) {
            do {
                list.add(zzp());
                zzgxq zzgxqVar = this.zza;
                if (zzgxqVar.zzA()) {
                    return;
                }
                zzl = zzgxqVar.zzl();
            } while (zzl == this.zzb);
            this.zzd = zzl;
            return;
        }
        throw new zzgzg("Protocol message tag had invalid wire type.");
    }

    @Override // com.google.android.gms.internal.ads.zzhaq
    public final void zzx(List list) throws IOException {
        int zzl;
        int i;
        if (list instanceof zzgxz) {
            zzgxz zzgxzVar = (zzgxz) list;
            int i2 = this.zzb & 7;
            if (i2 != 1) {
                if (i2 == 2) {
                    zzgxq zzgxqVar = this.zza;
                    int zzm = zzgxqVar.zzm();
                    zzT(zzm);
                    int zzc = zzgxqVar.zzc() + zzm;
                    do {
                        zzgxzVar.zzh(zzgxqVar.zza());
                    } while (zzgxqVar.zzc() < zzc);
                    return;
                }
                throw new zzgzg("Protocol message tag had invalid wire type.");
            }
            do {
                zzgxq zzgxqVar2 = this.zza;
                zzgxzVar.zzh(zzgxqVar2.zza());
                if (!zzgxqVar2.zzA()) {
                    i = zzgxqVar2.zzl();
                } else {
                    return;
                }
            } while (i == this.zzb);
        } else {
            int i3 = this.zzb & 7;
            if (i3 != 1) {
                if (i3 == 2) {
                    zzgxq zzgxqVar3 = this.zza;
                    int zzm2 = zzgxqVar3.zzm();
                    zzT(zzm2);
                    int zzc2 = zzgxqVar3.zzc() + zzm2;
                    do {
                        list.add(Double.valueOf(zzgxqVar3.zza()));
                    } while (zzgxqVar3.zzc() < zzc2);
                    return;
                }
                throw new zzgzg("Protocol message tag had invalid wire type.");
            }
            do {
                zzgxq zzgxqVar4 = this.zza;
                list.add(Double.valueOf(zzgxqVar4.zza()));
                if (!zzgxqVar4.zzA()) {
                    zzl = zzgxqVar4.zzl();
                } else {
                    return;
                }
            } while (zzl == this.zzb);
            i = zzl;
        }
        this.zzd = i;
    }

    @Override // com.google.android.gms.internal.ads.zzhaq
    public final void zzy(List list) throws IOException {
        int zzl;
        int i;
        if (list instanceof zzgyt) {
            zzgyt zzgytVar = (zzgyt) list;
            int i2 = this.zzb & 7;
            if (i2 != 0) {
                if (i2 == 2) {
                    zzgxq zzgxqVar = this.zza;
                    int zzc = zzgxqVar.zzc() + zzgxqVar.zzm();
                    do {
                        zzgytVar.zzi(zzgxqVar.zze());
                    } while (zzgxqVar.zzc() < zzc);
                    zzQ(zzc);
                    return;
                }
                throw new zzgzg("Protocol message tag had invalid wire type.");
            }
            do {
                zzgxq zzgxqVar2 = this.zza;
                zzgytVar.zzi(zzgxqVar2.zze());
                if (!zzgxqVar2.zzA()) {
                    i = zzgxqVar2.zzl();
                } else {
                    return;
                }
            } while (i == this.zzb);
        } else {
            int i3 = this.zzb & 7;
            if (i3 != 0) {
                if (i3 == 2) {
                    zzgxq zzgxqVar3 = this.zza;
                    int zzc2 = zzgxqVar3.zzc() + zzgxqVar3.zzm();
                    do {
                        list.add(Integer.valueOf(zzgxqVar3.zze()));
                    } while (zzgxqVar3.zzc() < zzc2);
                    zzQ(zzc2);
                    return;
                }
                throw new zzgzg("Protocol message tag had invalid wire type.");
            }
            do {
                zzgxq zzgxqVar4 = this.zza;
                list.add(Integer.valueOf(zzgxqVar4.zze()));
                if (!zzgxqVar4.zzA()) {
                    zzl = zzgxqVar4.zzl();
                } else {
                    return;
                }
            } while (zzl == this.zzb);
            i = zzl;
        }
        this.zzd = i;
    }

    @Override // com.google.android.gms.internal.ads.zzhaq
    public final void zzz(List list) throws IOException {
        int zzl;
        int i;
        if (list instanceof zzgyt) {
            zzgyt zzgytVar = (zzgyt) list;
            int i2 = this.zzb & 7;
            if (i2 != 2) {
                if (i2 == 5) {
                    do {
                        zzgxq zzgxqVar = this.zza;
                        zzgytVar.zzi(zzgxqVar.zzf());
                        if (!zzgxqVar.zzA()) {
                            i = zzgxqVar.zzl();
                        } else {
                            return;
                        }
                    } while (i == this.zzb);
                } else {
                    throw new zzgzg("Protocol message tag had invalid wire type.");
                }
            } else {
                zzgxq zzgxqVar2 = this.zza;
                int zzm = zzgxqVar2.zzm();
                zzS(zzm);
                int zzc = zzgxqVar2.zzc() + zzm;
                do {
                    zzgytVar.zzi(zzgxqVar2.zzf());
                } while (zzgxqVar2.zzc() < zzc);
                return;
            }
        } else {
            int i3 = this.zzb & 7;
            if (i3 != 2) {
                if (i3 == 5) {
                    do {
                        zzgxq zzgxqVar3 = this.zza;
                        list.add(Integer.valueOf(zzgxqVar3.zzf()));
                        if (!zzgxqVar3.zzA()) {
                            zzl = zzgxqVar3.zzl();
                        } else {
                            return;
                        }
                    } while (zzl == this.zzb);
                    i = zzl;
                } else {
                    throw new zzgzg("Protocol message tag had invalid wire type.");
                }
            } else {
                zzgxq zzgxqVar4 = this.zza;
                int zzm2 = zzgxqVar4.zzm();
                zzS(zzm2);
                int zzc2 = zzgxqVar4.zzc() + zzm2;
                do {
                    list.add(Integer.valueOf(zzgxqVar4.zzf()));
                } while (zzgxqVar4.zzc() < zzc2);
                return;
            }
        }
        this.zzd = i;
    }
}
