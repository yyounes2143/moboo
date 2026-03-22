package com.bumptech.glide.signature;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.Key;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.UUID;
import java.util.concurrent.ConcurrentMap;
/* compiled from: Proguard */
/* loaded from: classes3.dex */
public final class ApplicationVersionSignature {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final ConcurrentMap<String, Key> f5173Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ConcurrentHashMap();

    @NonNull
    public static Key Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Context context) {
        return new ObjectKey(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context)));
    }

    @NonNull
    public static Key Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Context context) {
        String packageName = context.getPackageName();
        ConcurrentMap<String, Key> concurrentMap = f5173Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        Key key = concurrentMap.get(packageName);
        if (key == null) {
            Key Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context);
            Key putIfAbsent = concurrentMap.putIfAbsent(packageName, Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            if (putIfAbsent == null) {
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            }
            return putIfAbsent;
        }
        return key;
    }

    @NonNull
    public static String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable PackageInfo packageInfo) {
        if (packageInfo != null) {
            return String.valueOf(packageInfo.versionCode);
        }
        return UUID.randomUUID().toString();
    }

    @Nullable
    public static PackageInfo Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NonNull Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
        } catch (PackageManager.NameNotFoundException unused) {
            context.getPackageName();
            return null;
        }
    }
}
