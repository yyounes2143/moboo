package com.mbridge.msdk.foundation.same.directory;

import com.mbridge.msdk.foundation.tools.o0;
import com.mbridge.msdk.foundation.tools.r0;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
/* compiled from: Proguard */
/* loaded from: classes5.dex */
public class e {
    private static volatile e c;

    /* renamed from: a  reason: collision with root package name */
    private final b f9008a;
    private final ArrayList<a> b = new ArrayList<>();

    /* compiled from: Proguard */
    /* loaded from: classes5.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public File f9009a;
        public c b;

        public a(c cVar, File file) {
            this.b = cVar;
            this.f9009a = file;
        }
    }

    private e(b bVar) {
        this.f9008a = bVar;
    }

    public static File a(c cVar) {
        try {
            if (b() == null || b().b == null || b().b.isEmpty()) {
                return null;
            }
            ArrayList<a> arrayList = b().b;
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                a aVar = arrayList.get(i);
                i++;
                a aVar2 = aVar;
                if (aVar2.b.equals(cVar)) {
                    return aVar2.f9009a;
                }
            }
            return null;
        } catch (Throwable th) {
            o0.b("MBridgeDirManager", th.getMessage(), th);
            return null;
        }
    }

    public static String b(c cVar) {
        File a2 = a(cVar);
        if (a2 != null) {
            return a2.getAbsolutePath();
        }
        return null;
    }

    public static synchronized e b() {
        e eVar;
        synchronized (e.class) {
            try {
                if (c == null && com.mbridge.msdk.foundation.controller.c.m().d() != null) {
                    r0.a(com.mbridge.msdk.foundation.controller.c.m().d());
                }
                eVar = c;
            } catch (Throwable th) {
                throw th;
            }
        }
        return eVar;
    }

    public static synchronized void a(b bVar) {
        synchronized (e.class) {
            if (c == null) {
                c = new e(bVar);
            }
        }
    }

    public boolean a() {
        return a(this.f9008a.a());
    }

    private boolean a(com.mbridge.msdk.foundation.same.directory.a aVar) {
        File a2;
        String str;
        com.mbridge.msdk.foundation.same.directory.a c2 = aVar.c();
        if (c2 == null) {
            str = aVar.b();
        } else {
            if (a(c2.d()) == null) {
                return false;
            }
            str = a2.getAbsolutePath() + File.separator + aVar.b();
        }
        File file = new File(str);
        if (!file.exists() ? file.mkdirs() : true) {
            this.b.add(new a(aVar.d(), file));
            List<com.mbridge.msdk.foundation.same.directory.a> a3 = aVar.a();
            if (a3 != null) {
                for (com.mbridge.msdk.foundation.same.directory.a aVar2 : a3) {
                    if (!a(aVar2)) {
                        return false;
                    }
                }
            }
            return true;
        }
        return false;
    }
}
