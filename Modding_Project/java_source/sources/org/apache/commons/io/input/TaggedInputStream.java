package org.apache.commons.io.input;

import java.io.IOException;
import java.io.Serializable;
import org.apache.commons.io.TaggedIOException;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class TaggedInputStream extends ProxyInputStream {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Serializable f13388Wwwwwwwwwwwwwwwwwwwwwwwww;

    @Override // org.apache.commons.io.input.ProxyInputStream
    public void Wwwwwwwwwwwwww(IOException iOException) throws IOException {
        throw new TaggedIOException(iOException, this.f13388Wwwwwwwwwwwwwwwwwwwwwwwww);
    }
}
