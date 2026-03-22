package com.changdu.component.webviewcache.lru;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.OutputStream;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class d {

    /* renamed from: a  reason: collision with root package name */
    public final e f5418a;
    public final boolean[] b;
    public boolean c;
    public final /* synthetic */ g d;

    public d(g gVar, e eVar) {
        boolean[] zArr;
        this.d = gVar;
        this.f5418a = eVar;
        if (eVar.c) {
            zArr = null;
        } else {
            zArr = new boolean[gVar.g];
        }
        this.b = zArr;
    }

    public final OutputStream a(int i) {
        FileOutputStream fileOutputStream;
        c cVar;
        if (i >= 0) {
            g gVar = this.d;
            if (i < gVar.g) {
                synchronized (gVar) {
                    try {
                        e eVar = this.f5418a;
                        if (eVar.d == this) {
                            if (!eVar.c) {
                                this.b[i] = true;
                            }
                            File b = eVar.b(i);
                            try {
                                fileOutputStream = new FileOutputStream(b);
                            } catch (FileNotFoundException unused) {
                                this.d.f5421a.mkdirs();
                                try {
                                    fileOutputStream = new FileOutputStream(b);
                                } catch (FileNotFoundException unused2) {
                                    return g.p;
                                }
                            }
                            cVar = new c(this, fileOutputStream);
                        } else {
                            throw new IllegalStateException();
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return cVar;
            }
        }
        throw new IllegalArgumentException("Expected index " + i + " to be greater than 0 and less than the maximum value count of " + this.d.g);
    }

    public final void a() {
        if (this.c) {
            this.d.a(this, false);
            this.d.d(this.f5418a.f5419a);
            return;
        }
        this.d.a(this, true);
    }
}
