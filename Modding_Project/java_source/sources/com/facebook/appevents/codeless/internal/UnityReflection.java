package com.facebook.appevents.codeless.internal;

import com.unity3d.services.core.properties.MadeWithUnityDetector;
import java.lang.reflect.Method;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\b\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J-\u0010\t\u001a\u00020\b2\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0006\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0004H\u0007¢\u0006\u0004\b\t\u0010\nJ\u000f\u0010\u000b\u001a\u00020\bH\u0007¢\u0006\u0004\b\u000b\u0010\u0003J\u0019\u0010\r\u001a\u00020\b2\b\u0010\f\u001a\u0004\u0018\u00010\u0004H\u0007¢\u0006\u0004\b\r\u0010\u000eJ\u0013\u0010\u0010\u001a\u0006\u0012\u0002\b\u00030\u000fH\u0002¢\u0006\u0004\b\u0010\u0010\u0011R\u001c\u0010\u0014\u001a\n \u0012*\u0004\u0018\u00010\u00040\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\u0013R\u001a\u0010\u0016\u001a\u0006\u0012\u0002\b\u00030\u000f8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0010\u0010\u0015¨\u0006\u0017"}, d2 = {"Lcom/facebook/appevents/codeless/internal/UnityReflection;", "", "<init>", "()V", "", "unityObject", "unityMethod", "message", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "eventMapping", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)V", "Ljava/lang/Class;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/Class;", "kotlin.jvm.PlatformType", "Ljava/lang/String;", "TAG", "Ljava/lang/Class;", "unityPlayer", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes.dex */
public final class UnityReflection {

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static Class<?> f6335Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull
    public static final UnityReflection INSTANCE = new UnityReflection();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final String f6336Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = UnityReflection.class.getCanonicalName();

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable String str, @Nullable String str2, @Nullable String str3) {
        try {
            if (f6335Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww == null) {
                f6335Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = INSTANCE.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
            }
            Class<?> cls = f6335Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            if (cls != null) {
                Method method = cls.getMethod("UnitySendMessage", String.class, String.class, String.class);
                Class<?> cls2 = f6335Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
                if (cls2 != null) {
                    method.invoke(cls2, str, str2, str3);
                    return;
                }
                throw null;
            }
            throw null;
        } catch (Exception unused) {
        }
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable String str) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("UnityFacebookSDKPlugin", "OnReceiveMapping", str);
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("UnityFacebookSDKPlugin", "CaptureViewHierarchy", "");
    }

    public final Class<?> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return Class.forName(MadeWithUnityDetector.UNITY_PLAYER_CLASS_NAME);
    }
}
