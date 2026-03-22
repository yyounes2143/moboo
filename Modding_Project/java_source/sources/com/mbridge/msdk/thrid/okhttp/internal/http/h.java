package com.mbridge.msdk.thrid.okhttp.internal.http;

import com.mbridge.msdk.thrid.okhttp.z;
import javax.annotation.Nullable;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public final class h extends z {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final String f9572a;
    private final long b;
    private final com.mbridge.msdk.thrid.okio.e c;

    public h(@Nullable String str, long j, com.mbridge.msdk.thrid.okio.e eVar) {
        this.f9572a = str;
        this.b = j;
        this.c = eVar;
    }

    @Override // com.mbridge.msdk.thrid.okhttp.z
    public long h() {
        return this.b;
    }

    @Override // com.mbridge.msdk.thrid.okhttp.z
    public com.mbridge.msdk.thrid.okio.e k() {
        return this.c;
    }
}
