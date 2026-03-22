package org.apache.commons.io.input;

import java.io.InputStream;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class InfiniteCircularInputStream extends InputStream {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f13363Wwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final byte[] f13364Wwwwwwwwwwwwwwwwwwwwwwwww;

    @Override // java.io.InputStream
    public int read() {
        byte[] bArr = this.f13364Wwwwwwwwwwwwwwwwwwwwwwwww;
        int length = (this.f13363Wwwwwwwwwwwwwwwwwwwwwwww + 1) % bArr.length;
        this.f13363Wwwwwwwwwwwwwwwwwwwwwwww = length;
        return bArr[length] & 255;
    }
}
