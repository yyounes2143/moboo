package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzgym;
import com.google.android.gms.internal.ads.zzgys;
import java.io.IOException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public class zzgym<MessageType extends zzgys<MessageType, BuilderType>, BuilderType extends zzgym<MessageType, BuilderType>> extends zzgws<MessageType, BuilderType> {
    protected MessageType zza;
    private final MessageType zzb;

    public zzgym(MessageType messagetype) {
        this.zzb = messagetype;
        if (!messagetype.zzcd()) {
            this.zza = zza();
            return;
        }
        throw new IllegalArgumentException("Default instance must be immutable.");
    }

    private MessageType zza() {
        return (MessageType) this.zzb.zzbj();
    }

    private static <MessageType> void zzb(MessageType messagetype, MessageType messagetype2) {
        zzhan.zza().zzb(messagetype.getClass()).zzg(messagetype, messagetype2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzgws
    public /* bridge */ /* synthetic */ zzgws zzaD(zzgwt zzgwtVar) {
        zzbi((zzgys) zzgwtVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzgws
    public /* bridge */ /* synthetic */ zzgws zzaK(zzgxq zzgxqVar, zzgyc zzgycVar) throws IOException {
        zzbk(zzgxqVar, zzgycVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzgws
    public /* bridge */ /* synthetic */ zzgws zzaN(byte[] bArr, int i, int i2) throws zzgzh {
        zzbl(bArr, i, i2);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzgws
    public /* bridge */ /* synthetic */ zzgws zzaO(byte[] bArr, int i, int i2, zzgyc zzgycVar) throws zzgzh {
        zzbm(bArr, i, i2, zzgycVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzgws
    public /* bridge */ /* synthetic */ zzhac zzaW(zzgxq zzgxqVar, zzgyc zzgycVar) throws IOException {
        zzbk(zzgxqVar, zzgycVar);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzgws
    public /* bridge */ /* synthetic */ zzhac zzaZ(byte[] bArr, int i, int i2) throws zzgzh {
        zzbl(bArr, i, i2);
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzgws
    public /* bridge */ /* synthetic */ zzhac zzba(byte[] bArr, int i, int i2, zzgyc zzgycVar) throws zzgzh {
        zzbm(bArr, i, i2, zzgycVar);
        return this;
    }

    public final BuilderType zzbg() {
        if (!this.zzb.zzcd()) {
            this.zza = zza();
            return this;
        }
        throw new IllegalArgumentException("Default instance must be immutable.");
    }

    @Override // com.google.android.gms.internal.ads.zzgws
    /* renamed from: zzbh */
    public BuilderType zzaP() {
        BuilderType buildertype = (BuilderType) zzbt().zzcY();
        buildertype.zza = zzbs();
        return buildertype;
    }

    public BuilderType zzbi(MessageType messagetype) {
        zzbj(messagetype);
        return this;
    }

    public BuilderType zzbj(MessageType messagetype) {
        if (zzbt().equals(messagetype)) {
            return this;
        }
        zzbu();
        zzb(this.zza, messagetype);
        return this;
    }

    public BuilderType zzbk(zzgxq zzgxqVar, zzgyc zzgycVar) throws IOException {
        zzbu();
        try {
            zzhan.zza().zzb(this.zza.getClass()).zzh(this.zza, zzgxr.zzq(zzgxqVar), zzgycVar);
            return this;
        } catch (RuntimeException e) {
            if (e.getCause() instanceof IOException) {
                throw ((IOException) e.getCause());
            }
            throw e;
        }
    }

    public BuilderType zzbl(byte[] bArr, int i, int i2) throws zzgzh {
        int i3 = zzgyc.zzb;
        int i4 = zzhan.zza;
        zzbm(bArr, i, i2, zzgyc.zza);
        return this;
    }

    public BuilderType zzbm(byte[] bArr, int i, int i2, zzgyc zzgycVar) throws zzgzh {
        zzbu();
        try {
            zzhan.zza().zzb(this.zza.getClass()).zzi(this.zza, bArr, i, i + i2, new zzgwy(zzgycVar));
            return this;
        } catch (zzgzh e) {
            throw e;
        } catch (IOException e2) {
            throw new RuntimeException("Reading from byte array should not throw IOException.", e2);
        } catch (IndexOutOfBoundsException unused) {
            throw new zzgzh("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
        }
    }

    /* renamed from: zzbn */
    public final MessageType zzbr() {
        MessageType zzbs = zzbs();
        if (zzbs.zzbw()) {
            return zzbs;
        }
        throw zzgws.zzbb(zzbs);
    }

    @Override // com.google.android.gms.internal.ads.zzhac
    /* renamed from: zzbo */
    public MessageType zzbs() {
        if (!this.zza.zzcd()) {
            return this.zza;
        }
        this.zza.zzbU();
        return this.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzhae
    /* renamed from: zzbp */
    public MessageType zzbt() {
        return this.zzb;
    }

    public /* bridge */ /* synthetic */ zzhac zzbq() {
        zzbg();
        return this;
    }

    public final void zzbu() {
        if (!this.zza.zzcd()) {
            zzbv();
        }
    }

    public void zzbv() {
        MessageType zza = zza();
        zzb(zza, this.zza);
        this.zza = zza;
    }

    @Override // com.google.android.gms.internal.ads.zzhae
    public final boolean zzbw() {
        boolean zzk;
        zzk = zzgys.zzk(this.zza, false);
        return zzk;
    }
}
