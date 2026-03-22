package com.google.android.gms.internal.ads;

import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public class zzhfg implements Iterator, Closeable, zzari, AutoCloseable {
    private static final zzarh zza = new zzhff("eof ");
    protected zzare zzb;
    protected zzhfh zzc;
    zzarh zzd = null;
    long zze = 0;
    long zzf = 0;
    private final List zzg = new ArrayList();

    static {
        zzhfn.zzb(zzhfg.class);
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        zzarh zzarhVar = this.zzd;
        if (zzarhVar == zza) {
            return false;
        }
        if (zzarhVar != null) {
            return true;
        }
        try {
            this.zzd = next();
            return true;
        } catch (NoSuchElementException unused) {
            this.zzd = zza;
            return false;
        }
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(getClass().getSimpleName());
        sb.append("[");
        int i = 0;
        while (true) {
            List list = this.zzg;
            if (i < list.size()) {
                if (i > 0) {
                    sb.append(";");
                }
                sb.append(((zzarh) list.get(i)).toString());
                i++;
            } else {
                sb.append("]");
                return sb.toString();
            }
        }
    }

    @Override // java.util.Iterator
    /* renamed from: zzc */
    public final zzarh next() {
        zzarh zzb;
        zzarh zzarhVar = this.zzd;
        if (zzarhVar != null && zzarhVar != zza) {
            this.zzd = null;
            return zzarhVar;
        }
        zzhfh zzhfhVar = this.zzc;
        if (zzhfhVar != null && this.zze < this.zzf) {
            try {
                synchronized (zzhfhVar) {
                    this.zzc.zze(this.zze);
                    zzb = this.zzb.zzb(this.zzc, this);
                    this.zze = this.zzc.zzb();
                }
                return zzb;
            } catch (EOFException unused) {
                throw new NoSuchElementException();
            } catch (IOException unused2) {
                throw new NoSuchElementException();
            }
        }
        this.zzd = zza;
        throw new NoSuchElementException();
    }

    public final List zzd() {
        if (this.zzc != null && this.zzd != zza) {
            return new zzhfm(this.zzg, this);
        }
        return this.zzg;
    }

    public final void zze(zzhfh zzhfhVar, long j, zzare zzareVar) throws IOException {
        this.zzc = zzhfhVar;
        this.zze = zzhfhVar.zzb();
        zzhfhVar.zze(zzhfhVar.zzb() + j);
        this.zzf = zzhfhVar.zzb();
        this.zzb = zzareVar;
    }

    public void close() throws IOException {
    }
}
