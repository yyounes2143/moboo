package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzgym;
import com.google.android.gms.internal.ads.zzgys;
import j$.util.concurrent.ConcurrentHashMap;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.util.Map;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public abstract class zzgys<MessageType extends zzgys<MessageType, BuilderType>, BuilderType extends zzgym<MessageType, BuilderType>> extends zzgwt<MessageType, BuilderType> {
    private static final int zza = Integer.MIN_VALUE;
    private static final int zzb = Integer.MAX_VALUE;
    private static Map<Class<?>, zzgys<?, ?>> zzc = new ConcurrentHashMap();
    static final int zzr = Integer.MAX_VALUE;
    static final int zzs = 0;
    private int zzd = -1;
    protected zzhbj zzt = zzhbj.zzc();

    public static zzgyu zzbA() {
        return zzgxa.zzd();
    }

    public static zzgyu zzbB(zzgyu zzgyuVar) {
        int size = zzgyuVar.size();
        return zzgyuVar.zze(size + size);
    }

    public static zzgyv zzbC() {
        return zzgxz.zze();
    }

    public static zzgyv zzbD(zzgyv zzgyvVar) {
        int size = zzgyvVar.size();
        return zzgyvVar.zzg(size + size);
    }

    public static zzgyz zzbE() {
        return zzgyj.zze();
    }

    public static zzgyz zzbF(zzgyz zzgyzVar) {
        int size = zzgyzVar.size();
        return zzgyzVar.zzg(size + size);
    }

    public static zzgza zzbG() {
        return zzgyt.zzg();
    }

    public static zzgza zzbH(zzgza zzgzaVar) {
        int size = zzgzaVar.size();
        return zzgzaVar.zzh(size + size);
    }

    public static zzgzd zzbI() {
        return zzgzs.zzh();
    }

    public static zzgzd zzbJ(zzgzd zzgzdVar) {
        int size = zzgzdVar.size();
        return zzgzdVar.zze(size + size);
    }

    public static <E> zzgze<E> zzbK() {
        return zzhao.zzd();
    }

    public static <E> zzgze<E> zzbL(zzgze<E> zzgzeVar) {
        int size = zzgzeVar.size();
        return zzgzeVar.zzf(size + size);
    }

    public static Object zzbP(Method method, Object obj, Object... objArr) {
        try {
            return method.invoke(obj, objArr);
        } catch (IllegalAccessException e) {
            throw new RuntimeException("Couldn't use Java reflection to implement protocol message reflection.", e);
        } catch (InvocationTargetException e2) {
            Throwable cause = e2.getCause();
            if (!(cause instanceof RuntimeException)) {
                if (cause instanceof Error) {
                    throw ((Error) cause);
                }
                throw new RuntimeException("Unexpected exception thrown by generated accessor method.", cause);
            }
            throw ((RuntimeException) cause);
        }
    }

    public static Object zzbQ(zzhad zzhadVar, String str, Object[] objArr) {
        return new zzhap(zzhadVar, str, objArr);
    }

    public static Method zzbR(Class cls, String str, Class... clsArr) {
        try {
            return cls.getMethod(str, clsArr);
        } catch (NoSuchMethodException e) {
            String name = cls.getName();
            throw new RuntimeException("Generated message class \"" + name + "\" missing method \"" + str + "\".", e);
        }
    }

    public static <T extends zzgys> void zzbZ(Class<T> cls, T t) {
        t.zzbV();
        zzc.put(cls, t);
    }

    public static <ContainingType extends zzhad, Type> zzgyq<ContainingType, Type> zzbe(ContainingType containingtype, zzhad zzhadVar, zzgyx zzgyxVar, int i, zzhbv zzhbvVar, boolean z, Class cls) {
        return new zzgyq<>(containingtype, zzhao.zzd(), zzhadVar, new zzgyp(zzgyxVar, i, zzhbvVar, true, z), cls);
    }

    public static <ContainingType extends zzhad, Type> zzgyq<ContainingType, Type> zzbf(ContainingType containingtype, Type type, zzhad zzhadVar, zzgyx zzgyxVar, int i, zzhbv zzhbvVar, Class cls) {
        return new zzgyq<>(containingtype, type, zzhadVar, new zzgyp(zzgyxVar, i, zzhbvVar, false, false), cls);
    }

    public static <T extends zzgys> T zzbh(Class<T> cls) {
        zzgys<?, ?> zzgysVar = zzc.get(cls);
        if (zzgysVar == null) {
            try {
                Class.forName(cls.getName(), true, cls.getClassLoader());
                zzgysVar = zzc.get(cls);
            } catch (ClassNotFoundException e) {
                throw new IllegalStateException("Class initialization cannot fail.", e);
            }
        }
        if (zzgysVar == null) {
            zzgys<?, ?> zzbt = ((zzgys) zzhbp.zzg(cls)).zzbt();
            if (zzbt != null) {
                zzc.put(cls, zzbt);
                return zzbt;
            }
            throw new IllegalStateException();
        }
        return zzgysVar;
    }

    public static <T extends zzgys<T, ?>> T zzbk(T t, InputStream inputStream) throws zzgzh {
        int i = zzgyc.zzb;
        int i2 = zzhan.zza;
        T t2 = (T) zzg(t, inputStream, zzgyc.zza);
        zzf(t2);
        return t2;
    }

    public static <T extends zzgys<T, ?>> T zzbl(T t, InputStream inputStream, zzgyc zzgycVar) throws zzgzh {
        T t2 = (T) zzg(t, inputStream, zzgycVar);
        zzf(t2);
        return t2;
    }

    public static <T extends zzgys<T, ?>> T zzbm(T t, zzgxk zzgxkVar) throws zzgzh {
        int i = zzgyc.zzb;
        int i2 = zzhan.zza;
        T t2 = (T) zzbr(t, zzgxkVar, zzgyc.zza);
        zzf(t2);
        return t2;
    }

    public static <T extends zzgys<T, ?>> T zzbn(T t, zzgxq zzgxqVar) throws zzgzh {
        int i = zzgyc.zzb;
        int i2 = zzhan.zza;
        return (T) zzbs(t, zzgxqVar, zzgyc.zza);
    }

    public static <T extends zzgys<T, ?>> T zzbo(T t, InputStream inputStream) throws zzgzh {
        zzgxq zzG = zzgxq.zzG(inputStream, 4096);
        int i = zzgyc.zzb;
        int i2 = zzhan.zza;
        T t2 = (T) zzbz(t, zzG, zzgyc.zza);
        zzf(t2);
        return t2;
    }

    public static <T extends zzgys<T, ?>> T zzbp(T t, ByteBuffer byteBuffer) throws zzgzh {
        int i = zzgyc.zzb;
        int i2 = zzhan.zza;
        return (T) zzbv(t, byteBuffer, zzgyc.zza);
    }

    public static <T extends zzgys<T, ?>> T zzbq(T t, byte[] bArr) throws zzgzh {
        int length = bArr.length;
        int i = zzgyc.zzb;
        int i2 = zzhan.zza;
        T t2 = (T) zzi(t, bArr, 0, length, zzgyc.zza);
        zzf(t2);
        return t2;
    }

    public static <T extends zzgys<T, ?>> T zzbr(T t, zzgxk zzgxkVar, zzgyc zzgycVar) throws zzgzh {
        T t2 = (T) zzh(t, zzgxkVar, zzgycVar);
        zzf(t2);
        return t2;
    }

    public static <T extends zzgys<T, ?>> T zzbs(T t, zzgxq zzgxqVar, zzgyc zzgycVar) throws zzgzh {
        T t2 = (T) zzbz(t, zzgxqVar, zzgycVar);
        zzf(t2);
        return t2;
    }

    public static <T extends zzgys<T, ?>> T zzbu(T t, InputStream inputStream, zzgyc zzgycVar) throws zzgzh {
        T t2 = (T) zzbz(t, zzgxq.zzG(inputStream, 4096), zzgycVar);
        zzf(t2);
        return t2;
    }

    public static <T extends zzgys<T, ?>> T zzbv(T t, ByteBuffer byteBuffer, zzgyc zzgycVar) throws zzgzh {
        zzgxq zzH;
        int i = zzgxq.zze;
        if (byteBuffer.hasArray()) {
            zzH = zzgxq.zzH(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.remaining(), false);
        } else {
            if (byteBuffer.isDirect()) {
                int i2 = zzgxo.zza;
                if (zzhbp.zzB()) {
                    zzH = new zzgxo(byteBuffer, false, null);
                }
            }
            int remaining = byteBuffer.remaining();
            byte[] bArr = new byte[remaining];
            byteBuffer.duplicate().get(bArr);
            zzH = zzgxq.zzH(bArr, 0, remaining, true);
        }
        T t2 = (T) zzbs(t, zzH, zzgycVar);
        zzf(t2);
        return t2;
    }

    public static <T extends zzgys<T, ?>> T zzbx(T t, byte[] bArr, zzgyc zzgycVar) throws zzgzh {
        T t2 = (T) zzi(t, bArr, 0, bArr.length, zzgycVar);
        zzf(t2);
        return t2;
    }

    public static <T extends zzgys<T, ?>> T zzby(T t, zzgxq zzgxqVar) throws zzgzh {
        int i = zzgyc.zzb;
        int i2 = zzhan.zza;
        return (T) zzbz(t, zzgxqVar, zzgyc.zza);
    }

    public static <T extends zzgys<T, ?>> T zzbz(T t, zzgxq zzgxqVar, zzgyc zzgycVar) throws zzgzh {
        T t2 = (T) t.zzbj();
        try {
            zzhaw zzb2 = zzhan.zza().zzb(t2.getClass());
            zzb2.zzh(t2, zzgxr.zzq(zzgxqVar), zzgycVar);
            zzb2.zzf(t2);
            return t2;
        } catch (zzgzh e) {
            if (e.zzb()) {
                throw new zzgzh(e);
            }
            throw e;
        } catch (zzhbh e2) {
            throw e2.zza();
        } catch (IOException e3) {
            if (e3.getCause() instanceof zzgzh) {
                throw ((zzgzh) e3.getCause());
            }
            throw new zzgzh(e3);
        } catch (RuntimeException e4) {
            if (e4.getCause() instanceof zzgzh) {
                throw ((zzgzh) e4.getCause());
            }
            throw e4;
        }
    }

    private int zzc(zzhaw<?> zzhawVar) {
        if (zzhawVar == null) {
            return zzhan.zza().zzb(getClass()).zza(this);
        }
        return zzhawVar.zza(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <MessageType extends zzgyo<MessageType, BuilderType>, BuilderType, T> zzgyq<MessageType, T> zzd(zzgya<MessageType, T> zzgyaVar) {
        return (zzgyq) zzgyaVar;
    }

    private static <T extends zzgys<T, ?>> T zzf(T t) throws zzgzh {
        if (t != null && !t.zzbw()) {
            throw t.zzaP().zza();
        }
        return t;
    }

    private static <T extends zzgys<T, ?>> T zzg(T t, InputStream inputStream, zzgyc zzgycVar) throws zzgzh {
        try {
            int read = inputStream.read();
            if (read == -1) {
                return null;
            }
            zzgxq zzG = zzgxq.zzG(new zzgwr(inputStream, zzgxq.zzE(read, inputStream)), 4096);
            T t2 = (T) zzbz(t, zzG, zzgycVar);
            zzG.zzy(0);
            return t2;
        } catch (zzgzh e) {
            if (e.zzb()) {
                throw new zzgzh(e);
            }
            throw e;
        } catch (IOException e2) {
            throw new zzgzh(e2);
        }
    }

    private static <T extends zzgys<T, ?>> T zzh(T t, zzgxk zzgxkVar, zzgyc zzgycVar) throws zzgzh {
        zzgxq zzl = zzgxkVar.zzl();
        T t2 = (T) zzbz(t, zzl, zzgycVar);
        zzl.zzy(0);
        return t2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <T extends zzgys<T, ?>> T zzi(T t, byte[] bArr, int i, int i2, zzgyc zzgycVar) throws zzgzh {
        if (i2 == 0) {
            return t;
        }
        T t2 = (T) t.zzbj();
        try {
            zzhaw zzb2 = zzhan.zza().zzb(t2.getClass());
            zzb2.zzi(t2, bArr, i, i + i2, new zzgwy(zzgycVar));
            zzb2.zzf(t2);
            return t2;
        } catch (zzgzh e) {
            if (e.zzb()) {
                throw new zzgzh(e);
            }
            throw e;
        } catch (zzhbh e2) {
            throw e2.zza();
        } catch (IOException e3) {
            if (e3.getCause() instanceof zzgzh) {
                throw ((zzgzh) e3.getCause());
            }
            throw new zzgzh(e3);
        } catch (IndexOutOfBoundsException unused) {
            throw new zzgzh("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
    }

    private void zzj() {
        if (this.zzt == zzhbj.zzc()) {
            this.zzt = zzhbj.zzf();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final <T extends zzgys<T, ?>> boolean zzk(T t, boolean z) {
        Object obj;
        byte byteValue = ((Byte) t.zzdd(zzgyr.GET_MEMOIZED_IS_INITIALIZED, null, null)).byteValue();
        if (byteValue == 1) {
            return true;
        }
        if (byteValue == 0) {
            return false;
        }
        boolean zzl = zzhan.zza().zzb(t.getClass()).zzl(t);
        if (z) {
            if (true != zzl) {
                obj = null;
            } else {
                obj = t;
            }
            t.zzdd(zzgyr.SET_MEMOIZED_IS_INITIALIZED, obj, null);
        }
        return zzl;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        return zzhan.zza().zzb(getClass()).zzk(this, (zzgys) obj);
    }

    public int hashCode() {
        if (zzcd()) {
            return zzaW();
        }
        if (zzcc()) {
            zzca(zzaW());
        }
        return zzaX();
    }

    public String toString() {
        return zzhaf.zza(this, super.toString());
    }

    @Override // com.google.android.gms.internal.ads.zzgwt
    public int zzaL() {
        return this.zzd & Integer.MAX_VALUE;
    }

    @Override // com.google.android.gms.internal.ads.zzgwt
    public int zzaM(zzhaw zzhawVar) {
        if (zzcd()) {
            int zzc2 = zzc(zzhawVar);
            if (zzc2 >= 0) {
                return zzc2;
            }
            throw new IllegalStateException("serialized size must be non-negative, was " + zzc2);
        } else if (zzaL() != Integer.MAX_VALUE) {
            return zzaL();
        } else {
            int zzc3 = zzc(zzhawVar);
            zzaS(zzc3);
            return zzc3;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgwt
    public zzhai zzaO() {
        throw new UnsupportedOperationException("Lite does not support the mutable API.");
    }

    @Override // com.google.android.gms.internal.ads.zzgwt
    public void zzaS(int i) {
        if (i >= 0) {
            this.zzd = i | (this.zzd & Integer.MIN_VALUE);
            return;
        }
        throw new IllegalStateException("serialized size must be non-negative, was " + i);
    }

    public int zzaW() {
        return zzhan.zza().zzb(getClass()).zzb(this);
    }

    public int zzaX() {
        return this.zzq;
    }

    @Override // com.google.android.gms.internal.ads.zzhad
    public int zzaY() {
        return zzaM(null);
    }

    public final <MessageType2 extends zzgys<MessageType2, BuilderType2>, BuilderType2 extends zzgym<MessageType2, BuilderType2>> BuilderType2 zzaZ() {
        return (BuilderType2) zzdd(zzgyr.NEW_BUILDER, null, null);
    }

    public final zzhal<MessageType> zzbN() {
        return (zzhal) zzdd(zzgyr.GET_PARSER, null, null);
    }

    public Object zzbO() throws Exception {
        return zzdd(zzgyr.BUILD_MESSAGE_INFO, null, null);
    }

    public void zzbS() {
        this.zzq = 0;
    }

    public void zzbT() {
        zzaS(Integer.MAX_VALUE);
    }

    public void zzbU() {
        zzhan.zza().zzb(getClass()).zzf(this);
        zzbV();
    }

    public void zzbV() {
        this.zzd &= Integer.MAX_VALUE;
    }

    public void zzbW(int i, zzgxk zzgxkVar) {
        zzj();
        zzhbj zzhbjVar = this.zzt;
        zzhbjVar.zzg();
        if (i != 0) {
            zzhbjVar.zzj((i << 3) | 2, zzgxkVar);
            return;
        }
        throw new IllegalArgumentException("Zero is not a valid field number.");
    }

    public final void zzbX(zzhbj zzhbjVar) {
        this.zzt = zzhbj.zze(this.zzt, zzhbjVar);
    }

    public void zzbY(int i, int i2) {
        zzj();
        zzhbj zzhbjVar = this.zzt;
        zzhbjVar.zzg();
        if (i != 0) {
            zzhbjVar.zzj(i << 3, Long.valueOf(i2));
            return;
        }
        throw new IllegalArgumentException("Zero is not a valid field number.");
    }

    public final <MessageType2 extends zzgys<MessageType2, BuilderType2>, BuilderType2 extends zzgym<MessageType2, BuilderType2>> BuilderType2 zzba(MessageType2 messagetype2) {
        BuilderType2 buildertype2 = (BuilderType2) zzaZ();
        buildertype2.zzbj(messagetype2);
        return buildertype2;
    }

    @Override // com.google.android.gms.internal.ads.zzhad
    /* renamed from: zzbb */
    public final BuilderType zzcY() {
        return (BuilderType) zzdd(zzgyr.NEW_BUILDER, null, null);
    }

    /* renamed from: zzbc */
    public final BuilderType zzbM() {
        BuilderType buildertype = (BuilderType) zzdd(zzgyr.NEW_BUILDER, null, null);
        buildertype.zzbj(this);
        return buildertype;
    }

    @Override // com.google.android.gms.internal.ads.zzhae
    /* renamed from: zzbi */
    public final MessageType zzbt() {
        return (MessageType) zzdd(zzgyr.GET_DEFAULT_INSTANCE, null, null);
    }

    public MessageType zzbj() {
        return (MessageType) zzdd(zzgyr.NEW_MUTABLE_INSTANCE, null, null);
    }

    @Override // com.google.android.gms.internal.ads.zzhae
    public final boolean zzbw() {
        return zzk(this, true);
    }

    @Override // com.google.android.gms.internal.ads.zzhad
    public void zzcZ(zzgxx zzgxxVar) throws IOException {
        zzhan.zza().zzb(getClass()).zzj(this, zzgxy.zza(zzgxxVar));
    }

    public void zzca(int i) {
        this.zzq = i;
    }

    public boolean zzcc() {
        if (zzaX() == 0) {
            return true;
        }
        return false;
    }

    public boolean zzcd() {
        if ((this.zzd & Integer.MIN_VALUE) != 0) {
            return true;
        }
        return false;
    }

    public boolean zzce(int i, zzgxq zzgxqVar) throws IOException {
        if ((i & 7) == 4) {
            return false;
        }
        zzj();
        return this.zzt.zzm(i, zzgxqVar);
    }

    public abstract Object zzdd(zzgyr zzgyrVar, Object obj, Object obj2);
}
