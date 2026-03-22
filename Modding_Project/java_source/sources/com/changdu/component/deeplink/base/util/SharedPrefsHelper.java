package com.changdu.component.deeplink.base.util;

import android.content.Context;
import android.content.SharedPreferences;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB!\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\b\b\u0002\u0010\u0007\u001a\u00020\u0006¢\u0006\u0004\b\b\u0010\tJ\u001d\u0010\r\u001a\u00020\f2\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u0004¢\u0006\u0004\b\r\u0010\u000eJ\u001f\u0010\u0010\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00042\b\b\u0002\u0010\u000f\u001a\u00020\u0004¢\u0006\u0004\b\u0010\u0010\u0011J\u001d\u0010\u0013\u001a\u00020\f2\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u0012¢\u0006\u0004\b\u0013\u0010\u0014J\u001f\u0010\u0015\u001a\u00020\u00122\u0006\u0010\n\u001a\u00020\u00042\b\b\u0002\u0010\u000f\u001a\u00020\u0012¢\u0006\u0004\b\u0015\u0010\u0016J\u0015\u0010\u0017\u001a\u00020\f2\u0006\u0010\n\u001a\u00020\u0004¢\u0006\u0004\b\u0017\u0010\u0018R\u0017\u0010\u001d\u001a\u00020\u00198\u0006¢\u0006\f\n\u0004\b\u0010\u0010\u001a\u001a\u0004\b\u001b\u0010\u001c¨\u0006\u001f"}, d2 = {"Lcom/changdu/component/deeplink/base/util/SharedPrefsHelper;", "", "Landroid/content/Context;", "context", "", "name", "", "mode", "<init>", "(Landroid/content/Context;Ljava/lang/String;I)V", "key", "value", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/lang/String;)V", "defaultValue", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Z)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Z)Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)V", "Landroid/content/SharedPreferences$Editor;", "Landroid/content/SharedPreferences$Editor;", "getEditor", "()Landroid/content/SharedPreferences$Editor;", "editor", "Companion", "deeplink-base_release"}, k = 1, mv = {1, 9, 0})
/* loaded from: classes3.dex */
public final class SharedPrefsHelper {
    @NotNull
    public static final Companion Companion = new Companion(null);

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final SharedPreferences.Editor f5323Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public final SharedPreferences f5324Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\n\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001¨\u0006\u0002"}, d2 = {"Lcom/changdu/component/deeplink/base/util/SharedPrefsHelper$Companion;", "", "deeplink-base_release"}, k = 1, mv = {1, 9, 0})
    /* loaded from: classes3.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    public SharedPrefsHelper(@NotNull Context context, @NotNull String str, int i) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(str, i);
        this.f5324Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = sharedPreferences;
        this.f5323Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = sharedPreferences.edit();
    }

    public static /* synthetic */ String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(SharedPrefsHelper sharedPrefsHelper, String str, String str2, int i, Object obj) {
        if ((i & 2) != 0) {
            str2 = "";
        }
        return sharedPrefsHelper.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str, str2);
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str) {
        this.f5323Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.remove(str).commit();
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str, @NotNull String str2) {
        this.f5323Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.putString(str, str2).commit();
    }

    public final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str, boolean z) {
        this.f5323Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.putBoolean(str, z).commit();
    }

    @NotNull
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str, @NotNull String str2) {
        String string = this.f5324Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getString(str, str2);
        if (string == null) {
            return "";
        }
        return string;
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str, boolean z) {
        return this.f5324Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww.getBoolean(str, z);
    }

    public /* synthetic */ SharedPrefsHelper(Context context, String str, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, str, (i2 & 4) != 0 ? 0 : i);
    }
}
