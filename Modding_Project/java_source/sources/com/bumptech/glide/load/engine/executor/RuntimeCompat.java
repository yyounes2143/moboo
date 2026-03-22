package com.bumptech.glide.load.engine.executor;

import java.io.File;
import java.io.FilenameFilter;
import java.util.regex.Pattern;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
final class RuntimeCompat {

    /* compiled from: Proguard */
    /* renamed from: com.bumptech.glide.load.engine.executor.RuntimeCompat$1  reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 implements FilenameFilter {

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final /* synthetic */ Pattern f4563Wwwwwwwwwwwwwwwwwwwwwwwww;

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return this.f4563Wwwwwwwwwwwwwwwwwwwwwwwww.matcher(str).matches();
        }
    }

    public static int Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return Runtime.getRuntime().availableProcessors();
    }
}
