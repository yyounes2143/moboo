package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzgws;
import com.google.android.gms.internal.ads.zzgwt;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.RandomAccess;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public abstract class zzgws<MessageType extends zzgwt<MessageType, BuilderType>, BuilderType extends zzgws<MessageType, BuilderType>> implements zzhac {
    private String zza(String str) {
        String name = getClass().getName();
        return "Reading " + name + " from a " + str + " threw an IOException (should never happen).";
    }

    private static <T> void zzb(Iterable<T> iterable, List<? super T> list) {
        if (iterable instanceof Collection) {
            int size = ((Collection) iterable).size();
            if (list instanceof ArrayList) {
                ((ArrayList) list).ensureCapacity(list.size() + size);
            } else if (list instanceof zzhao) {
                ((zzhao) list).zze(list.size() + size);
            }
        }
        int size2 = list.size();
        if ((iterable instanceof List) && (iterable instanceof RandomAccess)) {
            List list2 = (List) iterable;
            int size3 = list2.size();
            for (int i = 0; i < size3; i++) {
                Object obj = (Object) list2.get(i);
                if (obj == 0) {
                    zzc(list, size2);
                }
                list.add(obj);
            }
            return;
        }
        for (Object obj2 : iterable) {
            if (obj2 == null) {
                zzc(list, size2);
            }
            list.add(obj2);
        }
    }

    public static zzhbh zzbb(zzhad zzhadVar) {
        return new zzhbh(zzhadVar);
    }

    @Deprecated
    public static <T> void zzbc(Iterable<T> iterable, Collection<? super T> collection) {
        zzbd(iterable, (List) collection);
    }

    public static <T> void zzbd(Iterable<T> iterable, List<? super T> list) {
        byte[] bArr = zzgzf.zzb;
        iterable.getClass();
        if (iterable instanceof zzgzp) {
            List zza = ((zzgzp) iterable).zza();
            zzgzp zzgzpVar = (zzgzp) list;
            int size = list.size();
            for (Object obj : zza) {
                if (obj == null) {
                    String str = "Element at index " + (zzgzpVar.size() - size) + " is null.";
                    int size2 = zzgzpVar.size();
                    while (true) {
                        size2--;
                        if (size2 < size) {
                            break;
                        }
                        zzgzpVar.remove(size2);
                    }
                    throw new NullPointerException(str);
                } else if (obj instanceof zzgxk) {
                    zzgxk zzgxkVar = (zzgxk) obj;
                    zzgzpVar.zzb();
                } else if (obj instanceof byte[]) {
                    byte[] bArr2 = (byte[]) obj;
                    zzgxk.zzv(bArr2, 0, bArr2.length);
                    zzgzpVar.zzb();
                } else {
                    zzgzpVar.add((String) obj);
                }
            }
        } else if (iterable instanceof zzham) {
            list.addAll((Collection) iterable);
        } else {
            zzb(iterable, list);
        }
    }

    private static void zzc(List<?> list, int i) {
        String str = "Element at index " + (list.size() - i) + " is null.";
        int size = list.size();
        while (true) {
            size--;
            if (size >= i) {
                list.remove(size);
            } else {
                throw new NullPointerException(str);
            }
        }
    }

    @Override // 
    /* renamed from: zzaC */
    public abstract BuilderType zzaP();

    public abstract BuilderType zzaD(MessageType messagetype);

    public BuilderType zzaE(zzgxk zzgxkVar) throws zzgzh {
        try {
            zzgxq zzl = zzgxkVar.zzl();
            zzaR(zzl);
            zzl.zzy(0);
            return this;
        } catch (zzgzh e) {
            throw e;
        } catch (IOException e2) {
            throw new RuntimeException(zza("ByteString"), e2);
        }
    }

    /* renamed from: zzaF */
    public BuilderType zzaR(zzgxq zzgxqVar) throws IOException {
        int i = zzgyc.zzb;
        int i2 = zzhan.zza;
        return zzaW(zzgxqVar, zzgyc.zza);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: zzaG */
    public BuilderType zzaS(zzhad zzhadVar) {
        if (zzbt().getClass().isInstance(zzhadVar)) {
            return (BuilderType) zzaD((zzgwt) zzhadVar);
        }
        throw new IllegalArgumentException("mergeFrom(MessageLite) can only merge messages of the same type.");
    }

    public BuilderType zzaH(InputStream inputStream) throws IOException {
        zzgxq zzG = zzgxq.zzG(inputStream, 4096);
        zzaR(zzG);
        zzG.zzy(0);
        return this;
    }

    /* renamed from: zzaI */
    public BuilderType zzaU(byte[] bArr) throws zzgzh {
        return zzaZ(bArr, 0, bArr.length);
    }

    public BuilderType zzaJ(zzgxk zzgxkVar, zzgyc zzgycVar) throws zzgzh {
        try {
            zzgxq zzl = zzgxkVar.zzl();
            zzaW(zzl, zzgycVar);
            zzl.zzy(0);
            return this;
        } catch (zzgzh e) {
            throw e;
        } catch (IOException e2) {
            throw new RuntimeException(zza("ByteString"), e2);
        }
    }

    @Override // 
    /* renamed from: zzaK */
    public abstract BuilderType zzaW(zzgxq zzgxqVar, zzgyc zzgycVar) throws IOException;

    public BuilderType zzaL(InputStream inputStream, zzgyc zzgycVar) throws IOException {
        zzgxq zzG = zzgxq.zzG(inputStream, 4096);
        zzaW(zzG, zzgycVar);
        zzG.zzy(0);
        return this;
    }

    /* renamed from: zzaM */
    public BuilderType zzaY(byte[] bArr, zzgyc zzgycVar) throws zzgzh {
        return zzba(bArr, 0, bArr.length, zzgycVar);
    }

    @Override // 
    /* renamed from: zzaN */
    public BuilderType zzaZ(byte[] bArr, int i, int i2) throws zzgzh {
        try {
            zzgxq zzH = zzgxq.zzH(bArr, i, i2, false);
            zzaR(zzH);
            zzH.zzy(0);
            return this;
        } catch (zzgzh e) {
            throw e;
        } catch (IOException e2) {
            throw new RuntimeException(zza("byte array"), e2);
        }
    }

    @Override // 
    /* renamed from: zzaO */
    public BuilderType zzba(byte[] bArr, int i, int i2, zzgyc zzgycVar) throws zzgzh {
        try {
            zzgxq zzH = zzgxq.zzH(bArr, i, i2, false);
            zzaW(zzH, zzgycVar);
            zzH.zzy(0);
            return this;
        } catch (zzgzh e) {
            throw e;
        } catch (IOException e2) {
            throw new RuntimeException(zza("byte array"), e2);
        }
    }

    public /* bridge */ /* synthetic */ zzhac zzaQ(zzgxk zzgxkVar) throws zzgzh {
        zzaE(zzgxkVar);
        return this;
    }

    public /* bridge */ /* synthetic */ zzhac zzaT(InputStream inputStream) throws IOException {
        zzaH(inputStream);
        return this;
    }

    public /* bridge */ /* synthetic */ zzhac zzaV(zzgxk zzgxkVar, zzgyc zzgycVar) throws zzgzh {
        zzaJ(zzgxkVar, zzgycVar);
        return this;
    }

    public /* bridge */ /* synthetic */ zzhac zzaX(InputStream inputStream, zzgyc zzgycVar) throws IOException {
        zzaL(inputStream, zzgycVar);
        return this;
    }

    public boolean zzbe(InputStream inputStream) throws IOException {
        int i = zzgyc.zzb;
        int i2 = zzhan.zza;
        return zzbf(inputStream, zzgyc.zza);
    }

    public boolean zzbf(InputStream inputStream, zzgyc zzgycVar) throws IOException {
        int read = inputStream.read();
        if (read == -1) {
            return false;
        }
        zzaL(new zzgwr(inputStream, zzgxq.zzE(read, inputStream)), zzgycVar);
        return true;
    }
}
