package com.facebook.internal;

import android.util.Log;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.facebook.FacebookSdk;
import com.facebook.LoggingBehavior;
import com.unity3d.ads.core.domain.HandleInvocationsFromAdViewer;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0007\n\u0002\u0010\u0011\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\b\u0018\u0000 )2\u00020\u0001:\u0001)B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\r\u0010\t\u001a\u00020\b¢\u0006\u0004\b\t\u0010\nJ\u0015\u0010\f\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\u0004¢\u0006\u0004\b\f\u0010\rJ\u0015\u0010\u000e\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\u0004¢\u0006\u0004\b\u000e\u0010\rJ)\u0010\u0012\u001a\u00020\b2\u0006\u0010\u000f\u001a\u00020\u00042\u0012\u0010\u0011\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00010\u0010\"\u00020\u0001¢\u0006\u0004\b\u0012\u0010\u0013J\u001d\u0010\u0016\u001a\u00020\b2\u0006\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0001¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0019\u001a\u00020\u0018H\u0002¢\u0006\u0004\b\u0019\u0010\u001aR\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0014\u0010\u0005\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u001dR\u001a\u0010!\u001a\u00060\u001ej\u0002`\u001f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0012\u0010 R*\u0010(\u001a\u00020\"2\u0006\u0010\u0015\u001a\u00020\"8\u0006@FX\u0086\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010#\u001a\u0004\b$\u0010%\"\u0004\b&\u0010'¨\u0006*"}, d2 = {"Lcom/facebook/internal/Logger;", "", "Lcom/facebook/LoggingBehavior;", "behavior", "", "tag", "<init>", "(Lcom/facebook/LoggingBehavior;Ljava/lang/String;)V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()V", TypedValues.Custom.S_STRING, "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "format", "", "args", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;[Ljava/lang/Object;)V", "key", "value", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/lang/Object;)V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Lcom/facebook/LoggingBehavior;", "Ljava/lang/String;", "Ljava/lang/StringBuilder;", "Lkotlin/text/StringBuilder;", "Ljava/lang/StringBuilder;", "contents", "", "I", "getPriority", "()I", "setPriority", "(I)V", HandleInvocationsFromAdViewer.KEY_DOWNLOAD_PRIORITY, "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class Logger {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final HashMap<String, String> f6764Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new HashMap<>();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public int f6765Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = 3;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public StringBuilder f6766Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new StringBuilder();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f6767Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final LoggingBehavior f6768Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u001f\u0010\b\u001a\u00020\u00072\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\u000b\u001a\u00020\u00072\u0006\u0010\n\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u000b\u0010\fJ'\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0011\u0010\u0012J;\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u00042\u0012\u0010\u0015\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00010\u0014\"\u00020\u0001H\u0007¢\u0006\u0004\b\u0016\u0010\u0017J/\u0010\u001a\u001a\u00020\u00072\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0019\u001a\u00020\u00182\u0006\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u001a\u0010\u001bJ\u0017\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u001c\u0010\u001dR\u0014\u0010\u001e\u001a\u00020\u00048\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR0\u0010\"\u001a\u001e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040 j\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0004`!8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010#¨\u0006$"}, d2 = {"Lcom/facebook/internal/Logger$Companion;", "", "<init>", "()V", "", "original", "replace", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/lang/String;)V", "accessToken", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)V", "Lcom/facebook/LoggingBehavior;", "behavior", "tag", TypedValues.Custom.S_STRING, "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;)V", "format", "", "args", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/LoggingBehavior;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V", "", HandleInvocationsFromAdViewer.KEY_DOWNLOAD_PRIORITY, "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/LoggingBehavior;ILjava/lang/String;Ljava/lang/String;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Ljava/lang/String;", "LOG_TAG_BASE", "Ljava/lang/String;", "Ljava/util/HashMap;", "Lkotlin/collections/HashMap;", "stringsToReplace", "Ljava/util/HashMap;", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public final synchronized String Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(String str) {
            String str2;
            str2 = str;
            for (Map.Entry entry : Logger.f6764Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.entrySet()) {
                str2 = StringsKt.replace$default(str2, (String) entry.getKey(), (String) entry.getValue(), false, 4, (Object) null);
            }
            return str2;
        }

        @JvmStatic
        public final synchronized void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str, @NotNull String str2) {
            Logger.f6764Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww.put(str, str2);
        }

        @JvmStatic
        public final synchronized void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str) {
            FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
            if (!FacebookSdk.Kkkkkkkkkkkkkkkkkkkkkkkk(LoggingBehavior.INCLUDE_ACCESS_TOKENS)) {
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, "ACCESS_TOKEN_REMOVED");
            }
        }

        @JvmStatic
        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull LoggingBehavior loggingBehavior, @NotNull String str, @NotNull String str2, @NotNull Object... objArr) {
            if (FacebookSdk.Kkkkkkkkkkkkkkkkkkkkkkkk(loggingBehavior)) {
                StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                Object[] copyOf = Arrays.copyOf(objArr, objArr.length);
                Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(loggingBehavior, 3, str, String.format(str2, Arrays.copyOf(copyOf, copyOf.length)));
            }
        }

        @JvmStatic
        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull LoggingBehavior loggingBehavior, @NotNull String str, @NotNull String str2) {
            Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(loggingBehavior, 3, str, str2);
        }

        @JvmStatic
        public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull LoggingBehavior loggingBehavior, int i, @NotNull String str, @NotNull String str2) {
            if (FacebookSdk.Kkkkkkkkkkkkkkkkkkkkkkkk(loggingBehavior)) {
                String Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(str2);
                if (!StringsKt.startsWith$default(str, "FacebookSDK.", false, 2, (Object) null)) {
                    str = Intrinsics.stringPlus("FacebookSDK.", str);
                }
                Log.println(i, str, Wwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
                if (loggingBehavior == LoggingBehavior.DEVELOPER_ERRORS) {
                    new Exception().printStackTrace();
                }
            }
        }

        public Companion() {
        }
    }

    public Logger(@NotNull LoggingBehavior loggingBehavior, @NotNull String str) {
        this.f6768Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = loggingBehavior;
        this.f6767Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Intrinsics.stringPlus("FacebookSDK.", Validate.Wwwwwwwwwwwwwwwwwwwww(str, "tag"));
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        FacebookSdk facebookSdk = FacebookSdk.INSTANCE;
        return FacebookSdk.Kkkkkkkkkkkkkkkkkkkkkkkk(this.f6768Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str) {
        Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f6768Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f6765Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, this.f6767Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww, str);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(this.f6766Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.toString());
        this.f6766Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = new StringBuilder();
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str, @NotNull Object obj) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww("  %s:\t%s\n", str, obj);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str, @NotNull Object... objArr) {
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            StringBuilder sb = this.f6766Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
            StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
            Object[] copyOf = Arrays.copyOf(objArr, objArr.length);
            sb.append(String.format(str, Arrays.copyOf(copyOf, copyOf.length)));
        }
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str) {
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwww()) {
            this.f6766Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.append(str);
        }
    }
}
