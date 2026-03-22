package com.facebook.internal;

import com.facebook.FacebookSdk;
import java.util.Arrays;
import java.util.Collection;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010\u001e\n\u0002\b\u0011\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u000f\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0005\u0010\u0006J\u0015\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00040\u0007H\u0007¢\u0006\u0004\b\b\u0010\tJ\u0015\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00040\u0007H\u0007¢\u0006\u0004\b\n\u0010\tJ\u000f\u0010\u000b\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u000b\u0010\u0006J\u000f\u0010\f\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\f\u0010\u0006J\u000f\u0010\r\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\r\u0010\u0006J\u000f\u0010\u000e\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u000e\u0010\u0006J\u000f\u0010\u000f\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u000f\u0010\u0006J\u000f\u0010\u0010\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0010\u0010\u0006J\u000f\u0010\u0011\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0011\u0010\u0006J\u0017\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0013\u0010\u0014R\u001c\u0010\u0017\u001a\n \u0015*\u0004\u0018\u00010\u00040\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0005\u0010\u0016¨\u0006\u0018"}, d2 = {"Lcom/facebook/internal/ServerProtocol;", "", "<init>", "()V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/String;", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/util/Collection;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "subdomain", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Ljava/lang/String;", "kotlin.jvm.PlatformType", "Ljava/lang/String;", "TAG", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class ServerProtocol {
    @NotNull
    public static final ServerProtocol INSTANCE = new ServerProtocol();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final String f6799Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = ServerProtocol.class.getName();

    @JvmStatic
    @NotNull
    public static final String Wwwwwwwwwwwwwwwwwwwwwwww() {
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        return String.format("m.%s", Arrays.copyOf(new Object[]{FacebookSdk.Wwwwwwwww()}, 1));
    }

    @JvmStatic
    @NotNull
    public static final String Wwwwwwwwwwwwwwwwwwwwwwwww() {
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        return String.format("https://graph-video.%s", Arrays.copyOf(new Object[]{FacebookSdk.Wwwwwwwwww()}, 1));
    }

    @JvmStatic
    @NotNull
    public static final String Wwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str) {
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        return String.format("https://graph.%s", Arrays.copyOf(new Object[]{str}, 1));
    }

    @JvmStatic
    @NotNull
    public static final String Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        return String.format("https://graph.%s", Arrays.copyOf(new Object[]{FacebookSdk.Wwwwwwwwww()}, 1));
    }

    @JvmStatic
    @NotNull
    public static final String Wwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        return String.format("%s", Arrays.copyOf(new Object[]{FacebookSdk.Wwwwwwwwwwww()}, 1));
    }

    @JvmStatic
    @NotNull
    public static final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        return String.format("https://graph.%s", Arrays.copyOf(new Object[]{FacebookSdk.Wwwwwwwwwwwww()}, 1));
    }

    @JvmStatic
    @NotNull
    public static final Collection<String> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return CollectionsKt.listOf((Object[]) new String[]{"access_denied", "OAuthAccessDeniedException"});
    }

    @JvmStatic
    @NotNull
    public static final Collection<String> Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return CollectionsKt.listOf((Object[]) new String[]{"service_disabled", "AndroidAuthKillSwitchException"});
    }

    @JvmStatic
    @NotNull
    public static final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return "CONNECTION_FAILURE";
    }

    @JvmStatic
    @NotNull
    public static final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
        return String.format("m.%s", Arrays.copyOf(new Object[]{FacebookSdk.Wwwwwwwwwwwww()}, 1));
    }

    @JvmStatic
    @NotNull
    public static final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        return "v16.0";
    }
}
