package org.apache.commons.io.output;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class CountingOutputStream extends ProxyOutputStream {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public long f13432Wwwwwwwwwwwwwwwwwwwwwwwww;

    @Override // org.apache.commons.io.output.ProxyOutputStream
    public synchronized void Wwwwwwwwwwwwwwwwwwwwwwwwwww(int i) {
        this.f13432Wwwwwwwwwwwwwwwwwwwwwwwww += i;
    }
}
