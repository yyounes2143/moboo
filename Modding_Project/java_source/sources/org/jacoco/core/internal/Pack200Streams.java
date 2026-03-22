package org.jacoco.core.internal;

import java.io.FilterInputStream;
import java.io.IOException;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public final class Pack200Streams {

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static class NoCloseInput extends FilterInputStream implements AutoCloseable {
        @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
        }
    }
}
