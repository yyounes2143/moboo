package com.facebook.login;

import android.content.Context;
import android.os.Bundle;
import com.facebook.internal.PlatformServiceClient;
import com.facebook.login.LoginClient;
import com.vungle.ads.internal.ui.AdActivity;
import kotlin.Metadata;
import org.jetbrains.annotations.NotNull;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\b\u0000\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004¢\u0006\u0004\b\u0006\u0010\u0007J\u0017\u0010\u000b\u001a\u00020\n2\u0006\u0010\t\u001a\u00020\bH\u0014¢\u0006\u0004\b\u000b\u0010\f¨\u0006\r"}, d2 = {"Lcom/facebook/login/GetTokenClient;", "Lcom/facebook/internal/PlatformServiceClient;", "Landroid/content/Context;", "context", "Lcom/facebook/login/LoginClient$Request;", AdActivity.REQUEST_KEY_EXTRA, "<init>", "(Landroid/content/Context;Lcom/facebook/login/LoginClient$Request;)V", "Landroid/os/Bundle;", "data", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/os/Bundle;)V", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class GetTokenClient extends PlatformServiceClient {
    public GetTokenClient(@NotNull Context context, @NotNull LoginClient.Request request) {
        super(context, 65536, 65537, 20121101, request.Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(), request.Wwwwwwwwwwwwwwwwwwwwww());
    }

    @Override // com.facebook.internal.PlatformServiceClient
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Bundle bundle) {
    }
}
