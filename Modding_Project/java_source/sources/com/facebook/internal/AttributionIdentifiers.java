package com.facebook.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import androidx.annotation.RestrictTo;
import androidx.core.app.NotificationCompat;
import com.facebook.FacebookSdk;
import java.lang.reflect.Method;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u000b\n\u0002\u0010\u000b\n\u0002\b\u000b\u0018\u0000 \u001c2\u00020\u0001:\u0003\u001c\u001d\u001eB\u0007¢\u0006\u0004\b\u0002\u0010\u0003R\u0018\u0010\u0007\u001a\u0004\u0018\u00010\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0005\u0010\u0006R\u0016\u0010\u000b\u001a\u00020\b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\t\u0010\nR(\u0010\u0010\u001a\u0004\u0018\u00010\u00042\b\u0010\f\u001a\u0004\u0018\u00010\u00048\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\r\u0010\u0006\u001a\u0004\b\u000e\u0010\u000fR(\u0010\u0013\u001a\u0004\u0018\u00010\u00042\b\u0010\f\u001a\u0004\u0018\u00010\u00048\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u0011\u0010\u0006\u001a\u0004\b\u0012\u0010\u000fR$\u0010\u0019\u001a\u00020\u00142\u0006\u0010\f\u001a\u00020\u00148\u0006@BX\u0086\u000e¢\u0006\f\n\u0004\b\u0015\u0010\u0016\u001a\u0004\b\u0017\u0010\u0018R\u0013\u0010\u001b\u001a\u0004\u0018\u00010\u00048F¢\u0006\u0006\u001a\u0004\b\u001a\u0010\u000f¨\u0006\u001f"}, d2 = {"Lcom/facebook/internal/AttributionIdentifiers;", "", "<init>", "()V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "androidAdvertiserIdValue", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "J", "fetchTime", "<set-?>", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/String;", "attributionId", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwww", "androidInstallerPackage", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Z", "Wwwwwwwwwwwwwwwwwwwwwww", "()Z", "isTrackingLimited", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "androidAdvertiserId", "Companion", "GoogleAdInfo", "GoogleAdServiceConnection", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class AttributionIdentifiers {
    @JvmField
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static AttributionIdentifiers f6620Wwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public boolean f6622Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public String f6623Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public String f6624Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public long f6625Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public String f6626Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    @NotNull
    public static final Companion Companion = new Companion(null);

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final String f6621Wwwwwwwwwwwwwwwwwwwwwwwwwwwww = AttributionIdentifiers.class.getCanonicalName();

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0010\u000e\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0017\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u0019\u0010\n\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\n\u0010\u000bJ\u0017\u0010\f\u001a\u00020\t2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\f\u0010\u000bJ\u0019\u0010\r\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\r\u0010\u000bJ\u0017\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u000e\u0010\bJ\u0019\u0010\u000f\u001a\u0004\u0018\u00010\t2\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u000f\u0010\u000bJ\u0017\u0010\u0011\u001a\u00020\t2\u0006\u0010\u0010\u001a\u00020\tH\u0002¢\u0006\u0004\b\u0011\u0010\u0012J\u0019\u0010\u0014\u001a\u0004\u0018\u00010\u00132\u0006\u0010\u0005\u001a\u00020\u0004H\u0002¢\u0006\u0004\b\u0014\u0010\u0015R\u0014\u0010\u0016\u001a\u00020\u00138\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0014\u0010\u0018\u001a\u00020\u00138\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0018\u0010\u0017R\u0014\u0010\u0019\u001a\u00020\u00138\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0019\u0010\u0017R\u0014\u0010\u001b\u001a\u00020\u001a8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001b\u0010\u001cR\u0014\u0010\u001e\u001a\u00020\u001d8\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0014\u0010 \u001a\u00020\u00138\u0002X\u0082T¢\u0006\u0006\n\u0004\b \u0010\u0017R\u001c\u0010\"\u001a\n !*\u0004\u0018\u00010\u00130\u00138\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010\u0017¨\u0006#"}, d2 = {"Lcom/facebook/internal/AttributionIdentifiers$Companion;", "", "<init>", "()V", "Landroid/content/Context;", "context", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;)Z", "Lcom/facebook/internal/AttributionIdentifiers;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;)Lcom/facebook/internal/AttributionIdentifiers;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwww", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "identifiers", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/internal/AttributionIdentifiers;)Lcom/facebook/internal/AttributionIdentifiers;", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;)Ljava/lang/String;", "ANDROID_ID_COLUMN_NAME", "Ljava/lang/String;", "ATTRIBUTION_ID_COLUMN_NAME", "ATTRIBUTION_ID_CONTENT_PROVIDER_WAKIZASHI", "", "CONNECTION_RESULT_SUCCESS", "I", "", "IDENTIFIER_REFRESH_INTERVAL_MILLIS", "J", "LIMIT_TRACKING_COLUMN_NAME", "kotlin.jvm.PlatformType", "TAG", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context) {
            AttributionIdentifiers Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context);
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 != null && Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww2.Wwwwwwwwwwwwwwwwwwwwwww()) {
                return true;
            }
            return false;
        }

        public final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context) {
            Method Kkkkkkkkkkkkkkkkkkkk2 = Utility.Kkkkkkkkkkkkkkkkkkkk("com.google.android.gms.common.GooglePlayServicesUtil", "isGooglePlayServicesAvailable", Context.class);
            if (Kkkkkkkkkkkkkkkkkkkk2 == null) {
                return false;
            }
            Object Kkkkkkkkkkk2 = Utility.Kkkkkkkkkkk(null, Kkkkkkkkkkkkkkkkkkkk2, context);
            if ((Kkkkkkkkkkk2 instanceof Integer) && Intrinsics.areEqual(Kkkkkkkkkkk2, (Object) 0)) {
                return true;
            }
            return false;
        }

        public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context) {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null) {
                return null;
            }
            return packageManager.getInstallerPackageName(context.getPackageName());
        }

        /* JADX WARN: Removed duplicated region for block: B:27:0x007e A[Catch: all -> 0x002e, Exception -> 0x0032, TryCatch #4 {Exception -> 0x0032, all -> 0x002e, blocks: (B:3:0x000b, B:5:0x0019, B:7:0x001d, B:14:0x0037, B:16:0x0052, B:18:0x005c, B:25:0x0078, B:27:0x007e, B:29:0x0083, B:31:0x0088, B:21:0x0066, B:23:0x0070, B:54:0x00e7, B:55:0x00ee), top: B:70:0x000b }] */
        /* JADX WARN: Removed duplicated region for block: B:29:0x0083 A[Catch: all -> 0x002e, Exception -> 0x0032, TryCatch #4 {Exception -> 0x0032, all -> 0x002e, blocks: (B:3:0x000b, B:5:0x0019, B:7:0x001d, B:14:0x0037, B:16:0x0052, B:18:0x005c, B:25:0x0078, B:27:0x007e, B:29:0x0083, B:31:0x0088, B:21:0x0066, B:23:0x0070, B:54:0x00e7, B:55:0x00ee), top: B:70:0x000b }] */
        /* JADX WARN: Removed duplicated region for block: B:31:0x0088 A[Catch: all -> 0x002e, Exception -> 0x0032, TRY_LEAVE, TryCatch #4 {Exception -> 0x0032, all -> 0x002e, blocks: (B:3:0x000b, B:5:0x0019, B:7:0x001d, B:14:0x0037, B:16:0x0052, B:18:0x005c, B:25:0x0078, B:27:0x007e, B:29:0x0083, B:31:0x0088, B:21:0x0066, B:23:0x0070, B:54:0x00e7, B:55:0x00ee), top: B:70:0x000b }] */
        /* JADX WARN: Removed duplicated region for block: B:65:0x010b  */
        @kotlin.jvm.JvmStatic
        @org.jetbrains.annotations.Nullable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final com.facebook.internal.AttributionIdentifiers Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@org.jetbrains.annotations.NotNull android.content.Context r12) {
            /*
                Method dump skipped, instructions count: 271
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.facebook.internal.AttributionIdentifiers.Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(android.content.Context):com.facebook.internal.AttributionIdentifiers");
        }

        public final AttributionIdentifiers Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context) {
            if (!Wwwwwwwwwwwwwwwwwwwwwwwwwwww(context)) {
                return null;
            }
            GoogleAdServiceConnection googleAdServiceConnection = new GoogleAdServiceConnection();
            Intent intent = new Intent("com.google.android.gms.ads.identifier.service.START");
            intent.setPackage("com.google.android.gms");
            try {
                try {
                    if (context.bindService(intent, googleAdServiceConnection, 1)) {
                        GoogleAdInfo googleAdInfo = new GoogleAdInfo(googleAdServiceConnection.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww());
                        AttributionIdentifiers attributionIdentifiers = new AttributionIdentifiers();
                        attributionIdentifiers.f6626Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = googleAdInfo.Kkkkkkkkkk();
                        attributionIdentifiers.f6622Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = googleAdInfo.Kkkkkkkkk();
                        return attributionIdentifiers;
                    }
                } catch (Exception e) {
                    Utility.Illlllllllllllllllllllll("android_id", e);
                } finally {
                    context.unbindService(googleAdServiceConnection);
                }
            } catch (SecurityException unused) {
            }
            return null;
        }

        public final AttributionIdentifiers Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context) {
            Method Kkkkkkkkkkkkkkkkkkkk2;
            Object Kkkkkkkkkkk2;
            boolean z = false;
            try {
                if (!Wwwwwwwwwwwwwwwwwwwwwwwwwwww(context) || (Kkkkkkkkkkkkkkkkkkkk2 = Utility.Kkkkkkkkkkkkkkkkkkkk("com.google.android.gms.ads.identifier.AdvertisingIdClient", "getAdvertisingIdInfo", Context.class)) == null || (Kkkkkkkkkkk2 = Utility.Kkkkkkkkkkk(null, Kkkkkkkkkkkkkkkkkkkk2, context)) == null) {
                    return null;
                }
                Method Kkkkkkkkkkkkkkkkkkkkk2 = Utility.Kkkkkkkkkkkkkkkkkkkkk(Kkkkkkkkkkk2.getClass(), "getId", new Class[0]);
                Method Kkkkkkkkkkkkkkkkkkkkk3 = Utility.Kkkkkkkkkkkkkkkkkkkkk(Kkkkkkkkkkk2.getClass(), "isLimitAdTrackingEnabled", new Class[0]);
                if (Kkkkkkkkkkkkkkkkkkkkk2 != null && Kkkkkkkkkkkkkkkkkkkkk3 != null) {
                    AttributionIdentifiers attributionIdentifiers = new AttributionIdentifiers();
                    attributionIdentifiers.f6626Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = (String) Utility.Kkkkkkkkkkk(Kkkkkkkkkkk2, Kkkkkkkkkkkkkkkkkkkkk2, new Object[0]);
                    Boolean bool = (Boolean) Utility.Kkkkkkkkkkk(Kkkkkkkkkkk2, Kkkkkkkkkkkkkkkkkkkkk3, new Object[0]);
                    if (bool != null) {
                        z = bool.booleanValue();
                    }
                    attributionIdentifiers.f6622Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww = z;
                    return attributionIdentifiers;
                }
                return null;
            } catch (Exception e) {
                Utility.Illlllllllllllllllllllll("android_id", e);
                return null;
            }
        }

        public final AttributionIdentifiers Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(Context context) {
            AttributionIdentifiers Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context);
            if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                AttributionIdentifiers Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 = Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context);
                if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2 == null) {
                    return new AttributionIdentifiers();
                }
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
            }
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww2;
        }

        public final AttributionIdentifiers Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(AttributionIdentifiers attributionIdentifiers) {
            attributionIdentifiers.f6625Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = System.currentTimeMillis();
            AttributionIdentifiers.f6620Wwwwwwwwwwwwwwwwwwwwwwwwwwww = attributionIdentifiers;
            return attributionIdentifiers;
        }

        public Companion() {
        }
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0005\b\u0002\u0018\u0000 \u00122\u00020\u0001:\u0001\u0012B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0006\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0006\u0010\u0007R\u0014\u0010\u0003\u001a\u00020\u00028\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0013\u0010\r\u001a\u0004\u0018\u00010\n8F¢\u0006\u0006\u001a\u0004\b\u000b\u0010\fR\u0011\u0010\u0011\u001a\u00020\u000e8F¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0013"}, d2 = {"Lcom/facebook/internal/AttributionIdentifiers$GoogleAdInfo;", "Landroid/os/IInterface;", "Landroid/os/IBinder;", "binder", "<init>", "(Landroid/os/IBinder;)V", "asBinder", "()Landroid/os/IBinder;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/os/IBinder;", "", "Kkkkkkkkkk", "()Ljava/lang/String;", "advertiserId", "", "Kkkkkkkkk", "()Z", "isTrackingLimited", "Companion", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class GoogleAdInfo implements IInterface {
        @NotNull
        public static final Companion Companion = new Companion(null);
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final IBinder f6627Wwwwwwwwwwwwwwwwwwwwwwwww;

        /* compiled from: Proguard */
        @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Lcom/facebook/internal/AttributionIdentifiers$GoogleAdInfo$Companion;", "", "()V", "FIRST_TRANSACTION_CODE", "", "SECOND_TRANSACTION_CODE", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
        /* loaded from: classes4.dex */
        public static final class Companion {
            public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
                this();
            }

            public Companion() {
            }
        }

        public GoogleAdInfo(@NotNull IBinder iBinder) {
            this.f6627Wwwwwwwwwwwwwwwwwwwwwwwww = iBinder;
        }

        public final boolean Kkkkkkkkk() throws RemoteException {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                boolean z = true;
                obtain.writeInt(1);
                this.f6627Wwwwwwwwwwwwwwwwwwwwwwwww.transact(2, obtain, obtain2, 0);
                obtain2.readException();
                if (obtain2.readInt() == 0) {
                    z = false;
                }
                return z;
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }

        @Nullable
        public final String Kkkkkkkkkk() throws RemoteException {
            Parcel obtain = Parcel.obtain();
            Parcel obtain2 = Parcel.obtain();
            try {
                obtain.writeInterfaceToken("com.google.android.gms.ads.identifier.internal.IAdvertisingIdService");
                this.f6627Wwwwwwwwwwwwwwwwwwwwwwwww.transact(1, obtain, obtain2, 0);
                obtain2.readException();
                return obtain2.readString();
            } finally {
                obtain2.recycle();
                obtain.recycle();
            }
        }

        @Override // android.os.IInterface
        @NotNull
        public IBinder asBinder() {
            return this.f6627Wwwwwwwwwwwwwwwwwwwwwwwww;
        }
    }

    @JvmStatic
    @Nullable
    public static final AttributionIdentifiers Wwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context) {
        return Companion.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(context);
    }

    public final boolean Wwwwwwwwwwwwwwwwwwwwwww() {
        return this.f6622Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final String Wwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f6624Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwww() {
        return this.f6623Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
    }

    @Nullable
    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwww() {
        if (FacebookSdk.Kkkkkkkkkkkkkkkkkkkkkkkkkk() && FacebookSdk.Wwwwwwwwwwwwwwwwwwwwwwww()) {
            return this.f6626Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww;
        }
        return null;
    }

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\u0002\u0010\u0003J#\u0010\t\u001a\u00020\b2\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016¢\u0006\u0004\b\t\u0010\nJ\u0019\u0010\u000b\u001a\u00020\b2\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016¢\u0006\u0004\b\u000b\u0010\fR\u0014\u0010\u0010\u001a\u00020\r8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000e\u0010\u000fR\u001a\u0010\u0014\u001a\b\u0012\u0004\u0012\u00020\u00060\u00118\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0011\u0010\u0017\u001a\u00020\u00068F¢\u0006\u0006\u001a\u0004\b\u0015\u0010\u0016¨\u0006\u0018"}, d2 = {"Lcom/facebook/internal/AttributionIdentifiers$GoogleAdServiceConnection;", "Landroid/content/ServiceConnection;", "<init>", "()V", "Landroid/content/ComponentName;", "name", "Landroid/os/IBinder;", NotificationCompat.CATEGORY_SERVICE, "", "onServiceConnected", "(Landroid/content/ComponentName;Landroid/os/IBinder;)V", "onServiceDisconnected", "(Landroid/content/ComponentName;)V", "Ljava/util/concurrent/atomic/AtomicBoolean;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/concurrent/atomic/AtomicBoolean;", "consumed", "Ljava/util/concurrent/BlockingQueue;", "Wwwwwwwwwwwwwwwwwwwwwwww", "Ljava/util/concurrent/BlockingQueue;", "queue", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Landroid/os/IBinder;", "binder", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class GoogleAdServiceConnection implements ServiceConnection {
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final AtomicBoolean f6629Wwwwwwwwwwwwwwwwwwwwwwwww = new AtomicBoolean(false);
        @NotNull

        /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
        public final BlockingQueue<IBinder> f6628Wwwwwwwwwwwwwwwwwwwwwwww = new LinkedBlockingDeque();

        @NotNull
        public final IBinder Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() throws InterruptedException {
            if (!this.f6629Wwwwwwwwwwwwwwwwwwwwwwwww.compareAndSet(true, true)) {
                return this.f6628Wwwwwwwwwwwwwwwwwwwwwwww.take();
            }
            throw new IllegalStateException("Binder already consumed");
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(@Nullable ComponentName componentName, @Nullable IBinder iBinder) {
            if (iBinder != null) {
                try {
                    this.f6628Wwwwwwwwwwwwwwwwwwwwwwww.put(iBinder);
                } catch (InterruptedException unused) {
                }
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(@Nullable ComponentName componentName) {
        }
    }
}
