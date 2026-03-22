package dev.fluttercommunity.plus.packageinfo;

import android.content.Context;
import android.content.pm.InstallSourceInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.content.pm.SigningInfo;
import android.os.Build;
import androidx.core.app.NotificationCompat;
import androidx.media3.common.C;
import com.google.common.base.Ascii;
import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.MethodChannel;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import kotlin.Metadata;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u0000 +2\u00020\u00012\u00020\u0002:\u0001+B\u0007¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\n\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\n\u0010\tJ\u001f\u0010\u000f\u001a\u00020\u00072\u0006\u0010\f\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\rH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u0011\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0017\u001a\u00020\u00162\u0006\u0010\u0015\u001a\u00020\u0014H\u0002¢\u0006\u0004\b\u0017\u0010\u0018J\u0019\u0010\u001b\u001a\u0004\u0018\u00010\u00112\u0006\u0010\u001a\u001a\u00020\u0019H\u0002¢\u0006\u0004\b\u001b\u0010\u001cJ\u0017\u0010\u001f\u001a\u00020\u00112\u0006\u0010\u001e\u001a\u00020\u001dH\u0002¢\u0006\u0004\b\u001f\u0010 J\u0017\u0010\"\u001a\u00020\u00112\u0006\u0010!\u001a\u00020\u001dH\u0002¢\u0006\u0004\b\"\u0010 R\u0018\u0010&\u001a\u0004\u0018\u00010#8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010%R\u0018\u0010*\u001a\u0004\u0018\u00010'8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)¨\u0006,"}, d2 = {"Ldev/fluttercommunity/plus/packageinfo/PackageInfoPlugin;", "Lio/flutter/plugin/common/MethodChannel$MethodCallHandler;", "Lio/flutter/embedding/engine/plugins/FlutterPlugin;", "<init>", "()V", "Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;", "binding", "", "onAttachedToEngine", "(Lio/flutter/embedding/engine/plugins/FlutterPlugin$FlutterPluginBinding;)V", "onDetachedFromEngine", "Lio/flutter/plugin/common/MethodCall;", NotificationCompat.CATEGORY_CALL, "Lio/flutter/plugin/common/MethodChannel$Result;", "result", "onMethodCall", "(Lio/flutter/plugin/common/MethodCall;Lio/flutter/plugin/common/MethodChannel$Result;)V", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/String;", "Landroid/content/pm/PackageInfo;", "info", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/pm/PackageInfo;)J", "Landroid/content/pm/PackageManager;", "pm", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/pm/PackageManager;)Ljava/lang/String;", "", "sig", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "([B)Ljava/lang/String;", "bytes", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/content/Context;", "Wwwwwwwwwwwwwwwwwwwwwwwww", "Landroid/content/Context;", "applicationContext", "Lio/flutter/plugin/common/MethodChannel;", "Wwwwwwwwwwwwwwwwwwwwwwww", "Lio/flutter/plugin/common/MethodChannel;", "methodChannel", "Companion", "package_info_plus_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
/* loaded from: classes6.dex */
public final class PackageInfoPlugin implements MethodChannel.MethodCallHandler, FlutterPlugin {
    @NotNull
    public static final Companion Companion = new Companion(null);
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public MethodChannel f11139Wwwwwwwwwwwwwwwwwwwwwwww;
    @Nullable

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public Context f11140Wwwwwwwwwwwwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0006"}, d2 = {"Ldev/fluttercommunity/plus/packageinfo/PackageInfoPlugin$Companion;", "", "<init>", "()V", "CHANNEL_NAME", "", "package_info_plus_release"}, k = 1, mv = {2, 1, 0}, xi = 48)
    /* loaded from: classes6.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        public Companion() {
        }
    }

    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(byte[] bArr) throws NoSuchAlgorithmException {
        MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
        messageDigest.update(bArr);
        return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(messageDigest.digest());
    }

    public final long Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(PackageInfo packageInfo) {
        long longVersionCode;
        if (Build.VERSION.SDK_INT >= 28) {
            longVersionCode = packageInfo.getLongVersionCode();
            return longVersionCode;
        }
        return packageInfo.versionCode;
    }

    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        InstallSourceInfo installSourceInfo;
        String initiatingPackageName;
        PackageManager packageManager = this.f11140Wwwwwwwwwwwwwwwwwwwwwwwww.getPackageManager();
        String packageName = this.f11140Wwwwwwwwwwwwwwwwwwwwwwwww.getPackageName();
        if (Build.VERSION.SDK_INT >= 30) {
            installSourceInfo = packageManager.getInstallSourceInfo(packageName);
            initiatingPackageName = installSourceInfo.getInitiatingPackageName();
            return initiatingPackageName;
        }
        return packageManager.getInstallerPackageName(packageName);
    }

    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(PackageManager packageManager) {
        SigningInfo signingInfo;
        boolean hasMultipleSigners;
        Signature[] signingCertificateHistory;
        Signature[] apkContentsSigners;
        if (Build.VERSION.SDK_INT >= 28) {
            signingInfo = packageManager.getPackageInfo(this.f11140Wwwwwwwwwwwwwwwwwwwwwwwww.getPackageName(), C.BUFFER_FLAG_FIRST_SAMPLE).signingInfo;
            if (signingInfo == null) {
                return null;
            }
            hasMultipleSigners = signingInfo.hasMultipleSigners();
            if (hasMultipleSigners) {
                apkContentsSigners = signingInfo.getApkContentsSigners();
                return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(((Signature) ArraysKt.first(apkContentsSigners)).toByteArray());
            }
            signingCertificateHistory = signingInfo.getSigningCertificateHistory();
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(((Signature) ArraysKt.first(signingCertificateHistory)).toByteArray());
        }
        Signature[] signatureArr = packageManager.getPackageInfo(this.f11140Wwwwwwwwwwwwwwwwwwwwwwwww.getPackageName(), 64).signatures;
        if (signatureArr != null && signatureArr.length != 0 && ArraysKt.first(signatureArr) != null) {
            return Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(((Signature) ArraysKt.first(signatureArr)).toByteArray());
        }
        return null;
    }

    public final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(byte[] bArr) {
        char[] cArr = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
        char[] cArr2 = new char[bArr.length * 2];
        int length = bArr.length;
        for (int i = 0; i < length; i++) {
            byte b = bArr[i];
            int i2 = i * 2;
            cArr2[i2] = cArr[(b & 255) >>> 4];
            cArr2[i2 + 1] = cArr[b & Ascii.SI];
        }
        return new String(cArr2);
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onAttachedToEngine(@NotNull FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        this.f11140Wwwwwwwwwwwwwwwwwwwwwwwww = flutterPluginBinding.getApplicationContext();
        MethodChannel methodChannel = new MethodChannel(flutterPluginBinding.getBinaryMessenger(), "dev.fluttercommunity.plus/package_info");
        this.f11139Wwwwwwwwwwwwwwwwwwwwwwww = methodChannel;
        methodChannel.setMethodCallHandler(this);
    }

    @Override // io.flutter.embedding.engine.plugins.FlutterPlugin
    public void onDetachedFromEngine(@NotNull FlutterPlugin.FlutterPluginBinding flutterPluginBinding) {
        this.f11140Wwwwwwwwwwwwwwwwwwwwwwwww = null;
        this.f11139Wwwwwwwwwwwwwwwwwwwwwwww.setMethodCallHandler(null);
        this.f11139Wwwwwwwwwwwwwwwwwwwwwwww = null;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0054  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0055  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0068 A[Catch: NameNotFoundException -> 0x003d, TryCatch #0 {NameNotFoundException -> 0x003d, blocks: (B:2:0x0000, B:4:0x000a, B:7:0x0030, B:9:0x0036, B:15:0x0040, B:19:0x0056, B:21:0x0068, B:23:0x006f, B:24:0x0074, B:26:0x0078), top: B:30:0x0000 }] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x006f A[Catch: NameNotFoundException -> 0x003d, TryCatch #0 {NameNotFoundException -> 0x003d, blocks: (B:2:0x0000, B:4:0x000a, B:7:0x0030, B:9:0x0036, B:15:0x0040, B:19:0x0056, B:21:0x0068, B:23:0x006f, B:24:0x0074, B:26:0x0078), top: B:30:0x0000 }] */
    @Override // io.flutter.plugin.common.MethodChannel.MethodCallHandler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void onMethodCall(@org.jetbrains.annotations.NotNull io.flutter.plugin.common.MethodCall r8, @org.jetbrains.annotations.NotNull io.flutter.plugin.common.MethodChannel.Result r9) {
        /*
            r7 = this;
            java.lang.String r8 = r8.method     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L3d
            java.lang.String r0 = "getAll"
            boolean r8 = kotlin.jvm.internal.Intrinsics.areEqual(r8, r0)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L3d
            if (r8 == 0) goto L78
            android.content.Context r8 = r7.f11140Wwwwwwwwwwwwwwwwwwwwwwwww     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L3d
            android.content.pm.PackageManager r8 = r8.getPackageManager()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L3d
            android.content.Context r0 = r7.f11140Wwwwwwwwwwwwwwwwwwwwwwwww     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L3d
            java.lang.String r0 = r0.getPackageName()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L3d
            r1 = 0
            android.content.pm.PackageInfo r0 = r8.getPackageInfo(r0, r1)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L3d
            java.lang.String r1 = r7.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r8)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L3d
            java.lang.String r2 = r7.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L3d
            java.util.HashMap r3 = new java.util.HashMap     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L3d
            r3.<init>()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L3d
            java.lang.String r4 = "appName"
            android.content.pm.ApplicationInfo r5 = r0.applicationInfo     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L3d
            java.lang.String r6 = ""
            if (r5 == 0) goto L3f
            java.lang.CharSequence r8 = r5.loadLabel(r8)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L3d
            if (r8 == 0) goto L3f
            java.lang.String r8 = r8.toString()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L3d
            if (r8 != 0) goto L40
            goto L3f
        L3d:
            r8 = move-exception
            goto L7c
        L3f:
            r8 = r6
        L40:
            r3.put(r4, r8)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L3d
            java.lang.String r8 = "packageName"
            android.content.Context r4 = r7.f11140Wwwwwwwwwwwwwwwwwwwwwwwww     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L3d
            java.lang.String r4 = r4.getPackageName()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L3d
            r3.put(r8, r4)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L3d
            java.lang.String r8 = "version"
            java.lang.String r4 = r0.versionName     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L3d
            if (r4 != 0) goto L55
            goto L56
        L55:
            r6 = r4
        L56:
            r3.put(r8, r6)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L3d
            java.lang.String r8 = "buildNumber"
            long r4 = r7.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(r0)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L3d
            java.lang.String r0 = java.lang.String.valueOf(r4)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L3d
            r3.put(r8, r0)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L3d
            if (r1 == 0) goto L6d
            java.lang.String r8 = "buildSignature"
            r3.put(r8, r1)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L3d
        L6d:
            if (r2 == 0) goto L74
            java.lang.String r8 = "installerStore"
            r3.put(r8, r2)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L3d
        L74:
            r9.success(r3)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L3d
            return
        L78:
            r9.notImplemented()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L3d
            return
        L7c:
            java.lang.String r8 = r8.getMessage()
            r0 = 0
            java.lang.String r1 = "Name not found"
            r9.error(r1, r8, r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: dev.fluttercommunity.plus.packageinfo.PackageInfoPlugin.onMethodCall(io.flutter.plugin.common.MethodCall, io.flutter.plugin.common.MethodChannel$Result):void");
    }
}
