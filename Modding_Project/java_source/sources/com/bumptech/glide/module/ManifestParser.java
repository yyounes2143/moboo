package com.bumptech.glide.module;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.util.Log;
import androidx.annotation.Nullable;
import j$.util.Objects;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.List;
/* compiled from: Proguard */
@Deprecated
/* loaded from: classes3.dex */
public final class ManifestParser {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final Context f4997Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    public ManifestParser(Context context) {
        this.f4997Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = context;
    }

    public static void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Class<?> cls, Exception exc) {
        throw new RuntimeException("Unable to instantiate GlideModule implementation for " + cls, exc);
    }

    public static GlideModule Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
        try {
            Class<?> cls = Class.forName(str);
            Object obj = null;
            try {
                obj = cls.getDeclaredConstructor(null).newInstance(null);
            } catch (IllegalAccessException e) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(cls, e);
            } catch (InstantiationException e2) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(cls, e2);
            } catch (NoSuchMethodException e3) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(cls, e3);
            } catch (InvocationTargetException e4) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(cls, e4);
            }
            if (obj instanceof GlideModule) {
                return (GlideModule) obj;
            }
            throw new RuntimeException("Expected instanceof GlideModule, but found: " + obj);
        } catch (ClassNotFoundException e5) {
            throw new IllegalArgumentException("Unable to find GlideModule implementation", e5);
        }
    }

    public List<GlideModule> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        ArrayList arrayList = new ArrayList();
        try {
            ApplicationInfo Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.metaData != null) {
                if (Log.isLoggable("ManifestParser", 2)) {
                    Objects.toString(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.metaData);
                }
                for (String str : Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.metaData.keySet()) {
                    if ("GlideModule".equals(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.metaData.get(str))) {
                        arrayList.add(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str));
                    }
                }
            }
            return arrayList;
        } catch (PackageManager.NameNotFoundException e) {
            throw new RuntimeException("Unable to find metadata to parse GlideModules", e);
        }
    }

    @Nullable
    public final ApplicationInfo Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() throws PackageManager.NameNotFoundException {
        return this.f4997Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getPackageManager().getApplicationInfo(this.f4997Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getPackageName(), 128);
    }
}
