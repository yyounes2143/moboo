package com.getkeepsafe.relinker;

import android.content.Context;
import java.io.File;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public class ReLinker {

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public interface LibraryInstaller {
        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, String[] strArr, String str, File file, ReLinkerInstance reLinkerInstance);
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public interface LibraryLoader {
        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str);

        String[] Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();

        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str);

        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str);

        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str);
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public interface LoadListener {
        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Throwable th);

        void success();
    }

    /* compiled from: Proguard */
    /* loaded from: classes4.dex */
    public interface Logger {
        void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str);
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, String str, String str2, LoadListener loadListener) {
        new ReLinkerInstance().Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, str, str2, loadListener);
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, String str) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, str, null, null);
    }
}
