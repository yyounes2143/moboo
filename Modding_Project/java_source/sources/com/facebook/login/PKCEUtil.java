package com.facebook.login;

import android.os.Bundle;
import android.util.Base64;
import com.facebook.FacebookException;
import com.facebook.FacebookSdk;
import com.facebook.GraphRequest;
import com.facebook.HttpMethod;
import java.security.MessageDigest;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.JvmStatic;
import kotlin.random.Random;
import kotlin.ranges.CharRange;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import kotlin.text.Charsets;
import kotlin.text.Regex;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\bÀ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003J\u0019\u0010\u0007\u001a\u00020\u00062\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0007¢\u0006\u0004\b\u0007\u0010\bJ\u000f\u0010\t\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\t\u0010\nJ\u001f\u0010\r\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u000bH\u0007¢\u0006\u0004\b\r\u0010\u000eJ'\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0004H\u0007¢\u0006\u0004\b\u0012\u0010\u0013¨\u0006\u0014"}, d2 = {"Lcom/facebook/login/PKCEUtil;", "", "<init>", "()V", "", "codeVerifier", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;)Z", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "()Ljava/lang/String;", "Lcom/facebook/login/CodeChallengeMethod;", "codeChallengeMethod", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Lcom/facebook/login/CodeChallengeMethod;)Ljava/lang/String;", "authorizationCode", "redirectUri", "Lcom/facebook/GraphRequest;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/GraphRequest;", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class PKCEUtil {
    @NotNull
    public static final PKCEUtil INSTANCE = new PKCEUtil();

    @JvmStatic
    public static final boolean Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@Nullable String str) {
        if (str != null && str.length() != 0 && str.length() >= 43 && str.length() <= 128) {
            return new Regex("^[-._~A-Za-z0-9]+$").matches(str);
        }
        return false;
    }

    @JvmStatic
    @NotNull
    public static final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww() {
        int random = RangesKt.random(new IntRange(43, 128), Random.Default);
        List plus = CollectionsKt.plus((Collection<? extends char>) CollectionsKt.plus((Collection<? extends char>) CollectionsKt.plus((Collection<? extends char>) CollectionsKt.plus((Collection<? extends char>) CollectionsKt.plus((Collection) CollectionsKt.plus((Iterable) new CharRange('a', 'z'), (Iterable) new CharRange('A', 'Z')), (Iterable) new CharRange('0', '9')), '-'), '.'), '_'), '~');
        ArrayList arrayList = new ArrayList(random);
        for (int i = 0; i < random; i++) {
            Character ch = (Character) CollectionsKt.random(plus, Random.Default);
            ch.charValue();
            arrayList.add(ch);
        }
        return CollectionsKt.joinToString$default(arrayList, "", null, null, 0, null, null, 62, null);
    }

    @JvmStatic
    @NotNull
    public static final String Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str, @NotNull CodeChallengeMethod codeChallengeMethod) throws FacebookException {
        if (Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(str)) {
            if (codeChallengeMethod == CodeChallengeMethod.PLAIN) {
                return str;
            }
            try {
                byte[] bytes = str.getBytes(Charsets.US_ASCII);
                MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
                messageDigest.update(bytes, 0, bytes.length);
                return Base64.encodeToString(messageDigest.digest(), 11);
            } catch (Exception e) {
                throw new FacebookException(e);
            }
        }
        throw new FacebookException("Invalid Code Verifier.");
    }

    @JvmStatic
    @NotNull
    public static final GraphRequest Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull String str, @NotNull String str2, @NotNull String str3) {
        Bundle bundle = new Bundle();
        bundle.putString("code", str);
        bundle.putString("client_id", FacebookSdk.Wwwwwwwwwwwwwwwwwwwwww());
        bundle.putString("redirect_uri", str2);
        bundle.putString("code_verifier", str3);
        GraphRequest Wwwwwwwwwww2 = GraphRequest.Companion.Wwwwwwwwwww(null, "oauth/access_token", null);
        Wwwwwwwwwww2.Kkkkkkkkkkkkkkkkkkkkkkkkk(HttpMethod.GET);
        Wwwwwwwwwww2.Kkkkkkkkkkkkkkkkkkkkkkkk(bundle);
        return Wwwwwwwwwww2;
    }
}
