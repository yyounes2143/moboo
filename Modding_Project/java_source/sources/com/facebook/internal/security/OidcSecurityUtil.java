package com.facebook.internal.security;

import android.util.Base64;
import com.facebook.FacebookSdk;
import com.facebook.internal.security.OidcSecurityUtil;
import com.unity3d.ads.metadata.InAppPurchaseMetaData;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.security.KeyFactory;
import java.security.PublicKey;
import java.security.Signature;
import java.security.spec.X509EncodedKeySpec;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.io.TextStreamsKt;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
import org.json.JSONObject;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\b\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0006\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\b\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\n\u0010\u000bJ'\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\f\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0010\u0010\u0011R\u001a\u0010\u0016\u001a\u00020\u00048\u0006X\u0086D¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015¨\u0006\u0017"}, d2 = {"Lcom/facebook/internal/security/OidcSecurityUtil;", "", "<init>", "()V", "", "kid", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Ljava/lang/String;", "key", "Ljava/security/PublicKey;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Ljava/security/PublicKey;", "publicKey", "data", InAppPurchaseMetaData.KEY_SIGNATURE, "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "Ljava/lang/String;", "getOPENID_KEYS_PATH", "()Ljava/lang/String;", "OPENID_KEYS_PATH", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class OidcSecurityUtil {
    @NotNull
    public static final OidcSecurityUtil INSTANCE = new OidcSecurityUtil();
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww  reason: collision with root package name */
    public static final String f6912Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww = "/.well-known/oauth/openid/keys/";

    @JvmStatic
    public static final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull PublicKey publicKey, @NotNull String str, @NotNull String str2) {
        try {
            Signature signature = Signature.getInstance("SHA256withRSA");
            signature.initVerify(publicKey);
            signature.update(str.getBytes(Charsets.UTF_8));
            return signature.verify(Base64.decode(str2, 8));
        } catch (Exception unused) {
            return false;
        }
    }

    /* JADX WARN: Type inference failed for: r5v2, types: [T, java.lang.String] */
    public static final void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(URL url, Ref.ObjectRef objectRef, String str, ReentrantLock reentrantLock, Condition condition) {
        URLConnection openConnection = url.openConnection();
        if (openConnection != null) {
            HttpURLConnection httpURLConnection = (HttpURLConnection) openConnection;
            try {
                try {
                    String readText = TextStreamsKt.readText(new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream(), Charsets.UTF_8), 8192));
                    httpURLConnection.getInputStream().close();
                    objectRef.element = new JSONObject(readText).optString(str);
                    httpURLConnection.disconnect();
                    reentrantLock.lock();
                    try {
                        condition.signal();
                        Unit unit = Unit.INSTANCE;
                        return;
                    } finally {
                    }
                } catch (Exception e) {
                    INSTANCE.getClass();
                    e.getMessage();
                    httpURLConnection.disconnect();
                    reentrantLock.lock();
                    try {
                        condition.signal();
                        Unit unit2 = Unit.INSTANCE;
                        return;
                    } finally {
                    }
                }
            } catch (Throwable th) {
                httpURLConnection.disconnect();
                reentrantLock.lock();
                try {
                    condition.signal();
                    Unit unit3 = Unit.INSTANCE;
                    throw th;
                } finally {
                }
            }
        }
        throw new NullPointerException("null cannot be cast to non-null type java.net.HttpURLConnection");
    }

    @JvmStatic
    @Nullable
    public static final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull final String str) {
        final URL url = new URL("https", Intrinsics.stringPlus("www.", FacebookSdk.Wwwwwwwwwwwww()), f6912Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww);
        final ReentrantLock reentrantLock = new ReentrantLock();
        final Condition newCondition = reentrantLock.newCondition();
        final Ref.ObjectRef objectRef = new Ref.ObjectRef();
        FacebookSdk.Wwwwwwwwwwwwww().execute(new Runnable() { // from class: Kkkkkkkkkkkkkkkkkkkkkkkkkk.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww
            @Override // java.lang.Runnable
            public final void run() {
                OidcSecurityUtil.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(url, objectRef, str, reentrantLock, newCondition);
            }
        });
        reentrantLock.lock();
        try {
            newCondition.await(5000L, TimeUnit.MILLISECONDS);
            reentrantLock.unlock();
            return (String) objectRef.element;
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    @JvmStatic
    @NotNull
    public static final PublicKey Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str) {
        return KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64.decode(StringsKt.replace$default(StringsKt.replace$default(StringsKt.replace$default(str, "\n", "", false, 4, (Object) null), "-----BEGIN PUBLIC KEY-----", "", false, 4, (Object) null), "-----END PUBLIC KEY-----", "", false, 4, (Object) null), 0)));
    }
}
