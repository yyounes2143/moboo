package com.getkeepsafe.relinker;

import android.content.Context;
import android.util.Log;
import com.getkeepsafe.relinker.ReLinker;
import com.getkeepsafe.relinker.elf.ElfParser;
import com.sensorsdata.analytics.android.sdk.plugin.property.beans.SAPropertyFilter;
import java.io.File;
import java.io.FilenameFilter;
import java.io.IOException;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;
/* compiled from: Proguard */
/* loaded from: classes4.dex */
public class ReLinkerInstance {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public ReLinker.Logger f7496Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f7497Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f7498Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ReLinker.LibraryInstaller f7499Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final ReLinker.LibraryLoader f7500Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Set<String> f7501Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public ReLinkerInstance() {
        this(new SystemLibraryLoader(), new ApkLibraryInstaller());
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwww(String str, Object... objArr) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwww(String.format(Locale.US, str, objArr));
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        ReLinker.Logger logger = this.f7496Wwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (logger != null) {
            logger.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, String str, String str2) {
        ReLinkerInstance reLinkerInstance;
        Context context2;
        ElfParser elfParser;
        if (this.f7501Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.contains(str) && !this.f7498Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
            Wwwwwwwwwwwwwwwwwwwwwwwwww("%s already loaded previously!", str);
            return;
        }
        try {
            this.f7500Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
            this.f7501Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(str);
            Wwwwwwwwwwwwwwwwwwwwwwwwww("%s (%s) was loaded normally!", str, str2);
        } catch (UnsatisfiedLinkError e) {
            Wwwwwwwwwwwwwwwwwwwwwwwwww("Loading the library normally failed: %s", Log.getStackTraceString(e));
            Wwwwwwwwwwwwwwwwwwwwwwwwww("%s (%s) was not loaded normally, re-linking...", str, str2);
            File Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, str, str2);
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.exists() && !this.f7498Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                reLinkerInstance = this;
                context2 = context;
            } else {
                if (this.f7498Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwww("Forcing a re-link of %s (%s)...", str, str2);
                }
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, str, str2);
                reLinkerInstance = this;
                context2 = context;
                this.f7499Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context2, this.f7500Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), this.f7500Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, reLinkerInstance);
            }
            try {
                if (reLinkerInstance.f7497Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww) {
                    try {
                        elfParser = new ElfParser(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                        try {
                            List<String> Wwwwwwwwwwwwww2 = elfParser.Wwwwwwwwwwwwww();
                            elfParser.close();
                            for (String str3 : Wwwwwwwwwwwwww2) {
                                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context2, reLinkerInstance.f7500Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str3));
                            }
                        } catch (Throwable th) {
                            th = th;
                            Throwable th2 = th;
                            if (elfParser != null) {
                                elfParser.close();
                            }
                            throw th2;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        elfParser = null;
                    }
                }
            } catch (IOException unused) {
            }
            reLinkerInstance.f7500Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.getAbsolutePath());
            reLinkerInstance.f7501Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.add(str);
            Wwwwwwwwwwwwwwwwwwwwwwwwww("%s (%s) was re-linked!", str, str2);
        }
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(final Context context, final String str, final String str2, final ReLinker.LoadListener loadListener) {
        if (context != null) {
            if (!TextUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str)) {
                Wwwwwwwwwwwwwwwwwwwwwwwwww("Beginning load of %s...", str);
                if (loadListener == null) {
                    Wwwwwwwwwwwwwwwwwwwwwwwwwwww(context, str, str2);
                    return;
                } else {
                    new Thread(new Runnable() { // from class: com.getkeepsafe.relinker.ReLinkerInstance.1
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                ReLinkerInstance.this.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(context, str, str2);
                                loadListener.success();
                            } catch (MissingLibraryException e) {
                                loadListener.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(e);
                            } catch (UnsatisfiedLinkError e2) {
                                loadListener.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(e2);
                            }
                        }
                    }).start();
                    return;
                }
            }
            throw new IllegalArgumentException("Given library is either null or empty");
        }
        throw new IllegalArgumentException("Given context is null");
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, String str) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, str, null, null);
    }

    public File Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, String str, String str2) {
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f7500Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
        if (TextUtils.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str2)) {
            return new File(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context), Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
        }
        File Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context);
        return new File(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 + "." + str2);
    }

    public File Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context) {
        return context.getDir(SAPropertyFilter.LIB, 0);
    }

    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context, String str, String str2) {
        File Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context);
        File Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context, str, str2);
        final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = this.f7500Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str);
        File[] listFiles = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.listFiles(new FilenameFilter() { // from class: com.getkeepsafe.relinker.ReLinkerInstance.2
            @Override // java.io.FilenameFilter
            public boolean accept(File file, String str3) {
                return str3.startsWith(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            }
        });
        if (listFiles != null) {
            for (File file : listFiles) {
                if (this.f7498Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww || !file.getAbsolutePath().equals(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.getAbsolutePath())) {
                    file.delete();
                }
            }
        }
    }

    public ReLinkerInstance(ReLinker.LibraryLoader libraryLoader, ReLinker.LibraryInstaller libraryInstaller) {
        this.f7501Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new HashSet();
        if (libraryLoader == null) {
            throw new IllegalArgumentException("Cannot pass null library loader");
        }
        if (libraryInstaller != null) {
            this.f7500Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = libraryLoader;
            this.f7499Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = libraryInstaller;
            return;
        }
        throw new IllegalArgumentException("Cannot pass null library installer");
    }
}
