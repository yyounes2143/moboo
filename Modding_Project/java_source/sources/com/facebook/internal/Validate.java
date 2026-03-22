package com.facebook.internal;

import android.annotation.SuppressLint;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import androidx.media3.extractor.text.ttml.TtmlNode;
import com.facebook.FacebookSdk;
import com.facebook.FacebookSdkNotInitializedException;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.StringCompanionObject;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u001e\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\r\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J!\u0010\b\u001a\u00020\u00072\b\u0010\u0004\u001a\u0004\u0018\u00010\u00012\u0006\u0010\u0006\u001a\u00020\u0005H\u0007¢\u0006\u0004\b\b\u0010\tJ+\u0010\r\u001a\u00020\u0007\"\u0004\b\u0000\u0010\n2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\u000b2\u0006\u0010\u0006\u001a\u00020\u0005H\u0007¢\u0006\u0004\b\r\u0010\u000eJ+\u0010\u000f\u001a\u00020\u0007\"\u0004\b\u0000\u0010\n2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\u000b2\u0006\u0010\u0006\u001a\u00020\u0005H\u0007¢\u0006\u0004\b\u000f\u0010\u000eJ+\u0010\u0010\u001a\u00020\u0007\"\u0004\b\u0000\u0010\n2\f\u0010\f\u001a\b\u0012\u0004\u0012\u00028\u00000\u000b2\u0006\u0010\u0006\u001a\u00020\u0005H\u0007¢\u0006\u0004\b\u0010\u0010\u000eJ!\u0010\u0011\u001a\u00020\u00052\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0007¢\u0006\u0004\b\u0011\u0010\u0012J\u001f\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H\u0007¢\u0006\u0004\b\u0013\u0010\u0014J\u000f\u0010\u0015\u001a\u00020\u0007H\u0007¢\u0006\u0004\b\u0015\u0010\u0003J\u000f\u0010\u0016\u001a\u00020\u0005H\u0007¢\u0006\u0004\b\u0016\u0010\u0017J\u000f\u0010\u0018\u001a\u00020\u0005H\u0007¢\u0006\u0004\b\u0018\u0010\u0017J\u0017\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u0019H\u0007¢\u0006\u0004\b\u001b\u0010\u001cJ\u001f\u0010\u001f\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001e\u001a\u00020\u001dH\u0007¢\u0006\u0004\b\u001f\u0010 J\u0017\u0010!\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u0019H\u0007¢\u0006\u0004\b!\u0010\u001cJ\u001f\u0010\"\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010\u001e\u001a\u00020\u001dH\u0007¢\u0006\u0004\b\"\u0010 J\u001f\u0010$\u001a\u00020\u001d2\u0006\u0010\u001a\u001a\u00020\u00192\u0006\u0010#\u001a\u00020\u0005H\u0007¢\u0006\u0004\b$\u0010%J\u0017\u0010&\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00020\u0019H\u0007¢\u0006\u0004\b&\u0010\u001cR\u001c\u0010)\u001a\n '*\u0004\u0018\u00010\u00050\u00058\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000f\u0010(¨\u0006*"}, d2 = {"Lcom/facebook/internal/Validate;", "", "<init>", "()V", "arg", "", "name", "", "Wwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/Object;Ljava/lang/String;)V", "T", "", TtmlNode.RUBY_CONTAINER, "Wwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/util/Collection;Ljava/lang/String;)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/lang/String;)V", "Wwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/String;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/content/Context;", "context", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;)V", "", "shouldThrow", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;Z)V", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "redirectURI", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;Ljava/lang/String;)Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "kotlin.jvm.PlatformType", "Ljava/lang/String;", "TAG", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class Validate {
    @NotNull
    public static final Validate INSTANCE = new Validate();

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final String f6813Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = Validate.class.getName();

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwww() {
        if (FacebookSdk.Kkkkkkkkkkkkkkkkkkkkkkkkkk()) {
            return;
        }
        throw new FacebookSdkNotInitializedException("The SDK has not been initialized, make sure to call FacebookSdk.sdkInitialize() first.");
    }

    @JvmStatic
    @NotNull
    public static final String Wwwwwwwwwwwwwwwwwwwww(@Nullable String str, @NotNull String str2) {
        boolean z;
        if (str != null && str.length() > 0) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            return str;
        }
        throw new IllegalArgumentException(("Argument '" + str2 + "' cannot be null or empty").toString());
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwwwww(@Nullable Object obj, @NotNull String str) {
        if (obj != null) {
            return;
        }
        throw new NullPointerException("Argument '" + str + "' cannot be null");
    }

    @JvmStatic
    public static final <T> void Wwwwwwwwwwwwwwwwwwwwwww(@NotNull Collection<? extends T> collection, @NotNull String str) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(collection, str);
        Wwwwwwwwwwwwwwwwwwwwwwww(collection, str);
    }

    @JvmStatic
    public static final <T> void Wwwwwwwwwwwwwwwwwwwwwwww(@NotNull Collection<? extends T> collection, @NotNull String str) {
        if (!collection.isEmpty()) {
            return;
        }
        throw new IllegalArgumentException(("Container '" + str + "' cannot be empty").toString());
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str, @NotNull String str2) {
        boolean z;
        if (str.length() > 0) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            return;
        }
        throw new IllegalArgumentException(("Argument '" + str2 + "' cannot be empty").toString());
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context, boolean z) {
        if (context.checkCallingOrSelfPermission("android.permission.INTERNET") != -1 || !z) {
            return;
        }
        throw new IllegalStateException("No internet permissions granted for the app, please add <uses-permission android:name=\"android.permission.INTERNET\" /> to your AndroidManifest.xml.");
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context) {
        Wwwwwwwwwwwwwwwwwwwwwwwwww(context, true);
    }

    @JvmStatic
    @SuppressLint({"WrongConstant"})
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context, boolean z) {
        ActivityInfo activityInfo;
        PackageManager packageManager = context.getPackageManager();
        if (packageManager != null) {
            try {
                activityInfo = packageManager.getActivityInfo(new ComponentName(context, "com.facebook.FacebookActivity"), 1);
            } catch (PackageManager.NameNotFoundException unused) {
            }
            if (activityInfo != null && z) {
                throw new IllegalStateException("FacebookActivity is not declared in the AndroidManifest.xml. If you are using the facebook-common module or dependent modules please add com.facebook.FacebookActivity to your AndroidManifest.xml file. See https://developers.facebook.com/docs/android/getting-started for more info.");
            }
        }
        activityInfo = null;
        if (activityInfo != null) {
        }
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context) {
        Wwwwwwwwwwwwwwwwwwwwwwwwwwww(context, true);
    }

    @JvmStatic
    public static final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context, @NotNull String str) {
        List<ResolveInfo> list;
        PackageManager packageManager = context.getPackageManager();
        if (packageManager != null) {
            Intent intent = new Intent();
            intent.setAction("android.intent.action.VIEW");
            intent.addCategory("android.intent.category.DEFAULT");
            intent.addCategory("android.intent.category.BROWSABLE");
            intent.setData(Uri.parse(str));
            list = packageManager.queryIntentActivities(intent, 64);
        } else {
            list = null;
        }
        if (list == null) {
            return false;
        }
        boolean z = false;
        for (ResolveInfo resolveInfo : list) {
            ActivityInfo activityInfo = resolveInfo.activityInfo;
            if (!Intrinsics.areEqual(activityInfo.name, "com.facebook.CustomTabActivity") || !Intrinsics.areEqual(activityInfo.packageName, context.getPackageName())) {
                return false;
            }
            z = true;
        }
        return z;
    }

    @JvmStatic
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context) {
        String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww();
        PackageManager packageManager = context.getPackageManager();
        if (packageManager != null) {
            String stringPlus = Intrinsics.stringPlus("com.facebook.app.FacebookContentProvider", Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2);
            if (packageManager.resolveContentProvider(stringPlus, 0) == null) {
                StringCompanionObject stringCompanionObject = StringCompanionObject.INSTANCE;
                throw new IllegalStateException(String.format("A ContentProvider for this app was not set up in the AndroidManifest.xml, please add %s as a provider to your AndroidManifest.xml file. See https://developers.facebook.com/docs/sharing/android for more info.", Arrays.copyOf(new Object[]{stringPlus}, 1)).toString());
            }
        }
    }

    @JvmStatic
    @NotNull
    public static final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        String Wwwwwwwwwwwwwwww2 = FacebookSdk.Wwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwww2 != null) {
            return Wwwwwwwwwwwwwwww2;
        }
        throw new IllegalStateException("No Client Token found, please set the Client Token. Please follow https://developers.facebook.com/docs/android/getting-started/#client-access-token to get the token and fill it in AndroidManifest.xml");
    }

    @JvmStatic
    @NotNull
    public static final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        String Wwwwwwwwwwwwwwwwwwwwww2 = FacebookSdk.Wwwwwwwwwwwwwwwwwwwwww();
        if (Wwwwwwwwwwwwwwwwwwwwww2 != null) {
            return Wwwwwwwwwwwwwwwwwwwwww2;
        }
        throw new IllegalStateException("No App ID found, please set the App ID.");
    }

    @JvmStatic
    public static final <T> void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Collection<? extends T> collection, @NotNull String str) {
        for (T t : collection) {
            if (t == null) {
                throw new NullPointerException("Container '" + str + "' cannot contain null values");
            }
        }
    }
}
