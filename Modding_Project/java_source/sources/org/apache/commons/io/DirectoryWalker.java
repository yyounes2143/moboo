package org.apache.commons.io;

import java.io.File;
import java.io.FileFilter;
import java.io.IOException;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public abstract class DirectoryWalker<T> {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final int f13293Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final FileFilter f13294Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static class CancelException extends IOException {
        private static final long serialVersionUID = 1347339620135041008L;
        private final int depth;
        private final File file;

        public CancelException(File file, int i) {
            this("Operation Cancelled", file, i);
        }

        public int getDepth() {
            return this.depth;
        }

        public File getFile() {
            return this.file;
        }

        public CancelException(String str, File file, int i) {
            super(str);
            this.file = file;
            this.depth = i;
        }
    }

    public DirectoryWalker() {
        this(null, -1);
    }

    public DirectoryWalker(FileFilter fileFilter, int i) {
        this.f13294Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = fileFilter;
        this.f13293Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = i;
    }
}
