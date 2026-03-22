package com.facebook;

import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bf\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H&¢\u0006\u0004\b\u0007\u0010\bJ\u001b\u0010\f\u001a\u00020\u00042\n\u0010\u000b\u001a\u00060\tj\u0002`\nH&¢\u0006\u0004\b\f\u0010\r¨\u0006\u000e"}, d2 = {"Lcom/facebook/LoginStatusCallback;", "", "Lcom/facebook/AccessToken;", "accessToken", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Lcom/facebook/AccessToken;)V", "onFailure", "()V", "Ljava/lang/Exception;", "Lkotlin/Exception;", "exception", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Ljava/lang/Exception;)V", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes3.dex */
public interface LoginStatusCallback {
    void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Exception exc);

    void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull AccessToken accessToken);

    void onFailure();
}
