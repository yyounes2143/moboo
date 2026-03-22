package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzgws;
import com.google.android.gms.internal.ads.zzgwt;
import java.io.IOException;
import java.io.OutputStream;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public abstract class zzgwt<MessageType extends zzgwt<MessageType, BuilderType>, BuilderType extends zzgws<MessageType, BuilderType>> implements zzhad {
    protected int zzq = 0;

    public static <T> void zzaQ(Iterable<T> iterable, List<? super T> list) {
        zzgws.zzbd(iterable, list);
    }

    public static void zzaR(zzgxk zzgxkVar) throws IllegalArgumentException {
        if (zzgxkVar.zzp()) {
            return;
        }
        throw new IllegalArgumentException("Byte string is not UTF-8.");
    }

    private String zzdI(String str) {
        String name = getClass().getName();
        return "Serializing " + name + " to a " + str + " threw an IOException (should never happen).";
    }

    public int zzaL() {
        throw new UnsupportedOperationException();
    }

    public int zzaM(zzhaw zzhawVar) {
        return zzaL();
    }

    @Override // com.google.android.gms.internal.ads.zzhad
    public zzgxk zzaN() {
        try {
            int zzaY = zzaY();
            zzgxk zzgxkVar = zzgxk.zzb;
            byte[] bArr = new byte[zzaY];
            int i = zzgxx.zzf;
            zzgxt zzgxtVar = new zzgxt(bArr, 0, zzaY);
            zzcZ(zzgxtVar);
            zzgxtVar.zzF();
            return new zzgxh(bArr);
        } catch (IOException e) {
            throw new RuntimeException(zzdI("ByteString"), e);
        }
    }

    public zzhai zzaO() {
        throw new UnsupportedOperationException("mutableCopy() is not implemented.");
    }

    public zzhbh zzaP() {
        return new zzhbh(this);
    }

    public void zzaS(int i) {
        throw new UnsupportedOperationException();
    }

    public void zzaT(OutputStream outputStream) throws IOException {
        int zzaY = zzaY();
        zzgxv zzgxvVar = new zzgxv(outputStream, zzgxx.zzB(zzgxx.zzD(zzaY) + zzaY));
        zzgxvVar.zzu(zzaY);
        zzcZ(zzgxvVar);
        zzgxvVar.zzK();
    }

    public void zzaU(OutputStream outputStream) throws IOException {
        zzgxv zzgxvVar = new zzgxv(outputStream, zzgxx.zzB(zzaY()));
        zzcZ(zzgxvVar);
        zzgxvVar.zzK();
    }

    public byte[] zzaV() {
        try {
            int zzaY = zzaY();
            byte[] bArr = new byte[zzaY];
            int i = zzgxx.zzf;
            zzgxt zzgxtVar = new zzgxt(bArr, 0, zzaY);
            zzcZ(zzgxtVar);
            zzgxtVar.zzF();
            return bArr;
        } catch (IOException e) {
            throw new RuntimeException(zzdI("byte array"), e);
        }
    }
}
