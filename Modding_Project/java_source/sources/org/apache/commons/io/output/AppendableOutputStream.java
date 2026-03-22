package org.apache.commons.io.output;

import java.io.IOException;
import java.io.OutputStream;
import java.lang.Appendable;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class AppendableOutputStream<T extends Appendable> extends OutputStream {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final T f13420Wwwwwwwwwwwwwwwwwwwwwwwww;

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        this.f13420Wwwwwwwwwwwwwwwwwwwwwwwww.append((char) i);
    }
}
