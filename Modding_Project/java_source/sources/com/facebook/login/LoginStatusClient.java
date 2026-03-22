package com.facebook.login;

import android.content.Context;
import android.os.Bundle;
import com.facebook.internal.PlatformServiceClient;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
/* compiled from: Proguard */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\t\b\u0000\u0018\u0000 \u00172\u00020\u0001:\u0001\u0017B9\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0004\u0012\u0006\u0010\u0006\u001a\u00020\u0004\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\t\u001a\u00020\b\u0012\b\u0010\n\u001a\u0004\u0018\u00010\u0004¢\u0006\u0004\b\u000b\u0010\fJ\u0017\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u000e\u001a\u00020\rH\u0014¢\u0006\u0004\b\u0010\u0010\u0011R\u0014\u0010\u0006\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0012\u0010\u0013R\u0014\u0010\u0007\u001a\u00020\u00048\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0014\u0010\u0013R\u0014\u0010\t\u001a\u00020\b8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016¨\u0006\u0018"}, d2 = {"Lcom/facebook/login/LoginStatusClient;", "Lcom/facebook/internal/PlatformServiceClient;", "Landroid/content/Context;", "context", "", "applicationId", "loggerRef", "graphApiVersion", "", "toastDurationMs", "nonce", "<init>", "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V", "Landroid/os/Bundle;", "data", "", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/os/Bundle;)V", "Wwwwwwwwwwwwwww", "Ljava/lang/String;", "Wwwwwwwwwwwwww", "Wwwwwwwwwwwww", "J", "Companion", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* loaded from: classes4.dex */
public final class LoginStatusClient extends PlatformServiceClient {
    @NotNull
    public static final Companion Companion = new Companion(null);

    /* renamed from: Wwwwwwwwwwwww  reason: collision with root package name */
    public final long f7037Wwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwww  reason: collision with root package name */
    public final String f7038Wwwwwwwwwwwwww;
    @NotNull

    /* renamed from: Wwwwwwwwwwwwwww  reason: collision with root package name */
    public final String f7039Wwwwwwwwwwwwwww;

    /* compiled from: Proguard */
    @Metadata(d1 = {"\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003JA\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\b\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\n2\b\u0010\f\u001a\u0004\u0018\u00010\u0006H\u0000¢\u0006\u0004\b\u000e\u0010\u000fR\u0014\u0010\u0010\u001a\u00020\n8\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011¨\u0006\u0012"}, d2 = {"Lcom/facebook/login/LoginStatusClient$Companion;", "", "<init>", "()V", "Landroid/content/Context;", "context", "", "applicationId", "loggerRef", "graphApiVersion", "", "toastDurationMs", "nonce", "Lcom/facebook/login/LoginStatusClient;", "Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww", "(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)Lcom/facebook/login/LoginStatusClient;", "DEFAULT_TOAST_DURATION_MS", "J", "facebook-common_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    /* loaded from: classes4.dex */
    public static final class Companion {
        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @NotNull
        public final LoginStatusClient Wwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Context context, @NotNull String str, @NotNull String str2, @NotNull String str3, long j, @Nullable String str4) {
            return new LoginStatusClient(context, str, str2, str3, j, str4);
        }

        public Companion() {
        }
    }

    public LoginStatusClient(@NotNull Context context, @NotNull String str, @NotNull String str2, @NotNull String str3, long j, @Nullable String str4) {
        super(context, 65546, 65547, 20170411, str, str4);
        this.f7039Wwwwwwwwwwwwwww = str2;
        this.f7038Wwwwwwwwwwwwww = str3;
        this.f7037Wwwwwwwwwwwww = j;
    }

    @Override // com.facebook.internal.PlatformServiceClient
    public void Wwwwwwwwwwwwwwwwwwwwwwwwwwwwww(@NotNull Bundle bundle) {
        bundle.putString("com.facebook.platform.extra.LOGGER_REF", this.f7039Wwwwwwwwwwwwwww);
        bundle.putString("com.facebook.platform.extra.GRAPH_API_VERSION", this.f7038Wwwwwwwwwwwwww);
        bundle.putLong("com.facebook.platform.extra.EXTRA_TOAST_DURATION_MS", this.f7037Wwwwwwwwwwwww);
    }
}
