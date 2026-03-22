package org.apache.commons.io.input;

import java.io.IOException;
import java.security.MessageDigest;
import org.apache.commons.io.input.ObservableInputStream;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class MessageDigestCalculatingInputStream extends ObservableInputStream {

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static class MessageDigestMaintainingObserver extends ObservableInputStream.Observer {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final MessageDigest f13365Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

        @Override // org.apache.commons.io.input.ObservableInputStream.Observer
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(byte[] bArr, int i, int i2) throws IOException {
            this.f13365Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.update(bArr, i, i2);
        }

        @Override // org.apache.commons.io.input.ObservableInputStream.Observer
        public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(int i) throws IOException {
            this.f13365Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.update((byte) i);
        }
    }
}
