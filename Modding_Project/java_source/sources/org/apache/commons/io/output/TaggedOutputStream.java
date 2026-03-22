package org.apache.commons.io.output;

import java.io.IOException;
import java.io.Serializable;
import org.apache.commons.io.TaggedIOException;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class TaggedOutputStream extends ProxyOutputStream {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Serializable f13446Wwwwwwwwwwwwwwwwwwwwwwwww;

    @Override // org.apache.commons.io.output.ProxyOutputStream
    public void Wwwwwwwwwwwwww(IOException iOException) throws IOException {
        throw new TaggedIOException(iOException, this.f13446Wwwwwwwwwwwwwwwwwwwwwwwww);
    }
}
