package com.facebook.appevents;

import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import android.util.Patterns;
import androidx.annotation.RestrictTo;
import com.facebook.FacebookSdk;
import com.facebook.appevents.aam.MetadataRule;
import com.facebook.internal.Utility;
import com.facebook.internal.instrument.crashshield.CrashShieldHandler;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\u0010\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\b\u0007\bÇ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0005\u0010\u0003J\u000f\u0010\u0007\u001a\u00020\u0006H\u0007¢\u0006\u0004\b\u0007\u0010\bJ#\u0010\u000b\u001a\u00020\u00042\u0012\u0010\n\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00060\tH\u0007¢\u0006\u0004\b\u000b\u0010\fJ\u001f\u0010\u000f\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0011\u0010\u0003J\u001f\u0010\u0014\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00062\u0006\u0010\u0013\u001a\u00020\u0006H\u0002¢\u0006\u0004\b\u0014\u0010\u0015R\u001c\u0010\u0019\u001a\n \u0016*\u0004\u0018\u00010\u00060\u00068\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0017\u0010\u0018R\u0016\u0010\u001c\u001a\u00020\u001a8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0007\u0010\u001bR\u0014\u0010 \u001a\u00020\u001d8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR$\u0010#\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00060!8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\"R$\u0010$\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00060!8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\"R$\u0010&\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u0006\u0012\u0006\u0012\u0004\u0018\u00010\u00060\t8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u001e\u0010%¨\u0006'"}, d2 = {"Lcom/facebook/appevents/UserDataStore;", "", "<init>", "()V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/String;", "", "ud", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/util/Map;)V", "key", "value", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/lang/String;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "type", "data", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;", "kotlin.jvm.PlatformType", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "TAG", "Landroid/content/SharedPreferences;", "Landroid/content/SharedPreferences;", "sharedPreferences", "Ljava/util/concurrent/atomic/AtomicBoolean;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/concurrent/atomic/AtomicBoolean;", "initialized", "j$/util/concurrent/ConcurrentHashMap", "Lj$/util/concurrent/ConcurrentHashMap;", "externalHashedUserData", "internalHashedUserData", "()Ljava/util/Map;", "enabledInternalUserData", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public final class UserDataStore {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static SharedPreferences f6213Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull
    public static final UserDataStore INSTANCE = new UserDataStore();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final String f6214Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = UserDataStore.class.getSimpleName();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final AtomicBoolean f6212Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new AtomicBoolean(false);
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final ConcurrentHashMap<String, String> f6211Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ConcurrentHashMap<>();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final ConcurrentHashMap<String, String> f6210Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new ConcurrentHashMap<>();

    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwww(String str, String str2) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(UserDataStore.class)) {
            return;
        }
        try {
            if (!f6212Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get()) {
                INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
            SharedPreferences sharedPreferences = f6213Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (sharedPreferences != null) {
                sharedPreferences.edit().putString(str, str2).apply();
                return;
            }
            throw null;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, UserDataStore.class);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:42:0x00aa, code lost:
        r5 = new java.lang.String[0];
     */
    @kotlin.jvm.JvmStatic
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@org.jetbrains.annotations.NotNull java.util.Map<java.lang.String, java.lang.String> r12) {
        /*
            Method dump skipped, instructions count: 281
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.facebook.appevents.UserDataStore.Wwwwwwwwwwwwwwwwwwwwwwwwwwww(java.util.Map):void");
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (!CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(UserDataStore.class)) {
            try {
                if (f6212Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get()) {
                    return;
                }
                INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            } catch (Throwable th) {
                CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, UserDataStore.class);
            }
        }
    }

    @JvmStatic
    @NotNull
    public static final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(UserDataStore.class)) {
            return null;
        }
        try {
            if (!f6212Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get()) {
                INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
            HashMap hashMap = new HashMap();
            hashMap.putAll(f6211Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
            hashMap.putAll(INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
            return Utility.Illllllllllllllllllll(hashMap);
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, UserDataStore.class);
            return null;
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwww(final String str, final String str2) {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return;
        }
        try {
            FacebookSdk.Wwwwwwwwwwwwww().execute(new Runnable() { // from class: com.facebook.appevents.Wwwwwwwwwwwwww
                @Override // java.lang.Runnable
                public final void run() {
                    UserDataStore.Wwwwwwwwwwwwwwwwwwwwwwwwww(str, str2);
                }
            });
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
        }
    }

    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str, String str2) {
        String str3;
        int i;
        boolean z;
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return null;
        }
        try {
            int length = str2.length() - 1;
            int i2 = 0;
            boolean z2 = false;
            while (i2 <= length) {
                if (!z2) {
                    i = i2;
                } else {
                    i = length;
                }
                if (Intrinsics.compare((int) str2.charAt(i), 32) <= 0) {
                    z = true;
                } else {
                    z = false;
                }
                if (!z2) {
                    if (!z) {
                        z2 = true;
                    } else {
                        i2++;
                    }
                } else if (!z) {
                    break;
                } else {
                    length--;
                }
            }
            String obj = str2.subSequence(i2, length + 1).toString();
            if (obj != null) {
                String lowerCase = obj.toLowerCase();
                if (Intrinsics.areEqual("em", str)) {
                    if (!Patterns.EMAIL_ADDRESS.matcher(lowerCase).matches()) {
                        return "";
                    }
                } else if (Intrinsics.areEqual("ph", str)) {
                    return new Regex("[^0-9]").replace(lowerCase, "");
                } else {
                    if (Intrinsics.areEqual("ge", str)) {
                        if (lowerCase.length() <= 0) {
                            str3 = "";
                        } else if (lowerCase != null) {
                            str3 = lowerCase.substring(0, 1);
                        } else {
                            throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
                        }
                        if (!Intrinsics.areEqual("f", str3) && !Intrinsics.areEqual("m", str3)) {
                            return "";
                        }
                        return str3;
                    }
                }
                return lowerCase;
            }
            throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            return null;
        }
    }

    public final synchronized void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return;
        }
        AtomicBoolean atomicBoolean = f6212Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        if (atomicBoolean.get()) {
            return;
        }
        SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwww());
        f6213Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = defaultSharedPreferences;
        if (defaultSharedPreferences != null) {
            String string = defaultSharedPreferences.getString("com.facebook.appevents.UserDataStore.userData", "");
            if (string == null) {
                string = "";
            }
            SharedPreferences sharedPreferences = f6213Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (sharedPreferences != null) {
                String string2 = sharedPreferences.getString("com.facebook.appevents.UserDataStore.internalUserData", "");
                if (string2 == null) {
                    string2 = "";
                }
                f6211Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.putAll(Utility.Illllllllllllllllllllllll(string));
                f6210Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.putAll(Utility.Illllllllllllllllllllllll(string2));
                atomicBoolean.set(true);
                return;
            }
            throw null;
        }
        throw null;
    }

    public final Map<String, String> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this)) {
            return null;
        }
        try {
            HashMap hashMap = new HashMap();
            Set<String> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = MetadataRule.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            for (String str : f6210Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.keySet()) {
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.contains(str)) {
                    hashMap.put(str, f6210Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.get(str));
                }
            }
            return hashMap;
        } catch (Throwable th) {
            CrashShieldHandler.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(th, this);
            return null;
        }
    }
}
