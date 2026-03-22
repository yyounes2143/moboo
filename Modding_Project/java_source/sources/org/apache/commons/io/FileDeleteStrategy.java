package org.apache.commons.io;

import java.io.File;
import java.io.IOException;
/* compiled from: Proguard */
/* loaded from: classes7.dex */
public class FileDeleteStrategy {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f13305Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final FileDeleteStrategy f13304Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new FileDeleteStrategy("Normal");

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final FileDeleteStrategy f13303Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ForceFileDeleteStrategy();

    /* compiled from: Proguard */
    /* loaded from: classes7.dex */
    public static class ForceFileDeleteStrategy extends FileDeleteStrategy {
        public ForceFileDeleteStrategy() {
            super("Force");
        }

        @Override // org.apache.commons.io.FileDeleteStrategy
        public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(File file) throws IOException {
            FileUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(file);
            return true;
        }
    }

    public FileDeleteStrategy(String str) {
        this.f13305Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = str;
    }

    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(File file) throws IOException {
        return file.delete();
    }

    public boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(File file) {
        if (file != null && file.exists()) {
            try {
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(file);
            } catch (IOException unused) {
                return false;
            }
        }
        return true;
    }

    public String toString() {
        return "FileDeleteStrategy[" + this.f13305Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww + "]";
    }
}
