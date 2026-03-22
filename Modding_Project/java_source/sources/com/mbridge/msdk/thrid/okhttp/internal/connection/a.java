package com.mbridge.msdk.thrid.okhttp.internal.connection;

import com.mbridge.msdk.thrid.okhttp.r;
import com.mbridge.msdk.thrid.okhttp.t;
import com.mbridge.msdk.thrid.okhttp.w;
import com.mbridge.msdk.thrid.okhttp.y;
import java.io.IOException;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class a implements r {

    /* renamed from: a  reason: collision with root package name */
    public final t f9559a;

    public a(t tVar) {
        this.f9559a = tVar;
    }

    @Override // com.mbridge.msdk.thrid.okhttp.r
    public y a(r.a aVar) throws IOException {
        com.mbridge.msdk.thrid.okhttp.internal.http.g gVar = (com.mbridge.msdk.thrid.okhttp.internal.http.g) aVar;
        w d = gVar.d();
        g i = gVar.i();
        return gVar.a(d, i, i.a(this.f9559a, aVar, !d.e().equals("GET")), i.c());
    }
}
