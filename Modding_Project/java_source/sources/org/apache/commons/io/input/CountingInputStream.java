package org.apache.commons.io.input;

import java.io.IOException;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class CountingInputStream extends ProxyInputStream {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public long f13361Wwwwwwwwwwwwwwwwwwwwwwwww;

    @Override // org.apache.commons.io.input.ProxyInputStream
    public synchronized void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
        if (i != -1) {
            this.f13361Wwwwwwwwwwwwwwwwwwwwwwwww += i;
        }
    }

    @Override // org.apache.commons.io.input.ProxyInputStream, java.io.FilterInputStream, java.io.InputStream
    public synchronized long skip(long j) throws IOException {
        long skip;
        skip = super.skip(j);
        this.f13361Wwwwwwwwwwwwwwwwwwwwwwwww += skip;
        return skip;
    }
}
