package com.changdu.component.webviewcache.lru;

import java.io.File;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class e {

    /* renamed from: a  reason: collision with root package name */
    public final String f5419a;
    public final long[] b;
    public boolean c;
    public d d;
    public final /* synthetic */ g e;

    public e(g gVar, String str) {
        this.e = gVar;
        this.f5419a = str;
        this.b = new long[gVar.g];
    }

    public final File a(int i) {
        File file = this.e.f5421a;
        return new File(file, this.f5419a + "." + i);
    }

    public final File b(int i) {
        File file = this.e.f5421a;
        return new File(file, this.f5419a + "." + i + ".tmp");
    }
}
